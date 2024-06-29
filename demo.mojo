from raylib import ray_lib, ray_lib_text, ray_lib_textures, Color, Vector2


fn main() raises:
    var width = 800
    var height = 450

    var window_title = String(
        "RayLib"
    )  # if its a string the pointer gets freed by mojo
    ray_lib.init_window(width, height, window_title)

    ray_lib.set_target_fps(144)

    ray_lib_text.set_text_line_spacing(22)
    print(window_title)

    var hello = String("Hello, World!\nHello World!")

    print(ray_lib_text.get_font_default())
    
    var font2 = ray_lib_text.load_font("resources/KAISG.ttf")
    
    print(font2)

    var xbox = ray_lib_textures.load_texture("resources/xbox.png") # This function crashes on macos, when returning the value from c to mojo it seems an error happens from the mojo side. (because the value is successfully loaded on the c side but moving the value from c world to mojo world seems to be the problem)
    print(xbox)

    while not ray_lib.window_should_close():
        ray_lib.begin_drawing()

        ray_lib.clear_background(Color(255, 255, 255, 255))

        ray_lib_text.draw_fps(20, 110)
        ray_lib_textures.draw_texture(xbox, 100, 100, Color(100, 40, 60, 255))
        ray_lib_text.draw_text(hello, 190, 200, 20, Color(200, 200, 200, 255))
        ray_lib_text.draw_text("Hello raylib from mojo", 40, 20, 20, Color(200, 200, 200, 255))
        ray_lib_text.draw_text_ex(font2, "Hello raylib from mojo", Vector2(40, 40), 30, 8, Color(200, 200, 200, 255))
        # print(ray_lib_text.measure_text("hello raylib from mojo", 20))

        # var h = ray_lib.get_current_monitor()
        # print(h)
        # print(ray_lib.get_monitor_name(h))
        # print(ray_lib.get_clipboard_text())
        # print(ray_lib.get_monitor_position(h))
        # print(ray_lib.get_window_position())

        ray_lib.end_drawing()

    _ = (window_title, hello)

    print("Exiting")

    ray_lib_text.unload_font(font2)
    ray_lib_textures.unload_texture(xbox)


    ray_lib.close_window()
