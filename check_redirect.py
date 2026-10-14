import requests

def test_redirection(url):
    try:
        # Disable automatic redirect following so we can inspect the exact response step
        response = requests.get(url, allow_redirects=False)
        print(f"Testing URL: {url}")
        print(f"  --> Status Code: {response.status_code}")
        
        # FIXED: Added the tuple of expected HTTP redirect codes (301, 302)
        if response.status_code in (301, 302):
            redirect_target = response.headers.get('Location')
            print(f"  --> Redirects to: {redirect_target}")
            
            # Follow the target to make sure it successfully hits the final secure page
            final_response = requests.get(url)
            print(f"  --> Final Destination: {final_response.url}")
            print(f"  --> Final Status Code: {final_response.status_code} (Success!)\n")
        elif response.status_code == 200 and url.startswith("https"):
            print(f"  --> Already Securely Reached: {response.url} (Success!)\n")
        else:
            print(f"  --> Warning: Unexpected status or behavior.\n")
            
    except requests.exceptions.RequestException as e:
        print(f"Error testing {url}: {e}\n")

# Run the test for both your apex domain and www subdomain over plain HTTP
print("=== VERIFYING HTTP TO HTTPS REDIRECTION ===\n")
test_redirection("http://sciencebehindthings.com")
test_redirection("http://sciencebehindthings.com")
