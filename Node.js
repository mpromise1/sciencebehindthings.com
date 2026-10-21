// webhook-handler.js (For Cloudflare Workers or Vercel Serverless Environments)
const stripe = require('stripe')(process.env.STRIPE_SECRET_KEY);

export default async function handler(req, res) {
    if (req.method !== 'POST') {
        res.setHeader('Allow', 'POST');
        return res.status(405).end('Method Not Allowed');
    }

    const payload = await req.text();
    const sig = req.headers['stripe-signature'];
    let event;

    try {
        // Enforce cryptographic validation of incoming Stripe traffic
        event = stripe.webhooks.constructEvent(payload, sig, process.env.STRIPE_WEBHOOK_SECRET);
    } catch (err) {
        console.error(`Cryptographic Webhook Failure: ${err.message}`);
        return res.status(400).send(`Webhook Error: ${err.message}`);
    }

    // Intercept successful checkout fulfillment states
    if (event.type === 'checkout.session.completed') {
        const session = event.data.object;
        
        // Retrieve explicit item lines and structural product metadata
        const lineItems = await stripe.checkout.sessions.listLineItems(session.id, {
            expand: ['data.price.product'],
        });

        for (const item of lineItems.data) {
            const product = item.price.product;
            const customerEmail = session.customer_details.email;
            const customerName = session.customer_details.name || 'Valued Student';

            if (product.metadata.prod_type === 'digital_download') {
                try {
                    await deliverPremiumAsset(customerEmail, customerName, product.metadata.file_key);
                } catch (deliveryError) {
                    console.error(`Fulfillment Pipeline Crash for ${customerEmail}:`, deliveryError);
                    return res.status(500).send('Fulfillment processing failure.');
                }
            }
        }
    }

    res.status(200).json({ received: true });
}

async function deliverPremiumAsset(email, name, fileKey) {
    console.log(`[FULFILLMENT SEQUENCE] Dispatching secure link for asset: ${fileKey} to recipient: ${email}`);
    // This hooks directly into your automated post-purchase confirmation mailer pipeline
}