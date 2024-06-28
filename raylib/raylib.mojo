from sys.ffi import DLHandle, external_call
from sys.info import is_64bit

from .shapes import *
from .texture import *
from .space_objects import *
from .vr import *


# Window-related functions
alias c_raylib_InitWindow = fn (
    width: Int32, height: Int32, title: UnsafePointer[Int8]
) -> None
alias c_raylib_CloseWindow = fn () -> None
alias c_raylib_WindowShouldClose = fn () -> Bool
alias c_raylib_IsWindowReady = fn () -> Bool
alias c_raylib_IsWindowFullscreen = fn () -> Bool
alias c_raylib_IsWindowHidden = fn () -> Bool
alias c_raylib_IsWindowMinimized = fn () -> Bool
alias c_raylib_IsWindowMaximized = fn () -> Bool
alias c_raylib_IsWindowFocused = fn () -> Bool
alias c_raylib_IsWindowResized = fn () -> Bool
alias c_raylib_IsWindowState = fn (flags: UInt32) -> Bool
alias c_raylib_SetWindowState = fn (flags: UInt32) -> None
alias c_raylib_ClearWindowState = fn (flags: UInt32) -> None
alias c_raylib_ToggleFullscreen = fn () -> None
alias c_raylib_ToggleBorderlessWindowed = fn () -> None
alias c_raylib_MaximizeWindow = fn () -> None
alias c_raylib_MinimizeWindow = fn () -> None
alias c_raylib_RestoreWindow = fn () -> None
alias c_raylib_SetWindowIcon = fn (image: SYSTEM_SIZE) -> None
alias c_raylib_SetWindowIcons = fn (
    icons: UnsafePointer[SYSTEM_SIZE], count: Int32
) -> None
alias c_raylib_SetWindowTitle = fn (title: UnsafePointer[Int8]) -> None
alias c_raylib_SetWindowPosition = fn (x: Int32, y: Int32) -> None
alias c_raylib_SetWindowMonitor = fn (monitor: Int32) -> None
alias c_raylib_SetWindowMinSize = fn (width: Int32, height: Int32) -> None
alias c_raylib_SetWindowMaxSize = fn (width: Int32, height: Int32) -> None
alias c_raylib_SetWindowSize = fn (width: Int32, height: Int32) -> None
alias c_raylib_SetWindowOpacity = fn (alpha: Float32) -> None
alias c_raylib_SetWindowFocused = fn () -> None
alias c_raylib_GetWindowHandle = fn () -> UnsafePointer[SYSTEM_SIZE]
alias c_raylib_GetScreenWidth = fn () -> Int32
alias c_raylib_GetScreenHeight = fn () -> Int32
alias c_raylib_GetRenderWidth = fn () -> Int32
alias c_raylib_GetRenderHeight = fn () -> Int32
alias c_raylib_GetMonitorCount = fn () -> Int32
alias c_raylib_GetCurrentMonitor = fn () -> Int32
alias c_raylib_GetMonitorPosition = fn (monitor: Int32) -> SYSTEM_SIZE
alias c_raylib_GetMonitorWidth = fn (monitor: Int32) -> Int32
alias c_raylib_GetMonitorHeight = fn (monitor: Int32) -> Int32
alias c_raylib_GetMonitorPhysicalWidth = fn (monitor: Int32) -> Int32
alias c_raylib_GetMonitorPhysicalHeight = fn (monitor: Int32) -> Int32
alias c_raylib_GetMonitorRefreshRate = fn (monitor: Int32) -> Int32
alias c_raylib_GetWindowPosition = fn () -> SYSTEM_SIZE
alias c_raylib_GetWindowScaleDPI = fn () -> SYSTEM_SIZE
alias c_raylib_GetMonitorName = fn (monitor: Int32) -> UnsafePointer[Int8]
alias c_raylib_SetClipboardText = fn (text: UnsafePointer[Int8]) -> None
alias c_raylib_GetClipboardText = fn () -> UnsafePointer[Int8]
alias c_raylib_EnableEventWaiting = fn () -> None
alias c_raylib_DisableEventWaiting = fn () -> None


# Cursor-related functions
alias c_raylib_ShowCursor = fn () -> None
alias c_raylib_HideCursor = fn () -> None
alias c_raylib_IsCursorHidden = fn () -> Bool
alias c_raylib_EnableCursor = fn () -> None
alias c_raylib_DisableCursor = fn () -> None
alias c_raylib_IsCursorOnScreen = fn () -> Bool


# Drawing-related functions
alias c_raylib_ClearBackground = fn (color: SYSTEM_SIZE) -> None
alias c_raylib_BeginDrawing = fn () -> None
alias c_raylib_EndDrawing = fn () -> None
alias c_raylib_BeginMode2D = fn (camera: SYSTEM_SIZE) -> None
alias c_raylib_EndMode2D = fn () -> None
alias c_raylib_BeginMode3D = fn (camera: SYSTEM_SIZE) -> None
alias c_raylib_EndMode3D = fn () -> None
alias c_raylib_BeginTextureMode = fn (target: SYSTEM_SIZE) -> None
alias c_raylib_EndTextureMode = fn () -> None
alias c_raylib_BeginShaderMode = fn (shader: SYSTEM_SIZE) -> None
alias c_raylib_EndShaderMode = fn () -> None
alias c_raylib_BeginBlendMode = fn (mode: Int32) -> None
alias c_raylib_EndBlendMode = fn () -> None
alias c_raylib_BeginScissorMode = fn (
    x: Int32, y: Int32, width: Int32, height: Int32
) -> None
alias c_raylib_EndScissorMode = fn () -> None
alias c_raylib_BeginVrStereoMode = fn (config: SYSTEM_SIZE) -> None
alias c_raylib_EndVrStereoMode = fn () -> None


# VR stereo config functions for VR simulator
alias c_raylib_LoadVrStereoConfig = fn (device: SYSTEM_SIZE) -> SYSTEM_SIZE
alias c_raylib_UnloadVrStereoConfig = fn (config: SYSTEM_SIZE) -> None


# Shader management functions
alias c_raylib_LoadShader = fn (
    vsFileName: UnsafePointer[Int8], fsFileName: UnsafePointer[Int8]
) -> SYSTEM_SIZE
alias c_raylib_LoadShaderFromMemory = fn (
    vsCode: UnsafePointer[Int8], fsCode: UnsafePointer[Int8]
) -> SYSTEM_SIZE
alias c_raylib_IsShaderReady = fn (shader: SYSTEM_SIZE) -> Bool
alias c_raylib_GetShaderLocation = fn (
    shader: SYSTEM_SIZE, uniformName: UnsafePointer[Int8]
) -> Int32
alias c_raylib_GetShaderLocationAttrib = fn (
    shader: SYSTEM_SIZE, attribName: UnsafePointer[Int8]
) -> Int32
alias c_raylib_SetShaderValue = fn (
    shader: SYSTEM_SIZE,
    uniformLoc: Int32,
    value: UnsafePointer[SYSTEM_SIZE],
    uniformType: Int32,
) -> None
alias c_raylib_SetShaderValueV = fn (
    shader: SYSTEM_SIZE,
    uniformLoc: Int32,
    value: UnsafePointer[SYSTEM_SIZE],
    uniformType: Int32,
    count: Int32,
) -> None
alias c_raylib_SetShaderValueMatrix = fn (
    shader: SYSTEM_SIZE, uniformLoc: Int32, mat: SYSTEM_SIZE
) -> None
alias c_raylib_SetShaderValueTexture = fn (
    shader: SYSTEM_SIZE, uniformLoc: Int32, texture: SYSTEM_SIZE
) -> None
alias c_raylib_UnloadShader = fn (shader: SYSTEM_SIZE) -> None


# Screen-space-related functions
alias c_raylib_GetMouseRay = fn (
    mousePosition: SYSTEM_SIZE, camera: SYSTEM_SIZE
) -> SYSTEM_SIZE
alias c_raylib_GetCameraMatrix = fn (camera: SYSTEM_SIZE) -> SYSTEM_SIZE
alias c_raylib_GetCameraMatrix2D = fn (camera: SYSTEM_SIZE) -> SYSTEM_SIZE
alias c_raylib_GetWorldToScreen = fn (
    position: SYSTEM_SIZE, camera: SYSTEM_SIZE
) -> SYSTEM_SIZE
alias c_raylib_GetScreenWorldToScreen2D = fn (
    position: SYSTEM_SIZE, camera: SYSTEM_SIZE
) -> SYSTEM_SIZE
alias c_raylib_GetWorldToScreenEx = fn (
    position: SYSTEM_SIZE, camera: SYSTEM_SIZE, width: Int32, height: Int32
) -> SYSTEM_SIZE
alias c_raylib_GetWorldToScreen2D = fn (
    position: SYSTEM_SIZE, camera: SYSTEM_SIZE
) -> SYSTEM_SIZE

# Timing-related functions
alias c_raylib_SetTargetFPS = fn (fps: Int32) -> None
alias c_raylib_GetFrameTime = fn () -> Float32
alias c_raylib_GetTime = fn () -> Float64
alias c_raylib_GetFPS = fn () -> Int32

# Custom Frame control functions
# NOTE: Those functions are intended for advance users that want full control over the frame processing
# By default EndDrawing() does this job: draws everything + SwapScreenBuffer() + manage frame timing + PollInputEvents()
# To avoid that behaviour and control frame processes manually, enable in config.h: SUPPORT_CUSTOM_FRAME_CONTROL
alias c_raylib_SwapScreenBuffer = fn () -> None
alias c_raylib_PollInputEvents = fn () -> None
alias c_raylib_WaitTime = fn (seconds: Float64) -> None

# Random values generation functions
alias c_raylib_SetRandomSeed = fn (seed: UInt32) -> None
alias c_raylib_GetRandomValue = fn (min: Int32, max: Int32) -> Int32
alias c_raylib_LoadRandomSequence = fn (
    count: UInt32, min: Int32, max: Int32
) -> UnsafePointer[Int32]
alias c_raylib_UnloadRandomSequence = fn (
    sequence: UnsafePointer[Int32]
) -> None

# Misc. functions
alias c_raylib_TakeScreenshot = fn (fileName: UnsafePointer[Int8]) -> None
alias c_raylib_SetConfigFlags = fn (flags: UInt32) -> None
alias c_raylib_OpenURL = fn (url: UnsafePointer[Int8]) -> None
# Note: Following functions implemented in module [utils]
alias c_raylib_TraceLog = fn (logType: Int32, text: UnsafePointer[Int8]) -> None # missing extras ...
alias c_raylib_SetTraceLogLevel = fn (logType: Int32) -> None
alias c_raylib_MemAlloc = fn (size: UInt32) -> UnsafePointer[SYSTEM_SIZE]
alias c_raylib_MemRealloc = fn (
    ptr: UnsafePointer[SYSTEM_SIZE], size: UInt32
) -> UnsafePointer[SYSTEM_SIZE]
alias c_raylib_MemFree = fn (ptr: UnsafePointer[SYSTEM_SIZE]) -> None


@value
struct Raylib:
    var _init_window: c_raylib_InitWindow
    var _close_window: c_raylib_CloseWindow
    var _window_should_close: c_raylib_WindowShouldClose
    var _is_window_ready: c_raylib_IsWindowReady
    var _is_window_fullscreen: c_raylib_IsWindowFullscreen
    var _is_window_hidden: c_raylib_IsWindowHidden
    var _is_window_minimized: c_raylib_IsWindowMinimized
    var _is_window_maximized: c_raylib_IsWindowMaximized
    var _is_window_focused: c_raylib_IsWindowFocused
    var _is_window_resized: c_raylib_IsWindowResized
    var _is_window_state: c_raylib_IsWindowState
    var _set_window_state: c_raylib_SetWindowState
    var _clear_window_state: c_raylib_ClearWindowState
    var _toggle_fullscreen: c_raylib_ToggleFullscreen
    var _toggle_borderless_windowed: c_raylib_ToggleBorderlessWindowed
    var _maximize_window: c_raylib_MaximizeWindow
    var _minimize_window: c_raylib_MinimizeWindow
    var _restore_window: c_raylib_RestoreWindow
    var _set_window_icon: c_raylib_SetWindowIcon
    var _set_window_icons: c_raylib_SetWindowIcons
    var _set_window_title: c_raylib_SetWindowTitle
    var _set_window_position: c_raylib_SetWindowPosition
    var _set_window_monitor: c_raylib_SetWindowMonitor
    var _set_window_min_size: c_raylib_SetWindowMinSize
    var _set_window_max_size: c_raylib_SetWindowMaxSize
    var _set_window_size: c_raylib_SetWindowSize
    var _set_window_opacity: c_raylib_SetWindowOpacity
    var _set_window_focused: c_raylib_SetWindowFocused
    var _get_window_handle: c_raylib_GetWindowHandle
    var _get_screen_width: c_raylib_GetScreenWidth
    var _get_screen_height: c_raylib_GetScreenHeight
    var _get_render_width: c_raylib_GetRenderWidth
    var _get_render_height: c_raylib_GetRenderHeight
    var _get_monitor_count: c_raylib_GetMonitorCount
    var _get_current_monitor: c_raylib_GetCurrentMonitor
    var _get_monitor_position: c_raylib_GetMonitorPosition
    var _get_monitor_width: c_raylib_GetMonitorWidth
    var _get_monitor_height: c_raylib_GetMonitorHeight
    var _get_monitor_physical_width: c_raylib_GetMonitorPhysicalWidth
    var _get_monitor_physical_height: c_raylib_GetMonitorPhysicalHeight
    var _get_monitor_refresh_rate: c_raylib_GetMonitorRefreshRate
    var _get_window_position: c_raylib_GetWindowPosition
    var _get_window_scale_dpi: c_raylib_GetWindowScaleDPI
    var _get_monitor_name: c_raylib_GetMonitorName
    var _set_clipboard_text: c_raylib_SetClipboardText
    var _get_clipboard_text: c_raylib_GetClipboardText
    var _enable_event_waiting: c_raylib_EnableEventWaiting
    var _disable_event_waiting: c_raylib_DisableEventWaiting

    var _show_cursor: c_raylib_ShowCursor
    var _hide_cursor: c_raylib_HideCursor
    var _is_cursor_hidden: c_raylib_IsCursorHidden
    var _enable_cursor: c_raylib_EnableCursor
    var _disable_cursor: c_raylib_DisableCursor
    var _is_cursor_on_screen: c_raylib_IsCursorOnScreen

    var _clear_background: c_raylib_ClearBackground
    var _begin_drawing: c_raylib_BeginDrawing
    var _end_drawing: c_raylib_EndDrawing
    var _begin_mode2d: c_raylib_BeginMode2D
    var _end_mode2d: c_raylib_EndMode2D
    var _begin_mode3d: c_raylib_BeginMode3D
    var _end_mode3d: c_raylib_EndMode3D
    var _begin_texture_mode: c_raylib_BeginTextureMode
    var _end_texture_mode: c_raylib_EndTextureMode
    var _begin_shader_mode: c_raylib_BeginShaderMode
    var _end_shader_mode: c_raylib_EndShaderMode
    var _begin_blend_mode: c_raylib_BeginBlendMode
    var _end_blend_mode: c_raylib_EndBlendMode
    var _begin_scissor_mode: c_raylib_BeginScissorMode
    var _end_scissor_mode: c_raylib_EndScissorMode
    var _begin_vr_stereo_mode: c_raylib_BeginVrStereoMode
    var _end_vr_stereo_mode: c_raylib_EndVrStereoMode

    var _load_vr_stereo_config: c_raylib_LoadVrStereoConfig
    var _unload_vr_stereo_config: c_raylib_UnloadVrStereoConfig
    var _load_shader: c_raylib_LoadShader
    var _load_shader_from_memory: c_raylib_LoadShaderFromMemory
    var _is_shader_ready: c_raylib_IsShaderReady
    var _get_shader_location: c_raylib_GetShaderLocation
    var _get_shader_location_attrib: c_raylib_GetShaderLocationAttrib
    var _set_shader_value: c_raylib_SetShaderValue
    var _set_shader_value_v: c_raylib_SetShaderValueV
    var _set_shader_value_matrix: c_raylib_SetShaderValueMatrix
    var _set_shader_value_texture: c_raylib_SetShaderValueTexture
    var _unload_shader: c_raylib_UnloadShader
    var _get_mouse_ray: c_raylib_GetMouseRay
    var _get_camera_matrix: c_raylib_GetCameraMatrix
    var _get_camera_matrix2d: c_raylib_GetCameraMatrix2D
    var _get_world_to_screen: c_raylib_GetWorldToScreen
    var _get_screen_world_to_screen2d: c_raylib_GetScreenWorldToScreen2D
    var _get_world_to_screen_ex: c_raylib_GetWorldToScreenEx
    var _get_world_to_screen2d: c_raylib_GetWorldToScreen2D

    var _set_target_fps: c_raylib_SetTargetFPS
    var _get_frame_time: c_raylib_GetFrameTime
    var _get_time: c_raylib_GetTime
    var _get_fps: c_raylib_GetFPS

    var _swap_screen_buffer: c_raylib_SwapScreenBuffer
    var _poll_input_events: c_raylib_PollInputEvents
    var _wait_time: c_raylib_WaitTime

    var _set_random_seed: c_raylib_SetRandomSeed
    var _get_random_value: c_raylib_GetRandomValue
    var _load_random_sequence: c_raylib_LoadRandomSequence
    var _unload_random_sequence: c_raylib_UnloadRandomSequence

    var _take_screenshot: c_raylib_TakeScreenshot
    var _set_config_flags: c_raylib_SetConfigFlags
    var _open_url: c_raylib_OpenURL
    var _trace_log: c_raylib_TraceLog
    var _set_trace_log_level: c_raylib_SetTraceLogLevel
    var _mem_alloc: c_raylib_MemAlloc
    var _mem_realloc: c_raylib_MemRealloc
    var _mem_free: c_raylib_MemFree

    fn __init__(inout self, raylib_internal: DLHandle):
        # window-related functions
        self._init_window = raylib_internal.get_function[c_raylib_InitWindow](
            "InitWindow"
        )
        self._close_window = raylib_internal.get_function[c_raylib_CloseWindow](
            "CloseWindow"
        )
        self._window_should_close = raylib_internal.get_function[
            c_raylib_WindowShouldClose
        ]("WindowShouldClose")
        self._is_window_ready = raylib_internal.get_function[
            c_raylib_IsWindowReady
        ]("IsWindowReady")
        self._is_window_fullscreen = raylib_internal.get_function[
            c_raylib_IsWindowFullscreen
        ]("IsWindowFullscreen")
        self._is_window_hidden = raylib_internal.get_function[
            c_raylib_IsWindowHidden
        ]("IsWindowHidden")
        self._is_window_minimized = raylib_internal.get_function[
            c_raylib_IsWindowMinimized
        ]("IsWindowMinimized")
        self._is_window_maximized = raylib_internal.get_function[
            c_raylib_IsWindowMaximized
        ]("IsWindowMaximized")
        self._is_window_focused = raylib_internal.get_function[
            c_raylib_IsWindowFocused
        ]("IsWindowFocused")
        self._is_window_resized = raylib_internal.get_function[
            c_raylib_IsWindowResized
        ]("IsWindowResized")
        self._is_window_state = raylib_internal.get_function[
            c_raylib_IsWindowState
        ]("IsWindowState")
        self._set_window_state = raylib_internal.get_function[
            c_raylib_SetWindowState
        ]("SetWindowState")
        self._clear_window_state = raylib_internal.get_function[
            c_raylib_ClearWindowState
        ]("ClearWindowState")
        self._toggle_fullscreen = raylib_internal.get_function[
            c_raylib_ToggleFullscreen
        ]("ToggleFullscreen")
        self._toggle_borderless_windowed = raylib_internal.get_function[
            c_raylib_ToggleBorderlessWindowed
        ]("ToggleBorderlessWindowed")
        self._maximize_window = raylib_internal.get_function[
            c_raylib_MaximizeWindow
        ]("MaximizeWindow")
        self._minimize_window = raylib_internal.get_function[
            c_raylib_MinimizeWindow
        ]("MinimizeWindow")
        self._restore_window = raylib_internal.get_function[
            c_raylib_RestoreWindow
        ]("RestoreWindow")
        self._set_window_icon = raylib_internal.get_function[
            c_raylib_SetWindowIcon
        ]("SetWindowIcon")
        self._set_window_icons = raylib_internal.get_function[
            c_raylib_SetWindowIcons
        ]("SetWindowIcons")
        self._set_window_title = raylib_internal.get_function[
            c_raylib_SetWindowTitle
        ]("SetWindowTitle")
        self._set_window_position = raylib_internal.get_function[
            c_raylib_SetWindowPosition
        ]("SetWindowPosition")
        self._set_window_monitor = raylib_internal.get_function[
            c_raylib_SetWindowMonitor
        ]("SetWindowMonitor")
        self._set_window_min_size = raylib_internal.get_function[
            c_raylib_SetWindowMinSize
        ]("SetWindowMinSize")
        self._set_window_max_size = raylib_internal.get_function[
            c_raylib_SetWindowMaxSize
        ]("SetWindowMaxSize")
        self._set_window_size = raylib_internal.get_function[
            c_raylib_SetWindowSize
        ]("SetWindowSize")
        self._set_window_opacity = raylib_internal.get_function[
            c_raylib_SetWindowOpacity
        ]("SetWindowOpacity")
        self._set_window_focused = raylib_internal.get_function[
            c_raylib_SetWindowFocused
        ]("SetWindowFocused")
        self._get_window_handle = raylib_internal.get_function[
            c_raylib_GetWindowHandle
        ]("GetWindowHandle")
        self._get_screen_width = raylib_internal.get_function[
            c_raylib_GetScreenWidth
        ]("GetScreenWidth")
        self._get_screen_height = raylib_internal.get_function[
            c_raylib_GetScreenHeight
        ]("GetScreenHeight")
        self._get_render_width = raylib_internal.get_function[
            c_raylib_GetRenderWidth
        ]("GetRenderWidth")
        self._get_render_height = raylib_internal.get_function[
            c_raylib_GetRenderHeight
        ]("GetRenderHeight")
        self._get_monitor_count = raylib_internal.get_function[
            c_raylib_GetMonitorCount
        ]("GetMonitorCount")
        self._get_current_monitor = raylib_internal.get_function[
            c_raylib_GetCurrentMonitor
        ]("GetCurrentMonitor")
        self._get_monitor_position = raylib_internal.get_function[
            c_raylib_GetMonitorPosition
        ]("GetMonitorPosition")
        self._get_monitor_width = raylib_internal.get_function[
            c_raylib_GetMonitorWidth
        ]("GetMonitorWidth")
        self._get_monitor_height = raylib_internal.get_function[
            c_raylib_GetMonitorHeight
        ]("GetMonitorHeight")
        self._get_monitor_physical_width = raylib_internal.get_function[
            c_raylib_GetMonitorPhysicalWidth
        ]("GetMonitorPhysicalWidth")
        self._get_monitor_physical_height = raylib_internal.get_function[
            c_raylib_GetMonitorPhysicalHeight
        ]("GetMonitorPhysicalHeight")
        self._get_monitor_refresh_rate = raylib_internal.get_function[
            c_raylib_GetMonitorRefreshRate
        ]("GetMonitorRefreshRate")
        self._get_window_position = raylib_internal.get_function[
            c_raylib_GetWindowPosition
        ]("GetWindowPosition")
        self._get_window_scale_dpi = raylib_internal.get_function[
            c_raylib_GetWindowScaleDPI
        ]("GetWindowScaleDPI")
        self._get_monitor_name = raylib_internal.get_function[
            c_raylib_GetMonitorName
        ]("GetMonitorName")
        self._set_clipboard_text = raylib_internal.get_function[
            c_raylib_SetClipboardText
        ]("SetClipboardText")
        self._get_clipboard_text = raylib_internal.get_function[
            c_raylib_GetClipboardText
        ]("GetClipboardText")
        self._enable_event_waiting = raylib_internal.get_function[
            c_raylib_EnableEventWaiting
        ]("EnableEventWaiting")
        self._disable_event_waiting = raylib_internal.get_function[
            c_raylib_DisableEventWaiting
        ]("DisableEventWaiting")

        # cursor-related functions
        self._show_cursor = raylib_internal.get_function[c_raylib_ShowCursor](
            "ShowCursor"
        )
        self._hide_cursor = raylib_internal.get_function[c_raylib_HideCursor](
            "HideCursor"
        )
        self._is_cursor_hidden = raylib_internal.get_function[
            c_raylib_IsCursorHidden
        ]("IsCursorHidden")
        self._enable_cursor = raylib_internal.get_function[
            c_raylib_EnableCursor
        ]("EnableCursor")
        self._disable_cursor = raylib_internal.get_function[
            c_raylib_DisableCursor
        ]("DisableCursor")
        self._is_cursor_on_screen = raylib_internal.get_function[
            c_raylib_IsCursorOnScreen
        ]("IsCursorOnScreen")

        # drawing-related functions
        self._clear_background = raylib_internal.get_function[
            c_raylib_ClearBackground
        ]("ClearBackground")
        self._begin_drawing = raylib_internal.get_function[
            c_raylib_BeginDrawing
        ]("BeginDrawing")
        self._end_drawing = raylib_internal.get_function[c_raylib_EndDrawing](
            "EndDrawing"
        )
        self._begin_mode2d = raylib_internal.get_function[c_raylib_BeginMode2D](
            "BeginMode2D"
        )
        self._end_mode2d = raylib_internal.get_function[c_raylib_EndMode2D](
            "EndMode2D"
        )
        self._begin_mode3d = raylib_internal.get_function[c_raylib_BeginMode3D](
            "BeginMode3D"
        )
        self._end_mode3d = raylib_internal.get_function[c_raylib_EndMode3D](
            "EndMode3D"
        )
        self._begin_texture_mode = raylib_internal.get_function[
            c_raylib_BeginTextureMode
        ]("BeginTextureMode")
        self._end_texture_mode = raylib_internal.get_function[
            c_raylib_EndTextureMode
        ]("EndTextureMode")
        self._begin_shader_mode = raylib_internal.get_function[
            c_raylib_BeginShaderMode
        ]("BeginShaderMode")
        self._end_shader_mode = raylib_internal.get_function[
            c_raylib_EndShaderMode
        ]("EndShaderMode")
        self._begin_blend_mode = raylib_internal.get_function[
            c_raylib_BeginBlendMode
        ]("BeginBlendMode")
        self._end_blend_mode = raylib_internal.get_function[
            c_raylib_EndBlendMode
        ]("EndBlendMode")
        self._begin_scissor_mode = raylib_internal.get_function[
            c_raylib_BeginScissorMode
        ]("BeginScissorMode")
        self._end_scissor_mode = raylib_internal.get_function[
            c_raylib_EndScissorMode
        ]("EndScissorMode")
        self._begin_vr_stereo_mode = raylib_internal.get_function[
            c_raylib_BeginVrStereoMode
        ]("BeginVrStereoMode")
        self._end_vr_stereo_mode = raylib_internal.get_function[
            c_raylib_EndVrStereoMode
        ]("EndVrStereoMode")

        # shader management functions
        self._load_vr_stereo_config = raylib_internal.get_function[
            c_raylib_LoadVrStereoConfig
        ]("LoadVrStereoConfig")
        self._unload_vr_stereo_config = raylib_internal.get_function[
            c_raylib_UnloadVrStereoConfig
        ]("UnloadVrStereoConfig")
        self._load_shader = raylib_internal.get_function[c_raylib_LoadShader](
            "LoadShader"
        )
        self._load_shader_from_memory = raylib_internal.get_function[
            c_raylib_LoadShaderFromMemory
        ]("LoadShaderFromMemory")
        self._is_shader_ready = raylib_internal.get_function[
            c_raylib_IsShaderReady
        ]("IsShaderReady")
        self._get_shader_location = raylib_internal.get_function[
            c_raylib_GetShaderLocation
        ]("GetShaderLocation")
        self._get_shader_location_attrib = raylib_internal.get_function[
            c_raylib_GetShaderLocationAttrib
        ]("GetShaderLocationAttrib")
        self._set_shader_value = raylib_internal.get_function[
            c_raylib_SetShaderValue
        ]("SetShaderValue")
        self._set_shader_value_v = raylib_internal.get_function[
            c_raylib_SetShaderValueV
        ]("SetShaderValueV")
        self._set_shader_value_matrix = raylib_internal.get_function[
            c_raylib_SetShaderValueMatrix
        ]("SetShaderValueMatrix")
        self._set_shader_value_texture = raylib_internal.get_function[
            c_raylib_SetShaderValueTexture
        ]("SetShaderValueTexture")
        self._unload_shader = raylib_internal.get_function[
            c_raylib_UnloadShader
        ]("UnloadShader")

        # screen-space-related functions
        self._get_mouse_ray = raylib_internal.get_function[
            c_raylib_GetMouseRay
        ]("GetMouseRay")
        self._get_camera_matrix = raylib_internal.get_function[
            c_raylib_GetCameraMatrix
        ]("GetCameraMatrix")
        self._get_camera_matrix2d = raylib_internal.get_function[
            c_raylib_GetCameraMatrix2D
        ]("GetCameraMatrix2D")
        self._get_world_to_screen = raylib_internal.get_function[
            c_raylib_GetWorldToScreen
        ]("GetWorldToScreen")
        self._get_screen_world_to_screen2d = raylib_internal.get_function[
            c_raylib_GetScreenWorldToScreen2D
        ]("GetScreenWorldToScreen2D")
        self._get_world_to_screen_ex = raylib_internal.get_function[
            c_raylib_GetWorldToScreenEx
        ]("GetWorldToScreenEx")
        self._get_world_to_screen2d = raylib_internal.get_function[
            c_raylib_GetWorldToScreen2D
        ]("GetWorldToScreen2D")

        # timing-related functions
        self._set_target_fps = raylib_internal.get_function[
            c_raylib_SetTargetFPS
        ]("SetTargetFPS")
        self._get_frame_time = raylib_internal.get_function[
            c_raylib_GetFrameTime
        ]("GetFrameTime")
        self._get_time = raylib_internal.get_function[c_raylib_GetTime](
            "GetTime"
        )
        self._get_fps = raylib_internal.get_function[c_raylib_GetFPS]("GetFPS")

        # custom frame control functions
        self._swap_screen_buffer = raylib_internal.get_function[
            c_raylib_SwapScreenBuffer
        ]("SwapScreenBuffer")
        self._poll_input_events = raylib_internal.get_function[
            c_raylib_PollInputEvents
        ]("PollInputEvents")
        self._wait_time = raylib_internal.get_function[c_raylib_WaitTime](
            "WaitTime"
        )

        # random values generation functions
        self._set_random_seed = raylib_internal.get_function[
            c_raylib_SetRandomSeed
        ]("SetRandomSeed")
        self._get_random_value = raylib_internal.get_function[
            c_raylib_GetRandomValue
        ]("GetRandomValue")
        self._load_random_sequence = raylib_internal.get_function[
            c_raylib_LoadRandomSequence
        ]("LoadRandomSequence")
        self._unload_random_sequence = raylib_internal.get_function[
            c_raylib_UnloadRandomSequence
        ]("UnloadRandomSequence")

        # misc. functions
        self._take_screenshot = raylib_internal.get_function[
            c_raylib_TakeScreenshot
        ]("TakeScreenshot")
        self._set_config_flags = raylib_internal.get_function[
            c_raylib_SetConfigFlags
        ]("SetConfigFlags")
        self._open_url = raylib_internal.get_function[c_raylib_OpenURL](
            "OpenURL"
        )
        self._trace_log = raylib_internal.get_function[c_raylib_TraceLog](
            "TraceLog"
        )
        self._set_trace_log_level = raylib_internal.get_function[
            c_raylib_SetTraceLogLevel
        ]("SetTraceLogLevel")
        self._mem_alloc = raylib_internal.get_function[c_raylib_MemAlloc](
            "MemAlloc"
        )
        self._mem_realloc = raylib_internal.get_function[c_raylib_MemRealloc](
            "MemRealloc"
        )
        self._mem_free = raylib_internal.get_function[c_raylib_MemFree](
            "MemFree"
        )

    fn init_window(self, width: Int32, height: Int32, title: String):
        """Initialize window and OpenGL context."""
        self._init_window(width, height, title.unsafe_ptr())

    fn close_window(self):
        """Close window and unload OpenGL context."""
        self._close_window()

    fn window_should_close(self) -> Bool:
        """Check if application should close (KEY_ESCAPE pressed or windows close icon clicked).
        """
        return self._window_should_close()

    fn is_window_ready(self) -> Bool:
        """Check if window has been initialized successfully."""
        return self._is_window_ready()

    fn is_window_fullscreen(self) -> Bool:
        """Check if window is currently fullscreen."""
        return self._is_window_fullscreen()

    fn is_window_hidden(self) -> Bool:
        """Check if window is currently hidden."""
        return self._is_window_hidden()

    fn is_window_minimized(self) -> Bool:
        """Check if window is currently minimized."""
        return self._is_window_minimized()

    fn is_window_maximized(self) -> Bool:
        """Check if window is currently maximized."""
        return self._is_window_maximized()

    fn is_window_focused(self) -> Bool:
        """Check if window is currently focused."""
        return self._is_window_focused()

    fn is_window_resized(self) -> Bool:
        """Check if window has been resized."""
        return self._is_window_resized()

    fn is_window_state(self, flags: UInt32) -> Bool:
        """Check if one specific window flag is enabled."""
        return self._is_window_state(flags)

    fn set_window_state(self, flags: UInt32):
        """Set window configuration state using flags."""
        self._set_window_state(flags)

    fn clear_window_state(self, flags: UInt32):
        """Clear window configuration state flags."""
        self._clear_window_state(flags)

    fn toggle_fullscreen(self):
        """Toggle window state: fullscreen/windowed (only PLATFORM_DESKTOP)."""
        self._toggle_fullscreen()

    fn toggle_borderless_windowed(self):
        """Toggle window state: borderless (only PLATFORM_DESKTOP)."""
        self._toggle_borderless_windowed()

    fn maximize_window(self):
        """Maximize window (only PLATFORM_DESKTOP)."""
        self._maximize_window()

    fn minimize_window(self):
        """Minimize window (only PLATFORM_DESKTOP)."""
        self._minimize_window()

    fn restore_window(self):
        """Restore window to default size and position (only PLATFORM_DESKTOP).
        """
        self._restore_window()

    fn set_window_icon(self, owned image: Image):
        """Set icon for window (only PLATFORM_DESKTOP)."""
        self._set_window_icon(
            UnsafePointer.address_of(image).bitcast[SYSTEM_SIZE]()[0]
        )

    fn set_window_icons(self, icons: UnsafePointer[Image], count: Int32):
        """Set icons for window (only PLATFORM_DESKTOP)."""
        self._set_window_icons(icons.bitcast[SYSTEM_SIZE](), count)

    fn set_window_title(self, title: String):
        """Set title for window (only PLATFORM_DESKTOP)."""
        self._set_window_title(title.unsafe_ptr())

    fn set_window_position(self, x: Int32, y: Int32):
        """Set window position on screen (only PLATFORM_DESKTOP)."""
        self._set_window_position(x, y)

    fn set_window_monitor(self, monitor: Int32):
        """Set monitor for the current window (fullscreen mode)."""
        self._set_window_monitor(monitor)

    fn set_window_min_size(self, width: Int32, height: Int32):
        """Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)."""
        self._set_window_min_size(width, height)

    fn set_window_max_size(self, width: Int32, height: Int32):
        """Set window maximum dimensions (for FLAG_WINDOW_RESIZABLE)."""
        self._set_window_max_size(width, height)

    fn set_window_size(self, width: Int32, height: Int32):
        """Set window dimensions."""
        self._set_window_size(width, height)

    fn set_window_opacity(self, alpha: Float32):
        """Set window transparency (only PLATFORM_DESKTOP)."""
        self._set_window_opacity(alpha)

    fn set_window_focused(self):
        """Set window focus flag (only PLATFORM_DESKTOP)."""
        self._set_window_focused()

    fn get_window_handle(self) -> UnsafePointer[SYSTEM_SIZE]:
        """Get native window handle."""
        return self._get_window_handle()

    fn get_screen_width(self) -> Int32:
        """Get current screen width."""
        return self._get_screen_width()

    fn get_screen_height(self) -> Int32:
        """Get current screen height."""
        return self._get_screen_height()

    fn get_render_width(self) -> Int32:
        """Get current render width."""
        return self._get_render_width()

    fn get_render_height(self) -> Int32:
        """Get current render height."""
        return self._get_render_height()

    fn get_monitor_count(self) -> Int32:
        """Get number of connected monitors."""
        return self._get_monitor_count()

    fn get_current_monitor(self) -> Int32:
        """Get current connected monitor."""
        return self._get_current_monitor()

    fn get_monitor_position(self, monitor: Int32) -> Vector2:
        """Get specified monitor position."""
        var temp = self._get_monitor_position(monitor)
        return UnsafePointer.address_of(temp).bitcast[Vector2]()[0]

    fn get_monitor_width(self, monitor: Int32) -> Int32:
        """Get specified monitor width."""
        return self._get_monitor_width(monitor)

    fn get_monitor_height(self, monitor: Int32) -> Int32:
        """Get specified monitor height."""
        return self._get_monitor_height(monitor)

    fn get_monitor_physical_width(self, monitor: Int32) -> Int32:
        """Get specified monitor physical width in millimetres."""
        return self._get_monitor_physical_width(monitor)

    fn get_monitor_physical_height(self, monitor: Int32) -> Int32:
        """Get specified monitor physical height in millimetres."""
        return self._get_monitor_physical_height(monitor)

    fn get_monitor_refresh_rate(self, monitor: Int32) -> Int32:
        """Get specified monitor refresh rate."""
        return self._get_monitor_refresh_rate(monitor)

    fn get_window_position(self) -> Vector2:
        """Get window position XY on monitor."""
        var temp = self._get_window_position()
        return UnsafePointer.address_of(temp).bitcast[Vector2]()[0]

    fn get_window_scale_dpi(self) -> Vector2:
        """Get window scale DPI factor."""
        var temp = self._get_window_scale_dpi()
        return UnsafePointer.address_of(temp).bitcast[Vector2]()[0]

    fn get_monitor_name(self, monitor: Int32) -> String:
        """Get the human-readable, UTF-8 encoded name of the primary monitor."""
        var temp = self._get_monitor_name(monitor)
        return StringRef(temp)

    fn set_clipboard_text(self, text: StringLiteral):
        """Set clipboard text content."""
        self._set_clipboard_text(text.unsafe_ptr())

    fn get_clipboard_text(self) -> String:
        """Get clipboard text content."""
        var temp = self._get_clipboard_text()
        return StringRef(temp)

    fn enable_event_waiting(self):
        """Enable cursor availability."""
        self._enable_event_waiting()

    fn disable_event_waiting(self):
        """Disable cursor availability."""
        self._disable_event_waiting()

    fn show_cursor(self):
        """Shows cursor."""
        self._show_cursor()

    fn hide_cursor(self):
        """Hides cursor."""
        self._hide_cursor()

    fn is_cursor_hidden(self) -> Bool:
        """Check if cursor is not visible."""
        return self._is_cursor_hidden()

    fn enable_cursor(self):
        """Enables cursor (unlock cursor)."""
        self._enable_cursor()

    fn disable_cursor(self):
        """Disables cursor (lock cursor)."""
        self._disable_cursor()

    fn is_cursor_on_screen(self) -> Bool:
        """Check if cursor is on the current screen."""
        return self._is_cursor_on_screen()

    fn clear_background(self, owned color: Color):
        """Clear the background with a color."""
        self._clear_background(
            UnsafePointer.address_of(color).bitcast[SYSTEM_SIZE]()[0]
        )

    fn begin_drawing(self):
        """Setup canvas (framebuffer) to start drawing."""
        self._begin_drawing()

    fn end_drawing(self):
        """End canvas drawing and swap buffers (double buffering)."""
        self._end_drawing()

    fn begin_mode2d(self, owned camera: Camera2D):
        """Begin 2D mode with custom camera."""
        self._begin_mode2d(
            UnsafePointer.address_of(camera).bitcast[SYSTEM_SIZE]()[0]
        )

    fn end_mode2d(self):
        """End 2D mode with custom camera."""
        self._end_mode2d()

    fn begin_mode3d(self, owned camera: Camera3D):
        """Begin 3D mode with custom camera."""
        self._begin_mode3d(
            UnsafePointer.address_of(camera).bitcast[SYSTEM_SIZE]()[0]
        )

    fn end_mode3d(self):
        """End 3D mode and return to default 2D mode."""
        self._end_mode3d()

    fn begin_texture_mode(self, owned target: RenderTexture2D):
        """Begin texture drawing to render texture."""
        self._begin_texture_mode(
            UnsafePointer.address_of(target).bitcast[SYSTEM_SIZE]()[]
        )

    fn end_texture_mode(self):
        """End texture drawing and return to default render texture."""
        self._end_texture_mode()

    fn begin_shader_mode(self, owned shader: Shader):
        """Begin custom shader drawing."""
        self._begin_shader_mode(
            UnsafePointer.address_of(shader).bitcast[SYSTEM_SIZE]()[]
        )

    fn end_shader_mode(self):
        """End custom shader drawing."""
        self._end_shader_mode()

    fn begin_blend_mode(self, mode: Int32):
        """Begin blending mode (alpha, additive, multiplied)."""
        self._begin_blend_mode(mode)

    fn end_blend_mode(self):
        """End blending mode (reset to default: alpha blending)."""
        self._end_blend_mode()

    fn begin_scissor_mode(
        self, x: Int32, y: Int32, width: Int32, height: Int32
    ):
        """Begin scissor mode (define screen area for following drawing)."""
        self._begin_scissor_mode(x, y, width, height)

    fn end_scissor_mode(self):
        """End scissor mode."""
        self._end_scissor_mode()

    fn begin_vr_stereo_mode(self, owned config: VrStereoConfig):
        """Begin VR stereo rendering."""
        self._begin_vr_stereo_mode(
            UnsafePointer.address_of(config).bitcast[SYSTEM_SIZE]()[]
        )

    fn end_vr_stereo_mode(self):
        """End VR stereo rendering."""
        self._end_vr_stereo_mode()

    fn load_vr_stereo_config(self, owned device: VrDeviceInfo) -> VrStereoConfig:
        """Load VR stereo config for VR simulator."""
        var temp = self._load_vr_stereo_config(
            UnsafePointer.address_of(device).bitcast[SYSTEM_SIZE]()[]
        )
        return UnsafePointer.address_of(temp).bitcast[VrStereoConfig]()[]

    fn unload_vr_stereo_config(self, owned config: VrStereoConfig):
        """Unload VR stereo config for VR simulator."""
        self._unload_vr_stereo_config(
            UnsafePointer.address_of(config).bitcast[SYSTEM_SIZE]()[]
        )

    fn load_shader(self, vsFileName: String, fsFileName: String) -> Shader:
        """Load shader from files and bind default locations."""
        var temp = self._load_shader(
            vsFileName.unsafe_ptr(), fsFileName.unsafe_ptr()
        )
        return UnsafePointer.address_of(temp).bitcast[Shader]()[]

    fn load_shader_from_memory(self, vsCode: String, fsCode: String) -> Shader:
        """Load shader from code strings and bind default locations."""
        var temp = self._load_shader_from_memory(
            vsCode.unsafe_ptr(), fsCode.unsafe_ptr()
        )
        return UnsafePointer.address_of(temp).bitcast[Shader]()[]

    fn is_shader_ready(self, owned shader: Shader) -> Bool:
        """Check if a shader is ready."""
        return self._is_shader_ready(
            UnsafePointer.address_of(shader).bitcast[SYSTEM_SIZE]()[]
        )

    fn get_shader_location(self, owned shader: Shader, uniformName: String) -> Int32:
        """Get shader uniform location."""
        return self._get_shader_location(
            UnsafePointer.address_of(shader).bitcast[SYSTEM_SIZE]()[],
            uniformName.unsafe_ptr(),
        )

    fn get_shader_location_attrib(
        self, owned shader: Shader, attribName: String
    ) -> Int32:
        """Get shader attribute location."""
        return self._get_shader_location_attrib(
            UnsafePointer.address_of(shader).bitcast[SYSTEM_SIZE]()[],
            attribName.unsafe_ptr(),
        )

    fn set_shader_value(
        self,
        owned shader: Shader,
        uniformLoc: Int32,
        value: UnsafePointer[SYSTEM_SIZE],
        uniformType: Int32,
    ):
        """Set shader uniform value."""
        self._set_shader_value(
            UnsafePointer.address_of(shader).bitcast[SYSTEM_SIZE]()[],
            uniformLoc,
            value,
            uniformType,
        )

    fn set_shader_value_v(
        self,
        owned shader: Shader,
        uniformLoc: Int32,
        value: UnsafePointer[SYSTEM_SIZE],
        uniformType: Int32,
        count: Int32,
    ):
        """Set shader uniform value vector."""
        self._set_shader_value_v(
            UnsafePointer.address_of(shader).bitcast[SYSTEM_SIZE]()[],
            uniformLoc,
            value,
            uniformType,
            count,
        )

    fn set_shader_value_matrix(
        self, owned shader: Shader, uniformLoc: Int32, owned mat: Matrix
    ):
        """Set shader uniform value (matrix 4x4)."""
        self._set_shader_value_matrix(
            UnsafePointer.address_of(shader).bitcast[SYSTEM_SIZE]()[],
            uniformLoc,
            UnsafePointer.address_of(mat).bitcast[SYSTEM_SIZE]()[0],
        )

    fn set_shader_value_texture(
        self, owned shader: Shader, uniformLoc: Int32, owned texture: Texture2D
    ):
        """Set shader uniform value for texture."""
        self._set_shader_value_texture(
            UnsafePointer.address_of(shader).bitcast[SYSTEM_SIZE]()[],
            uniformLoc,
            UnsafePointer.address_of(texture).bitcast[SYSTEM_SIZE]()[],
        )

    fn unload_shader(self, owned shader: Shader):
        """Unload shader from GPU memory (VRAM)."""
        self._unload_shader(
            UnsafePointer.address_of(shader).bitcast[SYSTEM_SIZE]()[]
        )

    fn get_mouse_ray(self, owned mousePosition: Vector2, owned camera: Camera) -> Ray:
        """Get a ray trace from mouse."""
        var temp = self._get_mouse_ray(
            UnsafePointer.address_of(mousePosition).bitcast[SYSTEM_SIZE]()[],
            UnsafePointer.address_of(camera).bitcast[SYSTEM_SIZE]()[],
        )
        return UnsafePointer.address_of(temp).bitcast[Ray]()[]

    fn get_camera_matrix(self, owned camera: Camera) -> Matrix:
        """Get camera transform matrix (view matrix)."""
        var temp = self._get_camera_matrix(
            UnsafePointer.address_of(camera).bitcast[SYSTEM_SIZE]()[]
        )
        return UnsafePointer.address_of(temp).bitcast[Matrix]()[]

    fn get_camera_matrix2d(self, owned camera: Camera2D) -> Matrix:
        """Get camera 2d transform matrix."""
        var temp = self._get_camera_matrix2d(
            UnsafePointer.address_of(camera).bitcast[SYSTEM_SIZE]()[]
        )
        return UnsafePointer.address_of(temp).bitcast[Matrix]()[]

    fn get_world_to_screen(
        self, owned position: Vector3, owned camera: Camera
    ) -> Vector2:
        """Get the screen space position for a 3d world space position."""
        var temp = self._get_world_to_screen(
            UnsafePointer.address_of(position).bitcast[SYSTEM_SIZE]()[],
            UnsafePointer.address_of(camera).bitcast[SYSTEM_SIZE]()[],
        )
        return UnsafePointer.address_of(temp).bitcast[Vector2]()[0]

    fn get_screen_world_to_screen2d(
        self, owned position: Vector3, owned camera: Camera
    ) -> Vector2:
        """Get the screen space position for a 3d world space position."""
        var temp = self._get_screen_world_to_screen2d(
            UnsafePointer.address_of(position).bitcast[SYSTEM_SIZE]()[],
            UnsafePointer.address_of(camera).bitcast[SYSTEM_SIZE]()[],
        )
        return UnsafePointer.address_of(temp).bitcast[Vector2]()[0]

    fn get_world_to_screen_ex(
        self,
        owned position: Vector3,
        owned camera: Camera,
        width: Int32,
        height: Int32,
    ) -> Vector2:
        """Get the screen space position for a 3d world space position."""
        var temp = self._get_world_to_screen_ex(
            UnsafePointer.address_of(position).bitcast[SYSTEM_SIZE]()[],
            UnsafePointer.address_of(camera).bitcast[SYSTEM_SIZE]()[],
            width,
            height,
        )
        return UnsafePointer.address_of(temp).bitcast[Vector2]()[0]

    fn get_world_to_screen2d(
        self, owned position: Vector2, owned camera: Camera2D
    ) -> Vector2:
        """Get the screen space position for a 2d camera world space position.
        """
        var temp = self._get_world_to_screen2d(
            UnsafePointer.address_of(position).bitcast[SYSTEM_SIZE]()[],
            UnsafePointer.address_of(camera).bitcast[SYSTEM_SIZE]()[],
        )
        return UnsafePointer.address_of(temp).bitcast[Vector2]()[0]

    fn set_target_fps(self, fps: Int32):
        """Set target FPS (maximum)."""
        self._set_target_fps(fps)

    fn get_frame_time(self) -> Float32:
        """Get time in seconds for last frame drawn."""
        return self._get_frame_time()

    fn get_time(self) -> Float64:
        """Get time in seconds since window initialization."""
        return self._get_time()

    fn get_fps(self) -> Int32:
        """Get frames per second."""
        return self._get_fps()

    fn swap_screen_buffer(self):
        """Swap back buffer to front buffer."""
        self._swap_screen_buffer()

    fn poll_input_events(self):
        """Poll (store) all input events."""
        self._poll_input_events()

    fn wait_time(self, ms: Float64):
        """Wait for some milliseconds."""
        self._wait_time(ms)

    fn set_random_seed(self, seed: UInt32):
        """Set the seed for the random number generator."""
        self._set_random_seed(seed)

    fn get_random_value(self, min: Int32, max: Int32) -> Int32:
        """Get a random value between min and max (both included)."""
        return self._get_random_value(min, max)

    fn load_random_sequence(self, count: UInt32, min: Int32, max: Int32) -> UnsafePointer[Int32]:
        """Load a random sequence for the random number generator."""
        return self._load_random_sequence(count, min, max)

    fn unload_random_sequence(self, sequence: UnsafePointer[Int32]):
        """Unload a random sequence for the random number generator."""
        self._unload_random_sequence(sequence)

    fn take_screenshot(self, fileName: String):
        """Take a screenshot of current screen (saved a .png)."""
        self._take_screenshot(fileName.unsafe_ptr())

    fn set_config_flags(self, flags: UInt32):
        """Set the config flags."""
        self._set_config_flags(flags)

    fn open_url(self, url: String):
        """Open URL with default system browser (if available)."""
        self._open_url(url.unsafe_ptr())

    fn trace_log(self, logType: Int32, text: String):
        """Show trace log messages (LOG_INFO, LOG_WARNING, LOG_ERROR, LOG_DEBUG).
        Missing extras: Keyword arguments."""
        self._trace_log(logType, text.unsafe_ptr())

    fn set_trace_log_level(self, logType: Int32):
        """Set the current threshold (minimum) log level."""
        self._set_trace_log_level(logType)

    fn mem_alloc(self, size: UInt32) -> UnsafePointer[SYSTEM_SIZE]:
        """Internal memory allocator."""
        return self._mem_alloc(size)

    fn mem_realloc(
        self, ptr: UnsafePointer[SYSTEM_SIZE], size: UInt32
    ) -> UnsafePointer[SYSTEM_SIZE]:
        """Internal memory reallocator."""
        return self._mem_realloc(ptr, size)

    fn mem_free(self, ptr: UnsafePointer[SYSTEM_SIZE]):
        """Internal memory deallocator."""
        self._mem_free(ptr)
