module stbimage

#flag -I @VROOT/lib/stb

#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"



enum Wchar_t {
	stbi_default = 0	stbi_grey = 1	stbi_grey_alpha = 2	stbi_rgb = 3	stbi_rgb_alpha = 4}




struct Stbi_io_callbacks { 
	read fn (voidptr, &char, int) int
	skip fn (voidptr, int)
	eof fn (voidptr) int
}
fn C.stbi_load_from_memory(buffer &u8, len int, x &int, y &int, channels_in_file &int, desired_channels int) &u8

pub fn stbi_load_from_memory(buffer &u8, len int, x &int, y &int, channels_in_file &int, desired_channels int) &u8 {
	return C.stbi_load_from_memory(buffer, len, x, y, channels_in_file, desired_channels)
}

fn C.stbi_load_from_callbacks(clbk &Stbi_io_callbacks, user voidptr, x &int, y &int, channels_in_file &int, desired_channels int) &u8

pub fn stbi_load_from_callbacks(clbk &Stbi_io_callbacks, user voidptr, x &int, y &int, channels_in_file &int, desired_channels int) &u8 {
	return C.stbi_load_from_callbacks(clbk, user, x, y, channels_in_file, desired_channels)
}

fn C.stbi_load(filename &char, x &int, y &int, channels_in_file &int, desired_channels int) &u8

pub fn stbi_load(filename string, x &int, y &int, channels_in_file &int, desired_channels int) &u8 {
	return C.stbi_load(filename.str, x, y, channels_in_file, desired_channels)
}

fn C.stbi_load_from_file(f &C.FILE, x &int, y &int, channels_in_file &int, desired_channels int) &u8

pub fn stbi_load_from_file(f &C.FILE, x &int, y &int, channels_in_file &int, desired_channels int) &u8 {
	return C.stbi_load_from_file(f, x, y, channels_in_file, desired_channels)
}

fn C.stbi_load_gif_from_memory(buffer &u8, len int, delays &&int, x &int, y &int, z &int, comp &int, req_comp int) &u8

pub fn stbi_load_gif_from_memory(buffer &u8, len int, delays &&int, x &int, y &int, z &int, comp &int, req_comp int) &u8 {
	return C.stbi_load_gif_from_memory(buffer, len, delays, x, y, z, comp, req_comp)
}

fn C.stbi_load_16_from_memory(buffer &u8, len int, x &int, y &int, channels_in_file &int, desired_channels int) &u16

pub fn stbi_load_16_from_memory(buffer &u8, len int, x &int, y &int, channels_in_file &int, desired_channels int) &u16 {
	return C.stbi_load_16_from_memory(buffer, len, x, y, channels_in_file, desired_channels)
}

fn C.stbi_load_16_from_callbacks(clbk &Stbi_io_callbacks, user voidptr, x &int, y &int, channels_in_file &int, desired_channels int) &u16

pub fn stbi_load_16_from_callbacks(clbk &Stbi_io_callbacks, user voidptr, x &int, y &int, channels_in_file &int, desired_channels int) &u16 {
	return C.stbi_load_16_from_callbacks(clbk, user, x, y, channels_in_file, desired_channels)
}

fn C.stbi_load_16(filename &char, x &int, y &int, channels_in_file &int, desired_channels int) &u16

pub fn stbi_load_16(filename string, x &int, y &int, channels_in_file &int, desired_channels int) &u16 {
	return C.stbi_load_16(filename.str, x, y, channels_in_file, desired_channels)
}

fn C.stbi_load_from_file_16(f &C.FILE, x &int, y &int, channels_in_file &int, desired_channels int) &u16

pub fn stbi_load_from_file_16(f &C.FILE, x &int, y &int, channels_in_file &int, desired_channels int) &u16 {
	return C.stbi_load_from_file_16(f, x, y, channels_in_file, desired_channels)
}

fn C.stbi_loadf_from_memory(buffer &u8, len int, x &int, y &int, channels_in_file &int, desired_channels int) &f32

pub fn stbi_loadf_from_memory(buffer &u8, len int, x &int, y &int, channels_in_file &int, desired_channels int) &f32 {
	return C.stbi_loadf_from_memory(buffer, len, x, y, channels_in_file, desired_channels)
}

fn C.stbi_loadf_from_callbacks(clbk &Stbi_io_callbacks, user voidptr, x &int, y &int, channels_in_file &int, desired_channels int) &f32

pub fn stbi_loadf_from_callbacks(clbk &Stbi_io_callbacks, user voidptr, x &int, y &int, channels_in_file &int, desired_channels int) &f32 {
	return C.stbi_loadf_from_callbacks(clbk, user, x, y, channels_in_file, desired_channels)
}

fn C.stbi_loadf(filename &char, x &int, y &int, channels_in_file &int, desired_channels int) &f32

pub fn stbi_loadf(filename string, x &int, y &int, channels_in_file &int, desired_channels int) &f32 {
	return C.stbi_loadf(filename.str, x, y, channels_in_file, desired_channels)
}

fn C.stbi_loadf_from_file(f &C.FILE, x &int, y &int, channels_in_file &int, desired_channels int) &f32

pub fn stbi_loadf_from_file(f &C.FILE, x &int, y &int, channels_in_file &int, desired_channels int) &f32 {
	return C.stbi_loadf_from_file(f, x, y, channels_in_file, desired_channels)
}

fn C.stbi_hdr_to_ldr_gamma(gamma f32) 

pub fn stbi_hdr_to_ldr_gamma(gamma f32)  {
	C.stbi_hdr_to_ldr_gamma(gamma)
}

fn C.stbi_hdr_to_ldr_scale(scale f32) 

pub fn stbi_hdr_to_ldr_scale(scale f32)  {
	C.stbi_hdr_to_ldr_scale(scale)
}

fn C.stbi_ldr_to_hdr_gamma(gamma f32) 

pub fn stbi_ldr_to_hdr_gamma(gamma f32)  {
	C.stbi_ldr_to_hdr_gamma(gamma)
}

fn C.stbi_ldr_to_hdr_scale(scale f32) 

pub fn stbi_ldr_to_hdr_scale(scale f32)  {
	C.stbi_ldr_to_hdr_scale(scale)
}

fn C.stbi_is_hdr_from_callbacks(clbk &Stbi_io_callbacks, user voidptr) int

pub fn stbi_is_hdr_from_callbacks(clbk &Stbi_io_callbacks, user voidptr) int {
	return C.stbi_is_hdr_from_callbacks(clbk, user)
}

fn C.stbi_is_hdr_from_memory(buffer &u8, len int) int

pub fn stbi_is_hdr_from_memory(buffer &u8, len int) int {
	return C.stbi_is_hdr_from_memory(buffer, len)
}

fn C.stbi_is_hdr(filename &char) int

pub fn stbi_is_hdr(filename string) int {
	return C.stbi_is_hdr(filename.str)
}

fn C.stbi_is_hdr_from_file(f &C.FILE) int

pub fn stbi_is_hdr_from_file(f &C.FILE) int {
	return C.stbi_is_hdr_from_file(f)
}

fn C.stbi_failure_reason() &char

fn stbi_failure_reason() &char {
	return C.stbi_failure_reason()
}

fn C.stbi_image_free(retval_from_stbi_load voidptr) 

pub fn stbi_image_free(retval_from_stbi_load voidptr)  {
	C.stbi_image_free(retval_from_stbi_load)
}

fn C.stbi_info_from_memory(buffer &u8, len int, x &int, y &int, comp &int) int

pub fn stbi_info_from_memory(buffer &u8, len int, x &int, y &int, comp &int) int {
	return C.stbi_info_from_memory(buffer, len, x, y, comp)
}

fn C.stbi_info_from_callbacks(clbk &Stbi_io_callbacks, user voidptr, x &int, y &int, comp &int) int

pub fn stbi_info_from_callbacks(clbk &Stbi_io_callbacks, user voidptr, x &int, y &int, comp &int) int {
	return C.stbi_info_from_callbacks(clbk, user, x, y, comp)
}

fn C.stbi_is_16_bit_from_memory(buffer &u8, len int) int

pub fn stbi_is_16_bit_from_memory(buffer &u8, len int) int {
	return C.stbi_is_16_bit_from_memory(buffer, len)
}

fn C.stbi_is_16_bit_from_callbacks(clbk &Stbi_io_callbacks, user voidptr) int

pub fn stbi_is_16_bit_from_callbacks(clbk &Stbi_io_callbacks, user voidptr) int {
	return C.stbi_is_16_bit_from_callbacks(clbk, user)
}

fn C.stbi_info(filename &char, x &int, y &int, comp &int) int

pub fn stbi_info(filename string, x &int, y &int, comp &int) int {
	return C.stbi_info(filename.str, x, y, comp)
}

fn C.stbi_info_from_file(f &C.FILE, x &int, y &int, comp &int) int

pub fn stbi_info_from_file(f &C.FILE, x &int, y &int, comp &int) int {
	return C.stbi_info_from_file(f, x, y, comp)
}

fn C.stbi_is_16_bit(filename &char) int

pub fn stbi_is_16_bit(filename string) int {
	return C.stbi_is_16_bit(filename.str)
}

fn C.stbi_is_16_bit_from_file(f &C.FILE) int

pub fn stbi_is_16_bit_from_file(f &C.FILE) int {
	return C.stbi_is_16_bit_from_file(f)
}

fn C.stbi_set_unpremultiply_on_load(flag_trueif_should_unpremultiply int) 

pub fn stbi_set_unpremultiply_on_load(flag_trueif_should_unpremultiply int)  {
	C.stbi_set_unpremultiply_on_load(flag_trueif_should_unpremultiply)
}

fn C.stbi_convert_iphone_png_to_rgb(flag_trueif_should_convert int) 

pub fn stbi_convert_iphone_png_to_rgb(flag_trueif_should_convert int)  {
	C.stbi_convert_iphone_png_to_rgb(flag_trueif_should_convert)
}

fn C.stbi_set_flip_vertically_on_load(flag_trueif_should_flip int) 

pub fn stbi_set_flip_vertically_on_load(flag_trueif_should_flip int)  {
	C.stbi_set_flip_vertically_on_load(flag_trueif_should_flip)
}

fn C.stbi_set_unpremultiply_on_load_thread(flag_trueif_should_unpremultiply int) 

pub fn stbi_set_unpremultiply_on_load_thread(flag_trueif_should_unpremultiply int)  {
	C.stbi_set_unpremultiply_on_load_thread(flag_trueif_should_unpremultiply)
}

fn C.stbi_convert_iphone_png_to_rgb_thread(flag_trueif_should_convert int) 

pub fn stbi_convert_iphone_png_to_rgb_thread(flag_trueif_should_convert int)  {
	C.stbi_convert_iphone_png_to_rgb_thread(flag_trueif_should_convert)
}

fn C.stbi_set_flip_vertically_on_load_thread(flag_trueif_should_flip int) 

pub fn stbi_set_flip_vertically_on_load_thread(flag_trueif_should_flip int)  {
	C.stbi_set_flip_vertically_on_load_thread(flag_trueif_should_flip)
}

fn C.stbi_zlib_decode_malloc_guesssize(buffer &char, len int, initial_size int, outlen &int) &char

pub fn stbi_zlib_decode_malloc_guesssize(buffer &char, len int, initial_size int, outlen &int) &char {
	return C.stbi_zlib_decode_malloc_guesssize(buffer, len, initial_size, outlen)
}

fn C.stbi_zlib_decode_malloc_guesssize_headerflag(buffer &char, len int, initial_size int, outlen &int, parse_header int) &char

pub fn stbi_zlib_decode_malloc_guesssize_headerflag(buffer &char, len int, initial_size int, outlen &int, parse_header int) &char {
	return C.stbi_zlib_decode_malloc_guesssize_headerflag(buffer, len, initial_size, outlen, parse_header)
}

fn C.stbi_zlib_decode_malloc(buffer &char, len int, outlen &int) &char

pub fn stbi_zlib_decode_malloc(buffer &char, len int, outlen &int) &char {
	return C.stbi_zlib_decode_malloc(buffer, len, outlen)
}

fn C.stbi_zlib_decode_buffer(obuffer &char, olen int, ibuffer &char, ilen int) int

pub fn stbi_zlib_decode_buffer(obuffer &char, olen int, ibuffer &char, ilen int) int {
	return C.stbi_zlib_decode_buffer(obuffer, olen, ibuffer, ilen)
}

fn C.stbi_zlib_decode_noheader_malloc(buffer &char, len int, outlen &int) &char

pub fn stbi_zlib_decode_noheader_malloc(buffer &char, len int, outlen &int) &char {
	return C.stbi_zlib_decode_noheader_malloc(buffer, len, outlen)
}

fn C.stbi_zlib_decode_noheader_buffer(obuffer &char, olen int, ibuffer &char, ilen int) int

pub fn stbi_zlib_decode_noheader_buffer(obuffer &char, olen int, ibuffer &char, ilen int) int {
	return C.stbi_zlib_decode_noheader_buffer(obuffer, olen, ibuffer, ilen)
}

