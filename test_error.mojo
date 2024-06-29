from sys.ffi import DLHandle, RTLD

# Error in mac when returning the texture.

alias RAYLIB_PATH = "/home/linuxbrew/.linuxbrew/Cellar/raylib/5.0/lib/libraylib.so"

var raylib_internal = DLHandle(RAYLIB_PATH, RTLD.NOW)

@register_passable("trivial")
struct Texture:
    var id: UInt32
    var width: Int32
    var height: Int32
    var mipmaps: Int32
    var format: Int32

    fn init(
        inout self,
        id: UInt32,
        width: Int32,
        height: Int32,
        mipmaps: Int32,
        format: Int32,
    ):
        self.id = id
        self.width = width
        self.height = height
        self.mipmaps = mipmaps
        self.format = format

    fn __str__(self) -> String:
        return (
            "Texture("
            "id: "
            + str(self.id)
            + ", width:"
            + str(self.width)
            + ", height:"
            + str(self.height)
            + ", mipmaps: "
            + str(self.mipmaps)
            + ", format: "
            + str(self.format)
            + ")"
        )

alias c_raylib_InitWindow = fn(width: Int32, height: Int32, title: UnsafePointer[Int8]) -> None

var _init_window = raylib_internal.get_function[c_raylib_InitWindow]("InitWindow")

fn init_window(width: Int32, height: Int32, title: String) -> None:
    _init_window(width, height, title.unsafe_ptr())

alias c_raylib_LoadTexture = fn(file_name: UnsafePointer[Int8]) -> Texture

var _load_texture = raylib_internal.get_function[c_raylib_LoadTexture]("LoadTexture")

fn load_texture(file_name: String) -> Texture:
    return _load_texture(file_name.unsafe_ptr())

fn main():
    init_window(800, 600, "Hello, World!")

    var xbox = load_texture("resources/xbox.png")

    print(xbox)