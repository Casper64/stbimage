# StbImage

A V wrapper of the image loader, writer and resizer from 
[nothings/stb](https://github.com/nothings/stb).
You can use it to load resize and write images from file or memory.

It is a wrapper for the `stb_image.h`, `stb_image_write.h` and `stb_image_resize.h` files.

library | version used | description
---|---|---
stb_image.h | 2.28 | image loading/decoding from file/memory: JPG, PNG, TGA, BMP, PSD, GIF, HDR, PIC
stb_image_write.h | 1.16 | image writing to disk: PNG, TGA, BMP
stb_image_resize.h | 0.97 | resize images larger/smaller with good quality

Check out [nothings/stb](https://github.com/nothings/stb) for documentation.

## Usage

The library is cross platform so you only need to import it: `import stbimage`.

### Errors
Some functions return `int` as result. If the return value is `<= 0` an error has occured.

**Example:**
```v
// load the image
input_image := stbimage.stbi_load('empty.png', width, height, channels, 0)
defer {
    // free the image
    stbimage.stbi_image_free(input_image)
}
if input_image <= 0 {
    // get any errors with `stbimage.get_error()`
    println('Failed to load input image: ${stbimage.get_error()}.')
    return
}
```

For example run the [resize](examples/resize.v) example `v run resize.v`.

**resize.v**
```v
module main

import stbimage

// This program resizes the `v-logo.png` file to 250x250 pixels and outputs it to `out.png`.

[manualfree]
fn main() {
	input_file_name := 'v-logo.png'
	output_file_name := 'out.png'

	// specify new width and height
	new_width := 250
	new_height := 250

	mut width, mut height, mut channels := 0, 0, 0

	// load the image
	input_image := stbimage.stbi_load(input_file_name, width, height, channels, 0)
	defer {
		// free the image
		stbimage.stbi_image_free(input_image)
	}
	if input_image <= 0 {
		println('Failed to load input image: ${stbimage.get_error()}.')
		return
	}

	// Allocate memory for the resized image
	mut output_image := unsafe { malloc(new_width * new_height * channels) }
	if output_image <= 0 {
		eprintln('Failed to allocate memory for the output image.')
		return
	}
	defer {
		// free the allocated data
		unsafe { free(output_image) }
	}

	// Resize the image
	stbimage.stbir_resize_uint8(input_image, width, height, 0, output_image, new_width, new_height,
		0, channels)

	// write the image
	result := stbimage.stbi_write_png(output_file_name, new_width, new_height, channels, output_image,
		new_width * channels)
	if result <= 0 {
		println('Failed to write the output image.')
		return
	}

	println('Image resized and saved successfully.')
}

```
