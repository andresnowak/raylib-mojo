from sys.ffi import DLHandle, RTLD
from .raylib import *
from .raylib_text import *
from .raylib_shapes import *
from .raylib_textures import *
from .raylib_models import *
from .env_variables import *

# All Structs for now are defined as register_passable, because it seems it is necessary for c interop if you don't use them it sees to cause memory errors

fn check_system_size() -> DType:
    @parameter
    if is_64bit():
        return DType.uint64
    else:
        return DType.uint32


alias SYSTEM_SIZE = Scalar[check_system_size()]

var raylib_internal = DLHandle(RAYLIB_PATH, RTLD.NOW)
var raylib_bindings_internal = DLHandle(RAYLIB_BINDINGS_PATH, RTLD.NOW)

var ray_lib = Raylib(raylib_internal)
var ray_lib_text = RaylibText(raylib_internal, raylib_bindings_internal)
var ray_lib_textures = RayLibTextures(raylib_internal, raylib_bindings_internal)
var ray_lib_shapes = RayLibShapes(raylib_bindings_internal)
var ray_lib_models = RayLibModels(raylib_internal, raylib_bindings_internal)
