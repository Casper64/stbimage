module stbimage

#flag -I @VROOT/lib/stb

#define STB_IMAGE_RESIZE_IMPLEMENTATION
#include "stb_image_resize.h"

fn C.stbir_resize_uint8(input_pixels &u8, input_w int, input_h int, input_stride_in_bytes int, output_pixels &u8, output_w int, output_h int, output_stride_in_bytes int, num_channels int) int

pub fn stbir_resize_uint8(input_pixels &u8, input_w int, input_h int, input_stride_in_bytes int, output_pixels &u8, output_w int, output_h int, output_stride_in_bytes int, num_channels int) int {
	return C.stbir_resize_uint8(input_pixels, input_w, input_h, input_stride_in_bytes,
		output_pixels, output_w, output_h, output_stride_in_bytes, num_channels)
}

fn C.stbir_resize_float(input_pixels &f32, input_w int, input_h int, input_stride_in_bytes int, output_pixels &f32, output_w int, output_h int, output_stride_in_bytes int, num_channels int) int

pub fn stbir_resize_float(input_pixels &f32, input_w int, input_h int, input_stride_in_bytes int, output_pixels &f32, output_w int, output_h int, output_stride_in_bytes int, num_channels int) int {
	return C.stbir_resize_float(input_pixels, input_w, input_h, input_stride_in_bytes,
		output_pixels, output_w, output_h, output_stride_in_bytes, num_channels)
}

fn C.stbir_resize_uint8_srgb(input_pixels &u8, input_w int, input_h int, input_stride_in_bytes int, output_pixels &u8, output_w int, output_h int, output_stride_in_bytes int, num_channels int, alpha_channel int, flags int) int

pub fn stbir_resize_uint8_srgb(input_pixels &u8, input_w int, input_h int, input_stride_in_bytes int, output_pixels &u8, output_w int, output_h int, output_stride_in_bytes int, num_channels int, alpha_channel int, flags int) int {
	return C.stbir_resize_uint8_srgb(input_pixels, input_w, input_h, input_stride_in_bytes,
		output_pixels, output_w, output_h, output_stride_in_bytes, num_channels, alpha_channel,
		flags)
}

enum Stbir_edge {
	stbir_edge_clamp = 1
	stbir_edge_reflect = 2
	stbir_edge_wrap = 3
	stbir_edge_zero = 4
}

fn C.stbir_resize_uint8_srgb_edgemode(input_pixels &u8, input_w int, input_h int, input_stride_in_bytes int, output_pixels &u8, output_w int, output_h int, output_stride_in_bytes int, num_channels int, alpha_channel int, flags int, edge_wrap_mode Stbir_edge) int

pub fn stbir_resize_uint8_srgb_edgemode(input_pixels &u8, input_w int, input_h int, input_stride_in_bytes int, output_pixels &u8, output_w int, output_h int, output_stride_in_bytes int, num_channels int, alpha_channel int, flags int, edge_wrap_mode Stbir_edge) int {
	return C.stbir_resize_uint8_srgb_edgemode(input_pixels, input_w, input_h, input_stride_in_bytes,
		output_pixels, output_w, output_h, output_stride_in_bytes, num_channels, alpha_channel,
		flags, edge_wrap_mode)
}

enum Stbir_filter {
	stbir_filter_default = 0
	stbir_filter_box = 1
	stbir_filter_triangle = 2
	stbir_filter_cubicbspline = 3
	stbir_filter_catmullrom = 4
	stbir_filter_mitchell = 5
}

enum Stbir_colorspace {
	stbir_colorspace_linear
	stbir_colorspace_srgb
	stbir_max_colorspaces
}

fn C.stbir_resize_uint8_generic(input_pixels &u8, input_w int, input_h int, input_stride_in_bytes int, output_pixels &u8, output_w int, output_h int, output_stride_in_bytes int, num_channels int, alpha_channel int, flags int, edge_wrap_mode Stbir_edge, filter Stbir_filter, space Stbir_colorspace, alloc_context voidptr) int

pub fn stbir_resize_uint8_generic(input_pixels &u8, input_w int, input_h int, input_stride_in_bytes int, output_pixels &u8, output_w int, output_h int, output_stride_in_bytes int, num_channels int, alpha_channel int, flags int, edge_wrap_mode Stbir_edge, filter Stbir_filter, space Stbir_colorspace, alloc_context voidptr) int {
	return C.stbir_resize_uint8_generic(input_pixels, input_w, input_h, input_stride_in_bytes,
		output_pixels, output_w, output_h, output_stride_in_bytes, num_channels, alpha_channel,
		flags, edge_wrap_mode, filter, space, alloc_context)
}

fn C.stbir_resize_uint16_generic(input_pixels &u16, input_w int, input_h int, input_stride_in_bytes int, output_pixels &u16, output_w int, output_h int, output_stride_in_bytes int, num_channels int, alpha_channel int, flags int, edge_wrap_mode Stbir_edge, filter Stbir_filter, space Stbir_colorspace, alloc_context voidptr) int

pub fn stbir_resize_uint16_generic(input_pixels &u16, input_w int, input_h int, input_stride_in_bytes int, output_pixels &u16, output_w int, output_h int, output_stride_in_bytes int, num_channels int, alpha_channel int, flags int, edge_wrap_mode Stbir_edge, filter Stbir_filter, space Stbir_colorspace, alloc_context voidptr) int {
	return C.stbir_resize_uint16_generic(input_pixels, input_w, input_h, input_stride_in_bytes,
		output_pixels, output_w, output_h, output_stride_in_bytes, num_channels, alpha_channel,
		flags, edge_wrap_mode, filter, space, alloc_context)
}

fn C.stbir_resize_float_generic(input_pixels &f32, input_w int, input_h int, input_stride_in_bytes int, output_pixels &f32, output_w int, output_h int, output_stride_in_bytes int, num_channels int, alpha_channel int, flags int, edge_wrap_mode Stbir_edge, filter Stbir_filter, space Stbir_colorspace, alloc_context voidptr) int

pub fn stbir_resize_float_generic(input_pixels &f32, input_w int, input_h int, input_stride_in_bytes int, output_pixels &f32, output_w int, output_h int, output_stride_in_bytes int, num_channels int, alpha_channel int, flags int, edge_wrap_mode Stbir_edge, filter Stbir_filter, space Stbir_colorspace, alloc_context voidptr) int {
	return C.stbir_resize_float_generic(input_pixels, input_w, input_h, input_stride_in_bytes,
		output_pixels, output_w, output_h, output_stride_in_bytes, num_channels, alpha_channel,
		flags, edge_wrap_mode, filter, space, alloc_context)
}

enum Stbir_datatype {
	stbir_type_uint8
	stbir_type_uint16
	stbir_type_uint32
	stbir_type_float
	stbir_max_types
}

fn C.stbir_resize(input_pixels voidptr, input_w int, input_h int, input_stride_in_bytes int, output_pixels voidptr, output_w int, output_h int, output_stride_in_bytes int, datatype Stbir_datatype, num_channels int, alpha_channel int, flags int, edge_mode_horizontal Stbir_edge, edge_mode_vertical Stbir_edge, filter_horizontal Stbir_filter, filter_vertical Stbir_filter, space Stbir_colorspace, alloc_context voidptr) int

pub fn stbir_resize(input_pixels voidptr, input_w int, input_h int, input_stride_in_bytes int, output_pixels voidptr, output_w int, output_h int, output_stride_in_bytes int, datatype Stbir_datatype, num_channels int, alpha_channel int, flags int, edge_mode_horizontal Stbir_edge, edge_mode_vertical Stbir_edge, filter_horizontal Stbir_filter, filter_vertical Stbir_filter, space Stbir_colorspace, alloc_context voidptr) int {
	return C.stbir_resize(input_pixels, input_w, input_h, input_stride_in_bytes, output_pixels,
		output_w, output_h, output_stride_in_bytes, datatype, num_channels, alpha_channel,
		flags, edge_mode_horizontal, edge_mode_vertical, filter_horizontal, filter_vertical,
		space, alloc_context)
}

fn C.stbir_resize_subpixel(input_pixels voidptr, input_w int, input_h int, input_stride_in_bytes int, output_pixels voidptr, output_w int, output_h int, output_stride_in_bytes int, datatype Stbir_datatype, num_channels int, alpha_channel int, flags int, edge_mode_horizontal Stbir_edge, edge_mode_vertical Stbir_edge, filter_horizontal Stbir_filter, filter_vertical Stbir_filter, space Stbir_colorspace, alloc_context voidptr, x_scale f32, y_scale f32, x_offset f32, y_offset f32) int

pub fn stbir_resize_subpixel(input_pixels voidptr, input_w int, input_h int, input_stride_in_bytes int, output_pixels voidptr, output_w int, output_h int, output_stride_in_bytes int, datatype Stbir_datatype, num_channels int, alpha_channel int, flags int, edge_mode_horizontal Stbir_edge, edge_mode_vertical Stbir_edge, filter_horizontal Stbir_filter, filter_vertical Stbir_filter, space Stbir_colorspace, alloc_context voidptr, x_scale f32, y_scale f32, x_offset f32, y_offset f32) int {
	return C.stbir_resize_subpixel(input_pixels, input_w, input_h, input_stride_in_bytes,
		output_pixels, output_w, output_h, output_stride_in_bytes, datatype, num_channels,
		alpha_channel, flags, edge_mode_horizontal, edge_mode_vertical, filter_horizontal,
		filter_vertical, space, alloc_context, x_scale, y_scale, x_offset, y_offset)
}

fn C.stbir_resize_region(input_pixels voidptr, input_w int, input_h int, input_stride_in_bytes int, output_pixels voidptr, output_w int, output_h int, output_stride_in_bytes int, datatype Stbir_datatype, num_channels int, alpha_channel int, flags int, edge_mode_horizontal Stbir_edge, edge_mode_vertical Stbir_edge, filter_horizontal Stbir_filter, filter_vertical Stbir_filter, space Stbir_colorspace, alloc_context voidptr, s0 f32, t0 f32, s1 f32, t1 f32) int

pub fn stbir_resize_region(input_pixels voidptr, input_w int, input_h int, input_stride_in_bytes int, output_pixels voidptr, output_w int, output_h int, output_stride_in_bytes int, datatype Stbir_datatype, num_channels int, alpha_channel int, flags int, edge_mode_horizontal Stbir_edge, edge_mode_vertical Stbir_edge, filter_horizontal Stbir_filter, filter_vertical Stbir_filter, space Stbir_colorspace, alloc_context voidptr, s0 f32, t0 f32, s1 f32, t1 f32) int {
	return C.stbir_resize_region(input_pixels, input_w, input_h, input_stride_in_bytes,
		output_pixels, output_w, output_h, output_stride_in_bytes, datatype, num_channels,
		alpha_channel, flags, edge_mode_horizontal, edge_mode_vertical, filter_horizontal,
		filter_vertical, space, alloc_context, s0, t0, s1, t1)
}
