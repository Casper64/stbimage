module stbimage

#flag -lm

struct Lldiv_t { 
	quot i64
	rem i64
}

struct Random_data { 
	fptr &int
	rptr &int
	state &int
	rand_type int
	rand_deg int
	rand_sep int
	end_ptr &int
}

fn C.strtol( &char,  &&u8,  int) int

pub fn strtol(str &char, endptr &&u8, base int) int {
	return C.strtol(str, endptr, base)
}


fn C.rand() int

pub fn rand() int {
	return C.rand()
}


fn C.realloc( voidptr,  u32) voidptr

pub fn realloc(ptr voidptr, size u32) voidptr {
	return C.realloc(ptr, size)
}

fn C.system(__command &char) int

pub fn system(__command &char) int {
	return C.system(__command)
}

fn C.fgetc(__stream &C.FILE) int

pub fn fgetc(__stream &C.FILE) int {
	return C.fgetc(__stream)
}

fn C.getc(__stream &C.FILE) int

pub fn getc(__stream &C.FILE) int {
	return C.getc(__stream)
}

fn C.ungetc(__c int, __stream &C.FILE) int

pub fn ungetc(__c int, __stream &C.FILE) int {
	return C.ungetc(__c, __stream)
}

fn C.feof(__stream &C.FILE) int

pub fn feof(__stream &C.FILE) int {
	return C.feof(__stream)
}

fn C.ferror(__stream &C.FILE) int

pub fn ferror(__stream &C.FILE) int {
	return C.ferror(__stream)
}