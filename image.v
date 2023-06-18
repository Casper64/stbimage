module stbimage

$if windows {
	$if tinyc {
		#flag @VEXEROOT/thirdparty/tcc/lib/openlibm.o
	}
} $else {
	#flag -lm
}

pub fn get_error() string {
	s := unsafe { tos3(stbi_failure_reason()) }
	return s
}
