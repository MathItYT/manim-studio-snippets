fill_color, fill_opacity = self.fill.get_value()
stroke_color, stroke_opacity = self.stroke.get_value()
stroke_width = int(self.stroke_width.get_value())
radius = self.radius_times_1000.get_value() / 1000
c = Circle()
c.set_fill(fill_color, fill_opacity)
c.set_stroke(stroke_color, stroke_width, stroke_opacity)
c.scale_to_fit_height(2 * radius)

def customizable_circ_updater(circ):
    global fill_color, fill_opacity, stroke_color, stroke_width, stroke_opacity, radius
    real_fill_color, real_fill_opacity =  self.fill.get_value()
    real_stroke_color, real_stroke_opacity = self.stroke.get_value()
    real_stroke_width = int(self.stroke_width.get_value())
    real_radius = self.radius_times_1000.get_value() / 1000
    if real_fill_color != fill_color:
        circ.set_fill(real_fill_color)
    if real_fill_opacity != fill_opacity:
        circ.set_fill(opacity=real_fill_opacity)
    if real_stroke_color != stroke_color:
        circ.set_stroke(real_stroke_color)
    if real_stroke_opacity != stroke_opacity:
        circ.set_stroke(opacity=real_stroke_opacity)
    if real_stroke_width != stroke_width:
        circ.set_stroke(width=real_stroke_width)
    if real_radius != radius:
        circ.scale_to_fit_height(2 * real_radius)

c.add_updater(customizable_circ_updater)
self.add(c)