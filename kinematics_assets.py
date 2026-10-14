from manim import *

class KinematicsIntegration(Scene):
    def construct(self):
        # 1. Setup high-contrast dark theme background color
        self.camera.background_color = "#11111b"  # Deep dark slate

        # 2. Define text and equations using raw string format blocks
        title = Text("The Calculus of Continuous Motion", font_size=36, color=WHITE).to_edge(UP, buff=0.5)
        
        # Fundamental Derivative Definitions
        deriv_eqs = MathTex(
            r"\mathbf{v}(t) = \frac{d\mathbf{s}}{dt}",
            r"\quad \text{and} \quad",
            r"\mathbf{a}(t) = \frac{d\mathbf{v}}{dt} = \frac{d^2\mathbf{s}}{dt^2}",
            font_size=40
        ).move_to(UP * 1.5)
        deriv_eqs[0].set_color("#f38ba8")  # Highlight velocity
        deriv_eqs[2].set_color("#89b4fa")  # Highlight acceleration

        # Integral step for Velocity
        vel_integral = MathTex(
            r"\int_{\mathbf{v}_0}^{\mathbf{v}(t)} d\mathbf{v} = \int_{0}^{t} \mathbf{a} \, dt",
            font_size=42,
            color=LIGHT_GRAY
        ).move_to(ORIGIN)

        vel_result = MathTex(
            r"\mathbf{v}(t) = \mathbf{v}_0 + \mathbf{a}t",
            font_size=44,
            color="#f38ba8"
        ).move_to(ORIGIN)

        # Integral step for Position
        pos_integral = MathTex(
            r"\int_{\mathbf{s}_0}^{\mathbf{s}(t)} d\mathbf{s} = \int_{0}^{t} (\mathbf{v}_0 + \mathbf{a}t) \, dt",
            font_size=42,
            color=LIGHT_GRAY
        ).move_to(DOWN * 1.5)

        pos_result = MathTex(
            r"\mathbf{s}(t) = \mathbf{s}_0 + \mathbf{v}_0t + \frac{1}{2}\mathbf{a}t^2",
            font_size=44,
            color="#a6e3a1"  # Highlight position result
        ).move_to(DOWN * 1.5)

        # 3. Animation Sequence Execution
        self.play(Write(title))
        self.wait(0.5)
        
        # Display baseline derivatives
        self.play(FadeIn(deriv_eqs, shift=UP * 0.2))
        self.wait(2.0)

        # Animate the velocity accumulation integration
        self.play(Write(vel_integral))
        self.wait(1.5)
        self.play(Transform(vel_integral, vel_result))
        self.wait(1.5)

        # Animate the position accumulation integration
        self.play(Write(pos_integral))
        self.wait(1.5)
        self.play(Transform(pos_integral, pos_result))
        self.wait(2.5)

        # Clear down to final results for emphasis
        self.play(
            FadeOut(deriv_eqs),
            vel_integral.animate.move_to(UP * 0.5),
            pos_integral.animate.move_to(DOWN * 1.0)
        )
        self.wait(3.0)