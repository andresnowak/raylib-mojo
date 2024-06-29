from sys.ffi import DLHandle, RTLD

alias RAYLIB_PATH = "/home/linuxbrew/.linuxbrew/Cellar/raylib/5.0/lib/libraylib.so"

var raylib_internal = DLHandle(RAYLIB_PATH, RTLD.NOW)

@register_passable("trivial")
struct Color(CollectionElement):
    """Color, 4 components, R8G8B8A8 (32bit)."""

    var r: UInt8
    var g: UInt8
    var b: UInt8
    var a: UInt8
    
    @always_inline
    fn __init__(inout self, r: UInt8, g: UInt8, b: UInt8, a: UInt8):
        """Constructs a Color from r, g, b, and a values."""
        self.r = r
        self.g = g
        self.b = b
        self.a = a

    fn __str__(self) -> String:
        return "Color(" + str(self.r) + ", " + str(self.g) + ", " + str(self.b) + ", " + str(self.a) + ")"

alias c_raylib_InitWindow = fn(width: Int32, height: Int32, title: UnsafePointer[Int8]) -> None

var _init_window = raylib_internal.get_function[c_raylib_InitWindow]("InitWindow")

fn init_window(width: Int32, height: Int32, title: String) -> None:
    _init_window(width, height, title.unsafe_ptr())

alias c_raylib_WindowShouldClose = fn() -> Bool

var _window_should_close = raylib_internal.get_function[c_raylib_WindowShouldClose]("WindowShouldClose")

fn window_should_close() -> Bool:
    return _window_should_close()

alias c_raylib_BeginDrawing = fn() -> None

var _begin_drawing = raylib_internal.get_function[c_raylib_BeginDrawing]("BeginDrawing")

fn begin_drawing() -> None:
    _begin_drawing()

alias c_raylib_EndDrawing = fn() -> None

var _end_drawing = raylib_internal.get_function[c_raylib_EndDrawing]("EndDrawing")

fn end_drawing() -> None:
    _end_drawing()

alias c_raylib_CloseWindow = fn() -> None

var _close_window = raylib_internal.get_function[c_raylib_CloseWindow]("CloseWindow")

fn close_window() -> None:
    _close_window()

alias c_raylib_DrawText = fn(text: UnsafePointer[Int8], x: Int32, y: Int32, font_size: Int32, color: Color) -> None

var _draw_text = raylib_internal.get_function[c_raylib_DrawText]("DrawText")

fn draw_text(text: String, x: Int32, y: Int32, font_size: Int32, color: Color) -> None:
    _draw_text(text.unsafe_ptr(), x, y, font_size, color)

alias c_raylib_DrawTextGood = fn(text: UnsafePointer[Int8], x: Int32, y: Int32, font_size: Int32, color: UInt64) -> None

var _draw_text_good = raylib_internal.get_function[c_raylib_DrawTextGood]("DrawText")

fn draw_text_good(text: String, x: Int32, y: Int32, font_size: Int32, owned color: Color) -> None:
    _draw_text_good(text.unsafe_ptr(), x, y, font_size, UnsafePointer.address_of(color).bitcast[UInt64]()[])


fn main():
    init_window(800, 600, "Hello, World!")

    while not window_should_close():
        begin_drawing()

        draw_text_good("Hello, World!", 190, 200, 20, Color(200, 200, 200, 255))
        draw_text("Hello, World! This Doesn't work Because Color gets corrupted in C side", 190, 200, 20, Color(200, 200, 200, 255))

        end_drawing()

    close_window()