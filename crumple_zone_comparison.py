from manim import *

class CrumpleZoneComparison(Scene):
    def construct(self):
        # 1. Set background color to match dark mode theme
        self.camera.background_color = "#11111b"

        # 2. Text Title Header Layouts
        title = Text("Crumple Zone Force Minimization", font_size=36, color=WHITE).to_edge(UP, buff=0.4)
        sub_text = MathTex(r"\bar{F} = \frac{m\mathbf{v}_0^2}{2d}", font_size=38, color="#89b4fa").next_to(title, DOWN, buff=0.2)
        
        self.play(Write(title))
        self.play(FadeIn(sub_text, shift=UP * 0.1))
        self.wait(0.5)

        # 3. Create Side-by-Side Comparison Container Elements
        # Left Side: Design Alpha (Rigid Frame)
        alpha_label = Text("Design Alpha\n(1.0 ft Crush)", font_size=20, color="#f38ba8").move_to(LEFT * 3.5 + UP * 1.5)
        alpha_bar_bg = Rectangle(width=1.5, height=4, stroke_color=GRAY_D, fill_color="#1e1e2e", fill_opacity=0.6).move_to(LEFT * 3.5 + DOWN * 1.0)
        
        # Right Side: Design Beta (Extended Frame)
        beta_label = Text("Design Beta\n(1.5 ft Crush)", font_size=20, color="#a6e3a1").move_to(RIGHT * 3.5 + UP * 1.5)
        beta_bar_bg = Rectangle(width=1.5, height=4, stroke_color=GRAY_D, fill_color="#1e1e2e", fill_opacity=0.6).move_to(RIGHT * 3.5 + DOWN * 1.0)

        self.play(
            FadeIn(alpha_label), FadeIn(alpha_bar_bg),
            FadeIn(beta_label), FadeIn(beta_bar_bg)
        )
        self.wait(1.0)

        # 4. Define and Animate the Dynamic Force Bars
        # Max height of 4 units represents 96,800 lbf (Alpha)
        # 2.66 units height represents 64,533 lbf (Beta, which is 2/3 of Alpha)
        alpha_force_bar = Rectangle(width=1.5, height=4, color="#f38ba8", fill_color="#f38ba8", fill_opacity=0.85)
        alpha_force_bar.align_to(alpha_bar_bg, DOWN)

        beta_force_bar = Rectangle(width=1.5, height=2.66, color="#a6e3a1", fill_color="#a6e3a1", fill_opacity=0.85)
        beta_force_bar.align_to(beta_bar_bg, DOWN)

        # Text readouts for exact forces using Imperial units
        alpha_val = MathTex(r"96,800\text{ lbf}", font_size=24, color=WHITE).next_to(alpha_force_bar, UP, buff=0.15)
        beta_val = MathTex(r"64,533\text{ lbf}", font_size=24, color=WHITE).next_to(beta_force_bar, UP, buff=0.15)

        # Grow the bars sequentially to simulate impact loading spikes
        self.play(GrowFromEdge(alpha_force_bar, DOWN), Write(alpha_val), run_time=1.5)
        self.wait(0.5)
        self.play(GrowFromEdge(beta_force_bar, DOWN), Write(beta_val), run_time=1.5)
        self.wait(1.0)

        # 5. Highlight the Mathematical Reduction Bracket
        reduction_arrow = DoubleArrow(
            start=alpha_force_bar.get_top() + RIGHT * 0.8,
            end=beta_force_bar.get_top() + LEFT * 0.8,
            color=WHITE,
            stroke_width=2
        ).shift(RIGHT * 1.75)
        
        reduction_line_left = DashedLine(alpha_force_bar.get_top(), alpha_force_bar.get_top() + RIGHT * 1.8, color=GRAY_B)
        reduction_line_right = DashedLine(beta_force_bar.get_top(), beta_force_bar.get_top() + LEFT * 1.8, color=GRAY_B)

        reduction_text = Text("-33.3% Force Shock", font_size=18, color="#f9e2af").move_to(ORIGIN + DOWN * 0.2)

        self.play(Create(reduction_line_left), Create(reduction_line_right))
        self.play(Create(reduction_arrow), Write(reduction_text))
        self.wait(3.0)