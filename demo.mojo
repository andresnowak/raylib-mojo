from raylib import ray_lib_core, ray_lib_text, ray_lib_textures, ray_lib_shapes, ray_lib_models
from raylib.shapes import Color, Vector2, Vector3
from raylib.space_objects import Camera3D
from raylib.colors import LIGHTGRAY, BLUE, RED, WHITE


fn main() raises:
    var width = 800
    var height = 450

    var window_title = String(
        "RayLib"
    )  # if its a string the pointer gets freed by mojo
    ray_lib_core.init_window(width, height, window_title)

    ray_lib_core.set_target_fps(144)

    ray_lib_text.set_text_line_spacing(22)
    print(window_title)

    var hello = String("Hello, World!\nHello World!")

    print(ray_lib_text.get_font_default())
    
    var font2 = ray_lib_text.load_font("resources/KAISG.ttf")
    
    print(font2)

    var xbox = ray_lib_textures.load_texture("resources/xbox.png") # This function crashes on macos, when returning the value from c to mojo it seems an error happens from the mojo side. (because the value is successfully loaded on the c side but moving the value from c world to mojo world seems to be the problem)
    print(xbox)
    
    print(ray_lib_textures.color_to_hsv(Color(60, 45, 32, 255)))
    print(ray_lib_textures.color_normalize(RED))
    print("yeah", ray_lib_textures.color_to_int(Color(255, 0, 0, 255)))
    var mesa = Vector3(0, 0, 0)

    print(UnsafePointer.address_of(WHITE))

    while not ray_lib_core.window_should_close():
        ray_lib_core.begin_drawing()
        # ray_lib_core.begin_mode3d(Camera3D(Vector3(0, 4, 10), Vector3(0, 0, 0), Vector3(0, 1, 0), 45, 0))

        ray_lib_core.clear_background(WHITE)

        ray_lib_text.draw_fps(20, 110)
        ray_lib_textures.draw_texture(xbox, 100, 100, RED)
        ray_lib_text.draw_text(hello, 190, 200, 20, LIGHTGRAY)
        ray_lib_text.draw_text("Hello raylib from mojo", 40, 20, 20, LIGHTGRAY)
        ray_lib_text.draw_text_ex(font2, "Hello raylib from mojo", Vector2(40, 40), 30, 8, LIGHTGRAY)

        ray_lib_shapes.draw_rectangle_lines(10, 10, 100, 100, BLUE)

        # ray_lib_models.draw_cube(Vector3(0, 0, 0), 2, 2, 2, BLUE)

        # print(ray_lib_text.measure_text("hello raylib from mojo", 20))

        # var h = ray_lib.get_current_monitor()
        # print(h)
        # print(ray_lib.get_monitor_name(h))
        # print(ray_lib.get_clipboard_text())
        # print(ray_lib.get_monitor_position(h))
        # print(ray_lib.get_window_position())

        # ray_lib_core.end_mode3d()
        ray_lib_core.end_drawing()

    print("Exiting")

    ray_lib_text.unload_font(font2)
    ray_lib_textures.unload_texture(xbox)


    ray_lib_core.close_window()
