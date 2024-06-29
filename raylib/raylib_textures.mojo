from .texture import Texture2D

# Texture loading functions
# NOTE: These functions require GPU access
alias c_raylib_LoadTexture = fn (filename: UnsafePointer[Int8]) -> Texture2D
alias c_raylib_UnloadTexture = fn (texture: UnsafePointer[Texture2D]) -> None

# Texture Drawing functions
alias c_raylib_DrawTexture = fn (texture: UnsafePointer[Texture2D], posX: Int32, posY: Int32, tint: UnsafePointer[Color]) -> None



@value
struct RayLibTextures:
    var _load_texture: c_raylib_LoadTexture
    var _unload_texture: c_raylib_UnloadTexture

    var _draw_texture: c_raylib_DrawTexture

    fn __init__(inout self, raylib_internal: DLHandle, raylib_bindings_internal: DLHandle):
        # Texture loading functions
        self._load_texture = raylib_internal.get_function[c_raylib_LoadTexture](
            "LoadTexture"
        )
        self._unload_texture = raylib_bindings_internal.get_function[c_raylib_UnloadTexture](
            "_UnloadTexture"
        )

        # Texture drawing functions
        self._draw_texture = raylib_bindings_internal.get_function[c_raylib_DrawTexture](
            "_DrawTexture"
        )

    fn load_texture(self, filename: String) -> Texture2D:
        return self._load_texture(filename.unsafe_ptr())

    fn unload_texture(self, owned texture: Texture2D) -> None:
        self._unload_texture(UnsafePointer.address_of(texture))

    fn draw_texture(self, owned texture: Texture2D, posX: Int32, posY: Int32, owned tint: Color) -> None:
        self._draw_texture(UnsafePointer.address_of(texture), posX, posY, UnsafePointer.address_of(tint))
