from .raylib import *

fn check_system_size() -> DType:
    @parameter
    if is_64bit():
        return DType.uint64
    else:
        return DType.uint32


alias SYSTEM_SIZE = Scalar[check_system_size()]

var ray_lib = Raylib()