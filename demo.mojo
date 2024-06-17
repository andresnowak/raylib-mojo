from raylib import ray_lib, Color


fn main():
    var width = 800
    var height = 450

    var window_title = String(
        "RayLib"
    )  # if its a string the pointer gets freed by mojo
    ray_lib.init_window(width, height, window_title)

    # ray_lib.set_target_fps(60)

    while not ray_lib.window_should_close():
        ray_lib.begin_drawing()

        ray_lib.clear_background(Color(255, 255, 255, 255))

        # ray_lib.draw_fps(20, 110)
        # ray_lib.draw_text('Hello, World!'.unsafe_ptr(), 190, 200, 20, UnsafePointer.address_of(Color(200, 200, 200, 255)).bitcast[UInt64]()[0])

        var h = ray_lib.get_current_monitor()
        print(h)
        print(ray_lib.get_monitor_name(h))
        print(ray_lib.get_clipboard_text())
        print(ray_lib.get_monitor_position(h))
        print(ray_lib.get_window_position())

        ray_lib.end_drawing()

    _ = window_title

    ray_lib.close_window()
