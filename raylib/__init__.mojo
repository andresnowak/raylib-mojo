from sys.ffi import DLHandle
from .raylib import *
from .raylib_text import *

fn check_system_size() -> DType:
    @parameter
    if is_64bit():
        return DType.uint64
    else:
        return DType.uint32


alias SYSTEM_SIZE = Scalar[check_system_size()]

alias RAYLIB_PATH = "/home/linuxbrew/.linuxbrew/Cellar/raylib/5.0/lib/libraylib.so"

var raylib_internal = DLHandle(RAYLIB_PATH)

var ray_lib = Raylib(raylib_internal)
var ray_lib_text = RaylibText(raylib_internal)