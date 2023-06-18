module stbimage

#flag -I @VROOT/lib/stb

#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image_write.h"



fn C.stbi_write_png(filename &char, w int, h int, comp int, data voidptr, stride_in_bytes int) int

pub fn stbi_write_png(filename string, w int, h int, comp int, data voidptr, stride_in_bytes int) int {
	return C.stbi_write_png(filename.str, w, h, comp, data, stride_in_bytes)
}

fn C.stbi_write_bmp(filename &char, w int, h int, comp int, data voidptr) int

pub fn stbi_write_bmp(filename string, w int, h int, comp int, data voidptr) int {
	return C.stbi_write_bmp(filename.str, w, h, comp, data)
}

fn C.stbi_write_tga(filename &char, w int, h int, comp int, data voidptr) int

pub fn stbi_write_tga(filename string, w int, h int, comp int, data voidptr) int {
	return C.stbi_write_tga(filename.str, w, h, comp, data)
}

fn C.stbi_write_hdr(filename &char, w int, h int, comp int, data &f32) int

pub fn stbi_write_hdr(filename string, w int, h int, comp int, data &f32) int {
	return C.stbi_write_hdr(filename.str, w, h, comp, data)
}

fn C.stbi_write_jpg(filename &char, x int, y int, comp int, data voidptr, quality int) int

pub fn stbi_write_jpg(filename string, x int, y int, comp int, data voidptr, quality int) int {
	return C.stbi_write_jpg(filename.str, x, y, comp, data, quality)
}

type Stbi_write_func = fn (voidptr, voidptr, int)
fn C.stbi_write_png_to_func(func &Stbi_write_func, context voidptr, w int, h int, comp int, data voidptr, stride_in_bytes int) int

pub fn stbi_write_png_to_func(func &Stbi_write_func, context voidptr, w int, h int, comp int, data voidptr, stride_in_bytes int) int {
	return C.stbi_write_png_to_func(func, context, w, h, comp, data, stride_in_bytes)
}

fn C.stbi_write_bmp_to_func(func &Stbi_write_func, context voidptr, w int, h int, comp int, data voidptr) int

pub fn stbi_write_bmp_to_func(func &Stbi_write_func, context voidptr, w int, h int, comp int, data voidptr) int {
	return C.stbi_write_bmp_to_func(func, context, w, h, comp, data)
}

fn C.stbi_write_tga_to_func(func &Stbi_write_func, context voidptr, w int, h int, comp int, data voidptr) int

pub fn stbi_write_tga_to_func(func &Stbi_write_func, context voidptr, w int, h int, comp int, data voidptr) int {
	return C.stbi_write_tga_to_func(func, context, w, h, comp, data)
}

fn C.stbi_write_hdr_to_func(func &Stbi_write_func, context voidptr, w int, h int, comp int, data &f32) int

pub fn stbi_write_hdr_to_func(func &Stbi_write_func, context voidptr, w int, h int, comp int, data &f32) int {
	return C.stbi_write_hdr_to_func(func, context, w, h, comp, data)
}

fn C.stbi_write_jpg_to_func(func &Stbi_write_func, context voidptr, x int, y int, comp int, data voidptr, quality int) int

pub fn stbi_write_jpg_to_func(func &Stbi_write_func, context voidptr, x int, y int, comp int, data voidptr, quality int) int {
	return C.stbi_write_jpg_to_func(func, context, x, y, comp, data, quality)
}

fn C.stbi_flip_vertically_on_write(flip_boolean int) 

pub fn stbi_flip_vertically_on_write(flip_boolean int)  {
	C.stbi_flip_vertically_on_write(flip_boolean)
}

