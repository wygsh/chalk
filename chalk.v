module chalk

import wygsh.ansi.graphics
import util

const delim = graphics.style(.reset_all)

pub type Color256ID = u8
pub type RGB = []u8
pub type Colors8 = graphics.Colors8
pub type Colors = graphics.Colors8

pub fn style(str string, style graphics.Styles) string {
	style_str := graphics.style(style)
	return style_str + util.replace_last(str, chalk.delim, chalk.delim + style_str) + chalk.delim
}

pub fn color_(str string, color graphics.Colors, layer graphics.Layer) string {
	color_str := graphics.color(color, layer)
	return color_str + util.replace_last(str, chalk.delim, chalk.delim + color_str) + chalk.delim
}

@[inline]
pub fn color(str string, color graphics.Colors, layer graphics.Layer) string {
	return color_(str, color, layer)
}

// Alias to color()
@[inline]
pub fn c(str string, color graphics.Colors, layer graphics.Layer) string {
	return color_(str, color, layer)
}

pub fn color8(str string, color graphics.Colors8, layer graphics.Layer) string {
	color_str := graphics.color8(color, layer)
	return color_str + util.replace_last(str, chalk.delim, chalk.delim + color_str) + chalk.delim
}

// Alias to color8()
@[inline]
pub fn c8(str string, color graphics.Colors8, layer graphics.Layer) string {
	return color8(str, color, layer)
}

pub fn color256(str string, color_id graphics.Color256ID, layer graphics.Layer) string {
	color_str := graphics.color256(color_id, layer)
	return color_str + util.replace_last(str, chalk.delim, chalk.delim + color_str) + chalk.delim
}

// Alias to color256()
@[inline]
pub fn c256(str string, color_id graphics.Color256ID, layer graphics.Layer) string {
	return color256(str, color_id, layer)
}

pub fn rgb(str string, r u8, g u8, b u8, layer graphics.Layer) string {
	rgb_str := graphics.rgb(r, g, b, layer)
	return rgb_str + util.replace_last(str, chalk.delim, chalk.delim + rgb_str) + chalk.delim
}
