from .texture import Texture2D

# Texture loading functions
# NOTE: These functions require GPU access
alias c_raylib_LoadTexture = fn (filename: UnsafePointer[Int8]) -> Texture2D


@value
struct RayLibTextures:
    var _load_texture: c_raylib_LoadTexture

    fn __init__(inout self, raylib_internal: DLHandle):
        # Texture loading functions
        self._load_texture = raylib_internal.get_function[c_raylib_LoadTexture](
            "LoadTexture"
        )

    fn load_texture(self, filename: String) -> Texture2D:
        return self._load_texture(filename.unsafe_ptr())
