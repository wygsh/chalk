module chalk

import wygsh.ansi.graphics
import util

const (
	delim = graphics.style(.reset_all)
)

pub fn style(str string, style graphics.Styles) string {
	style_str := graphics.style(style)
	return (
		style_str +
		util.replace_last(str, delim, delim + style_str) +
		delim
	)
}

pub fn color8(str string, color graphics.Colors8, layer graphics.Layer) string {
	color_str := graphics.color8(color, layer)
	return (
		color_str +
		util.replace_last(str, delim, delim + color_str) +
		delim
	)
}

pub fn color256(str string, color_id graphics.Color256ID, layer graphics.Layer) string {
	color_str := graphics.color256(color_id, layer)
	return (
		color_str +
		util.replace_last(str, delim, delim + color_str) +
		delim
	)
}

pub fn rgb(str string, rgb graphics.RGB, layer graphics.Layer) !string {
	rgb_str := graphics.rgb(rgb, layer)!
	return (
		rgb_str +
		util.replace_last(str, delim, delim + rgb_str) +
		delim
	)
}
