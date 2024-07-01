from sys.ffi import DLHandle, external_call
from sys.info import is_64bit

from .shapes import *
from .texture import *
from .space_objects import *
from .vr import *
from .misc_types import *


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
alias c_raylib_SetWindowIcon = fn (image: UnsafePointer[Image]) -> None
alias c_raylib_SetWindowIcons = fn (
    icons: UnsafePointer[Image], count: Int32
) -> None
alias c_raylib_SetWindowTitle = fn (title: UnsafePointer[Int8]) -> None
alias c_raylib_SetWindowPosition = fn (x: Int32, y: Int32) -> None
alias c_raylib_SetWindowMonitor = fn (monitor: Int32) -> None
alias c_raylib_SetWindowMinSize = fn (width: Int32, height: Int32) -> None
alias c_raylib_SetWindowMaxSize = fn (width: Int32, height: Int32) -> None
alias c_raylib_SetWindowSize = fn (width: Int32, height: Int32) -> None
alias c_raylib_SetWindowOpacity = fn (alpha: Float32) -> None
alias c_raylib_SetWindowFocused = fn () -> None
alias c_raylib_GetWindowHandle = fn () -> UnsafePointer[NoneType]
alias c_raylib_GetScreenWidth = fn () -> Int32
alias c_raylib_GetScreenHeight = fn () -> Int32
alias c_raylib_GetRenderWidth = fn () -> Int32
alias c_raylib_GetRenderHeight = fn () -> Int32
alias c_raylib_GetMonitorCount = fn () -> Int32
alias c_raylib_GetCurrentMonitor = fn () -> Int32
alias c_raylib_GetMonitorPosition = fn (monitor: Int32) -> Vector2
alias c_raylib_GetMonitorWidth = fn (monitor: Int32) -> Int32
alias c_raylib_GetMonitorHeight = fn (monitor: Int32) -> Int32
alias c_raylib_GetMonitorPhysicalWidth = fn (monitor: Int32) -> Int32
alias c_raylib_GetMonitorPhysicalHeight = fn (monitor: Int32) -> Int32
alias c_raylib_GetMonitorRefreshRate = fn (monitor: Int32) -> Int32
alias c_raylib_GetWindowPosition = fn () -> Vector2
alias c_raylib_GetWindowScaleDPI = fn () -> Vector2
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
alias c_raylib_ClearBackground = fn (color: UnsafePointer[Color]) -> None
alias c_raylib_BeginDrawing = fn () -> None
alias c_raylib_EndDrawing = fn () -> None
alias c_raylib_BeginMode2D = fn (camera: UnsafePointer[Camera2D]) -> None
alias c_raylib_EndMode2D = fn () -> None
alias c_raylib_BeginMode3D = fn (camera: UnsafePointer[Camera]) -> None
alias c_raylib_EndMode3D = fn () -> None
alias c_raylib_BeginTextureMode = fn (
    target: UnsafePointer[RenderTexture2D]
) -> None
alias c_raylib_EndTextureMode = fn () -> None
alias c_raylib_BeginShaderMode = fn (shader: UnsafePointer[Shader]) -> None
alias c_raylib_EndShaderMode = fn () -> None
alias c_raylib_BeginBlendMode = fn (mode: Int32) -> None
alias c_raylib_EndBlendMode = fn () -> None
alias c_raylib_BeginScissorMode = fn (
    x: Int32, y: Int32, width: Int32, height: Int32
) -> None
alias c_raylib_EndScissorMode = fn () -> None
alias c_raylib_BeginVrStereoMode = fn (
    config: UnsafePointer[VrStereoConfig]
) -> None
alias c_raylib_EndVrStereoMode = fn () -> None


# VR stereo config functions for VR simulator
alias c_raylib_LoadVrStereoConfig = fn (
    device: UnsafePointer[VrDeviceInfo]
) -> VrStereoConfig
alias c_raylib_UnloadVrStereoConfig = fn (
    config: UnsafePointer[VrStereoConfig]
) -> None


# Shader management functions
alias c_raylib_LoadShader = fn (
    vsFileName: UnsafePointer[Int8], fsFileName: UnsafePointer[Int8]
) -> Shader
alias c_raylib_LoadShaderFromMemory = fn (
    vsCode: UnsafePointer[Int8], fsCode: UnsafePointer[Int8]
) -> Shader
alias c_raylib_IsShaderReady = fn (shader: UnsafePointer[Shader]) -> Bool
alias c_raylib_GetShaderLocation = fn (
    shader: UnsafePointer[Shader], uniformName: UnsafePointer[Int8]
) -> Int32
alias c_raylib_GetShaderLocationAttrib = fn (
    shader: UnsafePointer[Shader], attribName: UnsafePointer[Int8]
) -> Int32
alias c_raylib_SetShaderValue = fn (
    shader: UnsafePointer[Shader],
    uniformLoc: Int32,
    value: UnsafePointer[NoneType],
    uniformType: Int32,
) -> None
alias c_raylib_SetShaderValueV = fn (
    shader: UnsafePointer[Shader],
    uniformLoc: Int32,
    value: UnsafePointer[NoneType],
    uniformType: Int32,
    count: Int32,
) -> None
alias c_raylib_SetShaderValueMatrix = fn (
    shader: UnsafePointer[Shader], uniformLoc: Int32, mat: UnsafePointer[Matrix]
) -> None
alias c_raylib_SetShaderValueTexture = fn (
    shader: UnsafePointer[Shader],
    uniformLoc: Int32,
    texture: UnsafePointer[Texture2D],
) -> None
alias c_raylib_UnloadShader = fn (shader: UnsafePointer[Shader]) -> None


# Screen-space-related functions
alias c_raylib_GetMouseRay = fn (
    mousePosition: UnsafePointer[Vector2], camera: UnsafePointer[Camera]
) -> Ray
alias c_raylib_GetCameraMatrix = fn (camera: UnsafePointer[Camera]) -> Matrix
alias c_raylib_GetCameraMatrix2D = fn (
    camera: UnsafePointer[Camera2D]
) -> Matrix
alias c_raylib_GetWorldToScreen = fn (
    position: UnsafePointer[Vector3], camera: UnsafePointer[Camera]
) -> Vector2
alias c_raylib_GetScreenWorldToScreen2D = fn (
    position: UnsafePointer[Vector2], camera: UnsafePointer[Camera2D]
) -> Vector2
alias c_raylib_GetWorldToScreenEx = fn (
    position: UnsafePointer[Vector3],
    camera: UnsafePointer[Camera],
    width: Int32,
    height: Int32,
) -> Vector2
alias c_raylib_GetWorldToScreen2D = fn (
    position: UnsafePointer[Vector2], camera: UnsafePointer[Camera2D]
) -> Vector2

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
alias c_raylib_TraceLog = fn (
    logType: Int32, text: UnsafePointer[Int8]
) -> None  # missing extras ...
alias c_raylib_SetTraceLogLevel = fn (logType: Int32) -> None
alias c_raylib_MemAlloc = fn (size: UInt32) -> UnsafePointer[SYSTEM_SIZE]
alias c_raylib_MemRealloc = fn (
    ptr: UnsafePointer[SYSTEM_SIZE], size: UInt32
) -> UnsafePointer[SYSTEM_SIZE]
alias c_raylib_MemFree = fn (ptr: UnsafePointer[SYSTEM_SIZE]) -> None

# Set custom callbacks
alias c_raylib_SetTraceLogCallback = fn (
    callback: UnsafePointer[TraceLogCallback]
) -> None
alias c_raylib_SetLoadFileDataCallback = fn (
    callback: UnsafePointer[LoadFileDataCallback]
) -> None
alias c_raylib_SetSaveFileDataCallback = fn (
    callback: UnsafePointer[SaveFileDataCallback]
) -> None
alias c_raylib_SetLoadFileTextCallback = fn (
    callback: UnsafePointer[LoadFileTextCallback]
) -> None
alias c_raylib_SetSaveFileTextCallback = fn (
    callback: UnsafePointer[SaveFileTextCallback]
) -> None

# File management functions
alias c_raylib_LoadFileData = fn (
    fileName: UnsafePointer[Int8], bytesRead: UnsafePointer[Int32]
) -> UnsafePointer[UInt8]
alias c_raylib_UnloadFileData = fn (data: UnsafePointer[UInt8]) -> None
alias c_raylib_SaveFileData = fn (
    fileName: UnsafePointer[Int8],
    data: UnsafePointer[NoneType],
    dataSize: UInt32,
) -> Bool
alias c_raylib_ExportDataAsCode = fn (
    data: UnsafePointer[UInt8],
    dataSize: UInt32,
    varName: UnsafePointer[Int8],
) -> Bool
alias c_raylib_LoadFileText = fn (
    fileName: UnsafePointer[Int8]
) -> UnsafePointer[Int8]
alias c_raylib_UnloadFileText = fn (text: UnsafePointer[Int8]) -> None
alias c_raylib_SaveFileText = fn (
    fileName: UnsafePointer[Int8], text: UnsafePointer[Int8]
) -> Bool

# File system functions
alias c_raylib_FileExists = fn (fileName: UnsafePointer[Int8]) -> Bool
alias c_raylib_DirectoryExists = fn (dirPath: UnsafePointer[Int8]) -> Bool
alias c_raylib_IsFileExtension = fn (
    fileName: UnsafePointer[Int8], ext: UnsafePointer[Int8]
) -> Bool
alias c_raylib_GetFilelength = fn (fileName: UnsafePointer[Int8]) -> Int64
alias c_raylib_GetFileExtension = fn (
    fileName: UnsafePointer[Int8]
) -> UnsafePointer[Int8]
alias c_raylib_GetFileName = fn (
    filePath: UnsafePointer[Int8]
) -> UnsafePointer[Int8]
alias c_raylib_GetFileNameWithoutExt = fn (
    filePath: UnsafePointer[Int8]
) -> UnsafePointer[Int8]
alias c_raylib_GetDirectoryPath = fn (
    filePath: UnsafePointer[Int8]
) -> UnsafePointer[Int8]
alias c_raylib_GetPrevDirectoryPath = fn (
    dirPath: UnsafePointer[Int8]
) -> UnsafePointer[Int8]
alias c_raylib_GetWorkingDirectory = fn () -> UnsafePointer[Int8]
alias c_raylib_GetApplicationDirectory = fn () -> UnsafePointer[Int8]
alias c_raylib_ChangeDirectory = fn (dir: UnsafePointer[Int8]) -> Bool
alias c_raylib_IsPathFile = fn (path: UnsafePointer[Int8]) -> Bool
alias c_raylib_LoadDirectoryFiles = fn (
    dirPath: UnsafePointer[Int8]
) -> FilePathList
alias c_raylib_LoadDirectoryFilesEx = fn (
    basePath: UnsafePointer[Int8],
    filter: UnsafePointer[Int8],
    scanSubdirs: Bool,
) -> FilePathList
alias c_raylib_UnloadDirectoryFiles = fn (files: UnsafePointer[FilePathList]) -> None
alias c_raylib_IsFileDropped = fn () -> Bool
alias c_raylib_LoadDroppedFiles = fn () -> FilePathList
alias c_raylib_UnloadDroppedFiles = fn (files: UnsafePointer[FilePathList]) -> None
alias c_raylib_GetFileModTime = fn (fileName: UnsafePointer[Int8]) -> Float32

# Compression/Encoding functions
alias c_raylib_CompressData = fn (
    data: UnsafePointer[UInt8],
    dataSize: Int32,
    compDataSize: UnsafePointer[Int32],
) -> UnsafePointer[UInt8]
alias c_raylib_DecompressData = fn (
    compData: UnsafePointer[UInt8],
    compDataSize: Int32,
    dataSize: UnsafePointer[Int32],
) -> UnsafePointer[UInt8]
alias c_raylib_EncodeDataBase64 = fn (
    data: UnsafePointer[UInt8],
    dataSize: Int32,
    outputSize: UnsafePointer[Int32],
) -> UnsafePointer[Int8]
alias c_raylib_DecodeDataBase64 = fn (
    data: UnsafePointer[UInt8], outputSize: UnsafePointer[Int32]
) -> UnsafePointer[UInt8]

# Automation events functionality
alias c_raylib_LoadAutomationEventList = fn (
    fileName: UnsafePointer[Int8]
) -> AutomationEventList
alias c_raylib_UnloadAutomationEventList = fn (
    list: UnsafePointer[AutomationEventList]
) -> None
alias c_raylib_ExportAutomationEventList = fn (
    list: UnsafePointer[AutomationEventList], fileName: UnsafePointer[Int8]
) -> Bool
alias c_raylib_SetAutomationEventList = fn (
    list: UnsafePointer[AutomationEventList]
) -> None
alias c_raylib_SetAutomationEventBaseFrame = fn (frame: Int32) -> None
alias c_raylib_StartAutomationEventRecording = fn () -> None
alias c_raylib_StopAutomationEventRecording = fn () -> None
alias c_raylib_PlayAutomationEvent = fn (event: UnsafePointer[AutomationEvent]) -> None

# Input Handling Functions (Module: core)

# Input-related functions: keyboard
alias c_raylib_IsKeyPressed = fn (key: Int32) -> Bool
alias c_raylib_IsKeyPressedRepeat = fn (key: Int32) -> Bool
alias c_raylib_IsKeyDown = fn (key: Int32) -> Bool
alias c_raylib_IsKeyReleased = fn (key: Int32) -> Bool
alias c_raylib_IsKeyUp = fn (key: Int32) -> Bool
alias c_raylib_GetKeyPressed = fn () -> Int32
alias c_raylib_GetCharPressed = fn () -> Int32
alias c_raylib_SetExitKey = fn (key: Int32) -> None

# Input-related functions: gamepads
alias c_raylib_IsGamepadAvailable = fn (gamepad: Int32) -> Bool
alias c_raylib_GetGamepadName = fn (gamepad: Int32) -> UnsafePointer[Int8]
alias c_raylib_IsGamepadButtonPressed = fn (
    gamepad: Int32, button: Int32
) -> Bool
alias c_raylib_IsGamepadButtonDown = fn (gamepad: Int32, button: Int32) -> Bool
alias c_raylib_IsGamepadButtonReleased = fn (
    gamepad: Int32, button: Int32
) -> Bool
alias c_raylib_IsGamepadButtonUp = fn (gamepad: Int32, button: Int32) -> Bool
alias c_raylib_GetGamepadButtonPressed = fn () -> Int32
alias c_raylib_GetGamepadAxisCount = fn (gamepad: Int32) -> Int32
alias c_raylib_GetGamepadAxisMovement = fn (
    gamepad: Int32, axis: Int32
) -> Float32
alias c_raylib_SetGamepadMappings = fn (mappings: UnsafePointer[Int8]) -> Int32

# Input-related functions: mouse
alias c_raylib_IsMouseButtonPressed = fn (button: Int32) -> Bool
alias c_raylib_IsMouseButtonDown = fn (button: Int32) -> Bool
alias c_raylib_IsMouseButtonReleased = fn (button: Int32) -> Bool
alias c_raylib_IsMouseButtonUp = fn (button: Int32) -> Bool
alias c_raylib_GetMouseX = fn () -> Int32
alias c_raylib_GetMouseY = fn () -> Int32
alias c_raylib_GetMousePosition = fn () -> Vector2
alias c_raylib_GetMouseDelta = fn () -> Vector2
alias c_raylib_SetMousePosition = fn (x: Int32, y: Int32) -> None
alias c_raylib_SetMouseOffset = fn (offsetX: Int32, offsetY: Int32) -> None
alias c_raylib_SetMouseScale = fn (scaleX: Float32, scaleY: Float32) -> None
alias c_raylib_GetMouseWheelMove = fn () -> Float32
alias c_raylib_GetMouseWheelMoveV = fn () -> Vector2
alias c_raylib_SetMouseCursor = fn (cursor: Int32) -> None

# Input-related functions: touch
alias c_raylib_GetTouchX = fn () -> Int32
alias c_raylib_GetTouchY = fn () -> Int32
alias c_raylib_GetTouchPosition = fn (index: Int32) -> Vector2
alias c_raylib_GetTouchPointId = fn (index: Int32) -> Int32
alias c_raylib_GetTouchPointCount = fn () -> Int32

# Gestures and Touch Handling Functions (Module: rgestures)
alias c_raylib_SetGesturesEnabled = fn (flags: UInt32) -> None
alias c_raylib_IsGestureDetected = fn (gesture: UInt32) -> Bool
alias c_raylib_GetGestureDetected = fn () -> Int32
alias c_raylib_GetGestureHoldDuration = fn () -> Float32
alias c_raylib_GetGestureDragVector = fn () -> Vector2
alias c_raylib_GetGestureDragAngle = fn () -> Float32
alias c_raylib_GetGesturePinchVector = fn () -> Vector2
alias c_raylib_GetGesturePinchAngle = fn () -> Float32

# Camera System Functions (Module: rcamera)
alias c_raylib_UpdateCamera = fn (
    camera: UnsafePointer[Camera], mode: Int32
) -> None
alias c_raylib_UpdateCameraPro = fn (
    camera: UnsafePointer[Camera],
    movement: UnsafePointer[Vector3],
    rotation: UnsafePointer[Vector3],
    zoom: Float32,
) -> None


@value
struct RaylibCore:
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

    var _set_trace_log_callback: c_raylib_SetTraceLogCallback
    var _set_load_file_data_callback: c_raylib_SetLoadFileDataCallback
    var _set_save_file_data_callback: c_raylib_SetSaveFileDataCallback
    var _set_load_file_text_callback: c_raylib_SetLoadFileTextCallback
    var _set_save_file_text_callback: c_raylib_SetSaveFileTextCallback

    var _load_file_data: c_raylib_LoadFileData
    var _unload_file_data: c_raylib_UnloadFileData
    var _save_file_data: c_raylib_SaveFileData
    var _export_data_as_code: c_raylib_ExportDataAsCode
    var _load_file_text: c_raylib_LoadFileText
    var _unload_file_text: c_raylib_UnloadFileText
    var _save_file_text: c_raylib_SaveFileText

    var _file_exists: c_raylib_FileExists
    var _directory_exists: c_raylib_DirectoryExists
    var _is_file_extension: c_raylib_IsFileExtension
    var _get_filelength: c_raylib_GetFilelength
    var _get_file_extension: c_raylib_GetFileExtension
    var _get_file_name: c_raylib_GetFileName
    var _get_file_name_without_ext: c_raylib_GetFileNameWithoutExt
    var _get_directory_path: c_raylib_GetDirectoryPath
    var _get_prev_directory_path: c_raylib_GetPrevDirectoryPath
    var _get_working_directory: c_raylib_GetWorkingDirectory
    var _get_application_directory: c_raylib_GetApplicationDirectory
    var _change_directory: c_raylib_ChangeDirectory
    var _is_path_file: c_raylib_IsPathFile
    var _load_directory_files: c_raylib_LoadDirectoryFiles
    var _load_directory_files_ex: c_raylib_LoadDirectoryFilesEx
    var _unload_directory_files: c_raylib_UnloadDirectoryFiles
    var _is_file_dropped: c_raylib_IsFileDropped
    var _load_dropped_files: c_raylib_LoadDroppedFiles
    var _unload_dropped_files: c_raylib_UnloadDroppedFiles
    var _get_file_mod_time: c_raylib_GetFileModTime

    var _compress_data: c_raylib_CompressData
    var _decompress_data: c_raylib_DecompressData
    var _encode_data_base64: c_raylib_EncodeDataBase64
    var _decode_data_base64: c_raylib_DecodeDataBase64

    var _load_automation_event_list: c_raylib_LoadAutomationEventList
    var _unload_automation_event_list: c_raylib_UnloadAutomationEventList
    var _export_automation_event_list: c_raylib_ExportAutomationEventList
    var _set_automation_event_list: c_raylib_SetAutomationEventList
    var _set_automation_event_base_frame: c_raylib_SetAutomationEventBaseFrame
    var _start_automation_event_recording: c_raylib_StartAutomationEventRecording
    var _stop_automation_event_recording: c_raylib_StopAutomationEventRecording
    var _play_automation_event: c_raylib_PlayAutomationEvent

    var _is_key_pressed: c_raylib_IsKeyPressed
    var _is_key_pressed_repeat: c_raylib_IsKeyPressedRepeat
    var _is_key_down: c_raylib_IsKeyDown
    var _is_key_released: c_raylib_IsKeyReleased
    var _is_key_up: c_raylib_IsKeyUp
    var _get_key_pressed: c_raylib_GetKeyPressed
    var _get_char_pressed: c_raylib_GetCharPressed
    var _set_exit_key: c_raylib_SetExitKey

    var _is_gamepad_available: c_raylib_IsGamepadAvailable
    var _get_gamepad_name: c_raylib_GetGamepadName
    var _is_gamepad_button_pressed: c_raylib_IsGamepadButtonPressed
    var _is_gamepad_button_down: c_raylib_IsGamepadButtonDown
    var _is_gamepad_button_released: c_raylib_IsGamepadButtonReleased
    var _is_gamepad_button_up: c_raylib_IsGamepadButtonUp
    var _get_gamepad_button_pressed: c_raylib_GetGamepadButtonPressed
    var _get_gamepad_axis_count: c_raylib_GetGamepadAxisCount
    var _get_gamepad_axis_movement: c_raylib_GetGamepadAxisMovement
    var _set_gamepad_mappings: c_raylib_SetGamepadMappings

    var _is_mouse_button_pressed: c_raylib_IsMouseButtonPressed
    var _is_mouse_button_down: c_raylib_IsMouseButtonDown
    var _is_mouse_button_released: c_raylib_IsMouseButtonReleased
    var _is_mouse_button_up: c_raylib_IsMouseButtonUp
    var _get_mouse_x: c_raylib_GetMouseX
    var _get_mouse_y: c_raylib_GetMouseY
    var _get_mouse_position: c_raylib_GetMousePosition
    var _get_mouse_delta: c_raylib_GetMouseDelta
    var _set_mouse_position: c_raylib_SetMousePosition
    var _set_mouse_offset: c_raylib_SetMouseOffset
    var _set_mouse_scale: c_raylib_SetMouseScale
    var _get_mouse_wheel_move: c_raylib_GetMouseWheelMove
    var _get_mouse_wheel_move_v: c_raylib_GetMouseWheelMoveV
    var _set_mouse_cursor: c_raylib_SetMouseCursor

    var _get_touch_x: c_raylib_GetTouchX
    var _get_touch_y: c_raylib_GetTouchY
    var _get_touch_position: c_raylib_GetTouchPosition
    var _get_touch_point_id: c_raylib_GetTouchPointId
    var _get_touch_point_count: c_raylib_GetTouchPointCount

    var _set_gestures_enabled: c_raylib_SetGesturesEnabled
    var _is_gesture_detected: c_raylib_IsGestureDetected
    var _get_gesture_detected: c_raylib_GetGestureDetected
    var _get_gesture_hold_duration: c_raylib_GetGestureHoldDuration
    var _get_gesture_drag_vector: c_raylib_GetGestureDragVector
    var _get_gesture_drag_angle: c_raylib_GetGestureDragAngle
    var _get_gesture_pinch_vector: c_raylib_GetGesturePinchVector
    var _get_gesture_pinch_angle: c_raylib_GetGesturePinchAngle

    var _update_camera: c_raylib_UpdateCamera
    var _update_camera_pro: c_raylib_UpdateCameraPro

    fn __init__(
        inout self,
        raylib_internal: DLHandle,
        raylib_bindings_internal: DLHandle,
    ):
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
        self._set_window_icon = raylib_bindings_internal.get_function[
            c_raylib_SetWindowIcon
        ]("_SetWindowIcon")
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
        self._clear_background = raylib_bindings_internal.get_function[
            c_raylib_ClearBackground
        ]("_ClearBackground")
        self._begin_drawing = raylib_internal.get_function[
            c_raylib_BeginDrawing
        ]("BeginDrawing")
        self._end_drawing = raylib_internal.get_function[c_raylib_EndDrawing](
            "EndDrawing"
        )
        self._begin_mode2d = raylib_bindings_internal.get_function[
            c_raylib_BeginMode2D
        ]("_BeginMode2D")
        self._end_mode2d = raylib_internal.get_function[c_raylib_EndMode2D](
            "EndMode2D"
        )
        self._begin_mode3d = raylib_bindings_internal.get_function[
            c_raylib_BeginMode3D
        ]("_BeginMode3D")
        self._end_mode3d = raylib_internal.get_function[c_raylib_EndMode3D](
            "EndMode3D"
        )
        self._begin_texture_mode = raylib_bindings_internal.get_function[
            c_raylib_BeginTextureMode
        ]("_BeginTextureMode")
        self._end_texture_mode = raylib_internal.get_function[
            c_raylib_EndTextureMode
        ]("EndTextureMode")
        self._begin_shader_mode = raylib_bindings_internal.get_function[
            c_raylib_BeginShaderMode
        ]("_BeginShaderMode")
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
        self._begin_vr_stereo_mode = raylib_bindings_internal.get_function[
            c_raylib_BeginVrStereoMode
        ]("_BeginVrStereoMode")
        self._end_vr_stereo_mode = raylib_internal.get_function[
            c_raylib_EndVrStereoMode
        ]("EndVrStereoMode")

        # VR stereo config functions for VR simulator
        self._load_vr_stereo_config = raylib_bindings_internal.get_function[
            c_raylib_LoadVrStereoConfig
        ]("_LoadVrStereoConfig")
        self._unload_vr_stereo_config = raylib_bindings_internal.get_function[
            c_raylib_UnloadVrStereoConfig
        ]("_UnloadVrStereoConfig")

        # Shader management functions
        self._load_shader = raylib_internal.get_function[c_raylib_LoadShader](
            "LoadShader"
        )
        self._load_shader_from_memory = raylib_internal.get_function[
            c_raylib_LoadShaderFromMemory
        ]("LoadShaderFromMemory")
        self._is_shader_ready = raylib_bindings_internal.get_function[
            c_raylib_IsShaderReady
        ]("_IsShaderReady")
        self._get_shader_location = raylib_bindings_internal.get_function[
            c_raylib_GetShaderLocation
        ]("_GetShaderLocation")
        self._get_shader_location_attrib = (
            raylib_bindings_internal.get_function[
                c_raylib_GetShaderLocationAttrib
            ]("_GetShaderLocationAttrib")
        )
        self._set_shader_value = raylib_bindings_internal.get_function[
            c_raylib_SetShaderValue
        ]("_SetShaderValue")
        self._set_shader_value_v = raylib_bindings_internal.get_function[
            c_raylib_SetShaderValueV
        ]("_SetShaderValueV")
        self._set_shader_value_matrix = raylib_bindings_internal.get_function[
            c_raylib_SetShaderValueMatrix
        ]("_SetShaderValueMatrix")
        self._set_shader_value_texture = raylib_bindings_internal.get_function[
            c_raylib_SetShaderValueTexture
        ]("_SetShaderValueTexture")
        self._unload_shader = raylib_bindings_internal.get_function[
            c_raylib_UnloadShader
        ]("_UnloadShader")

        # screen-space-related functions
        self._get_mouse_ray = raylib_bindings_internal.get_function[
            c_raylib_GetMouseRay
        ]("_GetMouseRay")
        self._get_camera_matrix = raylib_bindings_internal.get_function[
            c_raylib_GetCameraMatrix
        ]("_GetCameraMatrix")
        self._get_camera_matrix2d = raylib_bindings_internal.get_function[
            c_raylib_GetCameraMatrix2D
        ]("_GetCameraMatrix2D")
        self._get_world_to_screen = raylib_bindings_internal.get_function[
            c_raylib_GetWorldToScreen
        ]("_GetWorldToScreen")
        self._get_screen_world_to_screen2d = (
            raylib_bindings_internal.get_function[
                c_raylib_GetScreenWorldToScreen2D
            ]("_GetScreenWorldToScreen2D")
        )
        self._get_world_to_screen_ex = raylib_bindings_internal.get_function[
            c_raylib_GetWorldToScreenEx
        ]("_GetWorldToScreenEx")
        self._get_world_to_screen2d = raylib_bindings_internal.get_function[
            c_raylib_GetWorldToScreen2D
        ]("_GetWorldToScreen2D")

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

        # Set custom callbacks
        self._set_trace_log_callback = raylib_bindings_internal.get_function[
            c_raylib_SetTraceLogCallback
        ]("_SetTraceLogCallback")
        self._set_load_file_data_callback = (
            raylib_bindings_internal.get_function[
                c_raylib_SetLoadFileDataCallback
            ]("_SetLoadFileDataCallback")
        )
        self._set_save_file_data_callback = (
            raylib_bindings_internal.get_function[
                c_raylib_SetSaveFileDataCallback
            ]("_SetSaveFileDataCallback")
        )
        self._set_load_file_text_callback = (
            raylib_bindings_internal.get_function[
                c_raylib_SetLoadFileTextCallback
            ]("_SetLoadFileTextCallback")
        )
        self._set_save_file_text_callback = (
            raylib_bindings_internal.get_function[
                c_raylib_SetSaveFileTextCallback
            ]("_SetSaveFileTextCallback")
        )

        # Files management functions
        self._load_file_data = raylib_internal.get_function[
            c_raylib_LoadFileData
        ]("LoadFileData")
        self._unload_file_data = raylib_internal.get_function[
            c_raylib_UnloadFileData
        ]("UnloadFileData")
        self._save_file_data = raylib_internal.get_function[
            c_raylib_SaveFileData
        ]("SaveFileData")
        self._export_data_as_code = raylib_internal.get_function[
            c_raylib_ExportDataAsCode
        ]("ExportDataAsCode")
        self._load_file_text = raylib_internal.get_function[
            c_raylib_LoadFileText
        ]("LoadFileText")
        self._unload_file_text = raylib_internal.get_function[
            c_raylib_UnloadFileText
        ]("UnloadFileText")
        self._save_file_text = raylib_internal.get_function[
            c_raylib_SaveFileText
        ]("SaveFileText")

        # File system functions
        self._file_exists = raylib_internal.get_function[c_raylib_FileExists](
            "FileExists"
        )
        self._directory_exists = raylib_internal.get_function[
            c_raylib_DirectoryExists
        ]("DirectoryExists")
        self._is_file_extension = raylib_internal.get_function[
            c_raylib_IsFileExtension
        ]("IsFileExtension")
        self._get_filelength = raylib_internal.get_function[
            c_raylib_GetFilelength
        ]("GetFilelength")
        self._get_file_extension = raylib_internal.get_function[
            c_raylib_GetFileExtension
        ]("GetFileExtension")
        self._get_file_name = raylib_internal.get_function[
            c_raylib_GetFileName
        ]("GetFileName")
        self._get_file_name_without_ext = raylib_internal.get_function[
            c_raylib_GetFileNameWithoutExt
        ]("GetFileNameWithoutExt")
        self._get_directory_path = raylib_internal.get_function[
            c_raylib_GetDirectoryPath
        ]("GetDirectoryPath")
        self._get_prev_directory_path = raylib_internal.get_function[
            c_raylib_GetPrevDirectoryPath
        ]("GetPrevDirectoryPath")
        self._get_working_directory = raylib_internal.get_function[
            c_raylib_GetWorkingDirectory
        ]("GetWorkingDirectory")
        self._get_application_directory = raylib_internal.get_function[
            c_raylib_GetApplicationDirectory
        ]("GetApplicationDirectory")
        self._change_directory = raylib_internal.get_function[
            c_raylib_ChangeDirectory
        ]("ChangeDirectory")
        self._is_path_file = raylib_internal.get_function[c_raylib_IsPathFile](
            "IsPathFile"
        )
        self._load_directory_files = raylib_internal.get_function[
            c_raylib_LoadDirectoryFiles
        ]("LoadDirectoryFiles")
        self._load_directory_files_ex = raylib_internal.get_function[
            c_raylib_LoadDirectoryFilesEx
        ]("LoadDirectoryFilesEx")
        self._unload_directory_files = raylib_bindings_internal.get_function[
            c_raylib_UnloadDirectoryFiles
        ]("_UnloadDirectoryFiles")
        self._is_file_dropped = raylib_internal.get_function[
            c_raylib_IsFileDropped
        ]("IsFileDropped")
        self._load_dropped_files = raylib_bindings_internal.get_function[
            c_raylib_LoadDroppedFiles
        ]("_LoadDroppedFiles")
        self._unload_dropped_files = raylib_internal.get_function[
            c_raylib_UnloadDroppedFiles
        ]("UnloadDroppedFiles")
        self._get_file_mod_time = raylib_internal.get_function[
            c_raylib_GetFileModTime
        ]("GetFileModTime")

        # Compression/Encoding functions
        self._compress_data = raylib_internal.get_function[
            c_raylib_CompressData
        ]("CompressData")
        self._decompress_data = raylib_internal.get_function[
            c_raylib_DecompressData
        ]("DecompressData")
        self._encode_data_base64 = raylib_internal.get_function[
            c_raylib_EncodeDataBase64
        ]("EncodeDataBase64")
        self._decode_data_base64 = raylib_internal.get_function[
            c_raylib_DecodeDataBase64
        ]("DecodeDataBase64")

        # Automation events functionality
        self._load_automation_event_list = raylib_internal.get_function[
            c_raylib_LoadAutomationEventList
        ]("LoadAutomationEventList")
        self._unload_automation_event_list = raylib_internal.get_function[
            c_raylib_UnloadAutomationEventList
        ]("UnloadAutomationEventList")
        self._export_automation_event_list = (
            raylib_bindings_internal.get_function[
                c_raylib_ExportAutomationEventList
            ]("_ExportAutomationEventList")
        )
        self._set_automation_event_list = raylib_internal.get_function[
            c_raylib_SetAutomationEventList
        ]("SetAutomationEventList")
        self._set_automation_event_base_frame = raylib_internal.get_function[
            c_raylib_SetAutomationEventBaseFrame
        ]("SetAutomationEventBaseFrame")
        self._start_automation_event_recording = raylib_internal.get_function[
            c_raylib_StartAutomationEventRecording
        ]("StartAutomationEventRecording")
        self._stop_automation_event_recording = raylib_internal.get_function[
            c_raylib_StopAutomationEventRecording
        ]("StopAutomationEventRecording")
        self._play_automation_event = raylib_bindings_internal.get_function[
            c_raylib_PlayAutomationEvent
        ]("_PlayAutomationEvent")

        # Input-related functions: keyboard
        self._is_key_pressed = raylib_internal.get_function[
            c_raylib_IsKeyPressed
        ]("IsKeyPressed")
        self._is_key_pressed_repeat = raylib_internal.get_function[
            c_raylib_IsKeyPressedRepeat
        ]("IsKeyPressedRepeat")
        self._is_key_down = raylib_internal.get_function[c_raylib_IsKeyDown](
            "IsKeyDown"
        )
        self._is_key_released = raylib_internal.get_function[
            c_raylib_IsKeyReleased
        ]("IsKeyReleased")
        self._is_key_up = raylib_internal.get_function[c_raylib_IsKeyUp](
            "IsKeyUp"
        )
        self._get_key_pressed = raylib_internal.get_function[
            c_raylib_GetKeyPressed
        ]("GetKeyPressed")
        self._get_char_pressed = raylib_internal.get_function[
            c_raylib_GetCharPressed
        ]("GetCharPressed")
        self._set_exit_key = raylib_internal.get_function[c_raylib_SetExitKey](
            "SetExitKey"
        )

        # Input-related functions: gamepads
        self._is_gamepad_available = raylib_internal.get_function[
            c_raylib_IsGamepadAvailable
        ]("IsGamepadAvailable")
        self._get_gamepad_name = raylib_internal.get_function[
            c_raylib_GetGamepadName
        ]("GetGamepadName")
        self._is_gamepad_button_pressed = raylib_internal.get_function[
            c_raylib_IsGamepadButtonPressed
        ]("IsGamepadButtonPressed")
        self._is_gamepad_button_down = raylib_internal.get_function[
            c_raylib_IsGamepadButtonDown
        ]("IsGamepadButtonDown")
        self._is_gamepad_button_released = raylib_internal.get_function[
            c_raylib_IsGamepadButtonReleased
        ]("IsGamepadButtonReleased")
        self._is_gamepad_button_up = raylib_internal.get_function[
            c_raylib_IsGamepadButtonUp
        ]("IsGamepadButtonUp")
        self._get_gamepad_button_pressed = raylib_internal.get_function[
            c_raylib_GetGamepadButtonPressed
        ]("GetGamepadButtonPressed")
        self._get_gamepad_axis_count = raylib_internal.get_function[
            c_raylib_GetGamepadAxisCount
        ]("GetGamepadAxisCount")
        self._get_gamepad_axis_movement = raylib_internal.get_function[
            c_raylib_GetGamepadAxisMovement
        ]("GetGamepadAxisMovement")
        self._set_gamepad_mappings = raylib_internal.get_function[
            c_raylib_SetGamepadMappings
        ]("SetGamepadMappings")

        # Input-related functions: mouse
        self._is_mouse_button_pressed = raylib_internal.get_function[
            c_raylib_IsMouseButtonPressed
        ]("IsMouseButtonPressed")
        self._is_mouse_button_down = raylib_internal.get_function[
            c_raylib_IsMouseButtonDown
        ]("IsMouseButtonDown")
        self._is_mouse_button_released = raylib_internal.get_function[
            c_raylib_IsMouseButtonReleased
        ]("IsMouseButtonReleased")
        self._is_mouse_button_up = raylib_internal.get_function[
            c_raylib_IsMouseButtonUp
        ]("IsMouseButtonUp")
        self._get_mouse_x = raylib_internal.get_function[c_raylib_GetMouseX](
            "GetMouseX"
        )
        self._get_mouse_y = raylib_internal.get_function[c_raylib_GetMouseY](
            "GetMouseY"
        )
        self._get_mouse_position = raylib_internal.get_function[
            c_raylib_GetMousePosition
        ]("GetMousePosition")
        self._get_mouse_delta = raylib_internal.get_function[
            c_raylib_GetMouseDelta
        ]("GetMouseDelta")
        self._set_mouse_position = raylib_internal.get_function[
            c_raylib_SetMousePosition
        ]("SetMousePosition")
        self._set_mouse_offset = raylib_internal.get_function[
            c_raylib_SetMouseOffset
        ]("SetMouseOffset")
        self._set_mouse_scale = raylib_internal.get_function[
            c_raylib_SetMouseScale
        ]("SetMouseScale")
        self._get_mouse_wheel_move = raylib_internal.get_function[
            c_raylib_GetMouseWheelMove
        ]("GetMouseWheelMove")
        self._get_mouse_wheel_move_v = raylib_internal.get_function[
            c_raylib_GetMouseWheelMoveV
        ]("GetMouseWheelMoveV")
        self._set_mouse_cursor = raylib_internal.get_function[
            c_raylib_SetMouseCursor
        ]("SetMouseCursor")

        # Input-related functions: touch
        self._get_touch_x = raylib_internal.get_function[c_raylib_GetTouchX](
            "GetTouchX"
        )
        self._get_touch_y = raylib_internal.get_function[c_raylib_GetTouchY](
            "GetTouchY"
        )
        self._get_touch_position = raylib_internal.get_function[
            c_raylib_GetTouchPosition
        ]("GetTouchPosition")
        self._get_touch_point_id = raylib_internal.get_function[
            c_raylib_GetTouchPointId
        ]("GetTouchPointId")
        self._get_touch_point_count = raylib_internal.get_function[
            c_raylib_GetTouchPointCount
        ]("GetTouchPointCount")

        # Gestures detection functions
        self._set_gestures_enabled = raylib_internal.get_function[
            c_raylib_SetGesturesEnabled
        ]("SetGesturesEnabled")
        self._is_gesture_detected = raylib_internal.get_function[
            c_raylib_IsGestureDetected
        ]("IsGestureDetected")
        self._get_gesture_detected = raylib_internal.get_function[
            c_raylib_GetGestureDetected
        ]("GetGestureDetected")
        self._get_gesture_hold_duration = raylib_internal.get_function[
            c_raylib_GetGestureHoldDuration
        ]("GetGestureHoldDuration")
        self._get_gesture_drag_vector = raylib_internal.get_function[
            c_raylib_GetGestureDragVector
        ]("GetGestureDragVector")
        self._get_gesture_drag_angle = raylib_internal.get_function[
            c_raylib_GetGestureDragAngle
        ]("GetGestureDragAngle")
        self._get_gesture_pinch_vector = raylib_internal.get_function[
            c_raylib_GetGesturePinchVector
        ]("GetGesturePinchVector")
        self._get_gesture_pinch_angle = raylib_internal.get_function[
            c_raylib_GetGesturePinchAngle
        ]("GetGesturePinchAngle")

        # Camera system functions
        self._update_camera = raylib_internal.get_function[
            c_raylib_UpdateCamera
        ]("UpdateCamera")
        self._update_camera_pro = raylib_bindings_internal.get_function[
            c_raylib_UpdateCameraPro
        ]("_UpdateCameraPro")

    @always_inline
    fn init_window(self, width: Int32, height: Int32, title: String):
        """Initialize window and OpenGL context."""
        self._init_window(width, height, title.unsafe_ptr())

    @always_inline
    fn close_window(self):
        """Close window and unload OpenGL context."""
        self._close_window()

    @always_inline
    fn window_should_close(self) -> Bool:
        """Check if application should close (KEY_ESCAPE pressed or windows close icon clicked).
        """
        return self._window_should_close()

    @always_inline
    fn is_window_ready(self) -> Bool:
        """Check if window has been initialized successfully."""
        return self._is_window_ready()

    @always_inline
    fn is_window_fullscreen(self) -> Bool:
        """Check if window is currently fullscreen."""
        return self._is_window_fullscreen()

    @always_inline
    fn is_window_hidden(self) -> Bool:
        """Check if window is currently hidden."""
        return self._is_window_hidden()

    @always_inline
    fn is_window_minimized(self) -> Bool:
        """Check if window is currently minimized."""
        return self._is_window_minimized()

    @always_inline
    fn is_window_maximized(self) -> Bool:
        """Check if window is currently maximized."""
        return self._is_window_maximized()

    @always_inline
    fn is_window_focused(self) -> Bool:
        """Check if window is currently focused."""
        return self._is_window_focused()

    @always_inline
    fn is_window_resized(self) -> Bool:
        """Check if window has been resized."""
        return self._is_window_resized()

    @always_inline
    fn is_window_state(self, flags: UInt32) -> Bool:
        """Check if one specific window flag is enabled."""
        return self._is_window_state(flags)

    @always_inline
    fn set_window_state(self, flags: UInt32):
        """Set window configuration state using flags."""
        self._set_window_state(flags)

    @always_inline
    fn clear_window_state(self, flags: UInt32):
        """Clear window configuration state flags."""
        self._clear_window_state(flags)

    @always_inline
    fn toggle_fullscreen(self):
        """Toggle window state: fullscreen/windowed (only PLATFORM_DESKTOP)."""
        self._toggle_fullscreen()

    @always_inline
    fn toggle_borderless_windowed(self):
        """Toggle window state: borderless (only PLATFORM_DESKTOP)."""
        self._toggle_borderless_windowed()

    @always_inline
    fn maximize_window(self):
        """Maximize window (only PLATFORM_DESKTOP)."""
        self._maximize_window()

    @always_inline
    fn minimize_window(self):
        """Minimize window (only PLATFORM_DESKTOP)."""
        self._minimize_window()

    @always_inline
    fn restore_window(self):
        """Restore window to default size and position (only PLATFORM_DESKTOP).
        """
        self._restore_window()

    @always_inline
    fn set_window_icon(self, owned image: Image):
        """Set icon for window (only PLATFORM_DESKTOP)."""
        self._set_window_icon(UnsafePointer.address_of(image))

    @always_inline
    fn set_window_icons(self, icons: UnsafePointer[Image], count: Int32):
        """Set icons for window (only PLATFORM_DESKTOP)."""
        self._set_window_icons(icons, count)

    @always_inline
    fn set_window_title(self, title: String):
        """Set title for window (only PLATFORM_DESKTOP)."""
        self._set_window_title(title.unsafe_ptr())

    @always_inline
    fn set_window_position(self, x: Int32, y: Int32):
        """Set window position on screen (only PLATFORM_DESKTOP)."""
        self._set_window_position(x, y)

    @always_inline
    fn set_window_monitor(self, monitor: Int32):
        """Set monitor for the current window (fullscreen mode)."""
        self._set_window_monitor(monitor)

    @always_inline
    fn set_window_min_size(self, width: Int32, height: Int32):
        """Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)."""
        self._set_window_min_size(width, height)

    @always_inline
    fn set_window_max_size(self, width: Int32, height: Int32):
        """Set window maximum dimensions (for FLAG_WINDOW_RESIZABLE)."""
        self._set_window_max_size(width, height)

    @always_inline
    fn set_window_size(self, width: Int32, height: Int32):
        """Set window dimensions."""
        self._set_window_size(width, height)

    @always_inline
    fn set_window_opacity(self, alpha: Float32):
        """Set window transparency (only PLATFORM_DESKTOP)."""
        self._set_window_opacity(alpha)

    @always_inline
    fn set_window_focused(self):
        """Set window focus flag (only PLATFORM_DESKTOP)."""
        self._set_window_focused()

    @always_inline
    fn get_window_handle(self) -> UnsafePointer[NoneType]:
        """Get native window handle."""
        return self._get_window_handle()

    @always_inline
    fn get_screen_width(self) -> Int32:
        """Get current screen width."""
        return self._get_screen_width()

    @always_inline
    fn get_screen_height(self) -> Int32:
        """Get current screen height."""
        return self._get_screen_height()

    @always_inline
    fn get_render_width(self) -> Int32:
        """Get current render width."""
        return self._get_render_width()

    @always_inline
    fn get_render_height(self) -> Int32:
        """Get current render height."""
        return self._get_render_height()

    @always_inline
    fn get_monitor_count(self) -> Int32:
        """Get number of connected monitors."""
        return self._get_monitor_count()

    @always_inline
    fn get_current_monitor(self) -> Int32:
        """Get current connected monitor."""
        return self._get_current_monitor()

    @always_inline
    fn get_monitor_position(self, monitor: Int32) -> Vector2:
        """Get specified monitor position."""
        var temp = self._get_monitor_position(monitor)
        return UnsafePointer.address_of(temp).bitcast[Vector2]()[0]

    @always_inline
    fn get_monitor_width(self, monitor: Int32) -> Int32:
        """Get specified monitor width."""
        return self._get_monitor_width(monitor)

    @always_inline
    fn get_monitor_height(self, monitor: Int32) -> Int32:
        """Get specified monitor height."""
        return self._get_monitor_height(monitor)

    @always_inline
    fn get_monitor_physical_width(self, monitor: Int32) -> Int32:
        """Get specified monitor physical width in millimetres."""
        return self._get_monitor_physical_width(monitor)

    @always_inline
    fn get_monitor_physical_height(self, monitor: Int32) -> Int32:
        """Get specified monitor physical height in millimetres."""
        return self._get_monitor_physical_height(monitor)

    @always_inline
    fn get_monitor_refresh_rate(self, monitor: Int32) -> Int32:
        """Get specified monitor refresh rate."""
        return self._get_monitor_refresh_rate(monitor)

    @always_inline
    fn get_window_position(self) -> Vector2:
        """Get window position XY on monitor."""
        var temp = self._get_window_position()
        return UnsafePointer.address_of(temp).bitcast[Vector2]()[0]

    @always_inline
    fn get_window_scale_dpi(self) -> Vector2:
        """Get window scale DPI factor."""
        var temp = self._get_window_scale_dpi()
        return UnsafePointer.address_of(temp).bitcast[Vector2]()[0]

    @always_inline
    fn get_monitor_name(self, monitor: Int32) -> String:
        """Get the human-readable, UTF-8 encoded name of the primary monitor."""
        var temp = self._get_monitor_name(monitor)
        return StringRef(temp)

    @always_inline
    fn set_clipboard_text(self, text: StringLiteral):
        """Set clipboard text content."""
        self._set_clipboard_text(text.unsafe_ptr())

    @always_inline
    fn get_clipboard_text(self) -> String:
        """Get clipboard text content."""
        var temp = self._get_clipboard_text()
        return StringRef(temp)

    @always_inline
    fn enable_event_waiting(self):
        """Enable cursor availability."""
        self._enable_event_waiting()

    @always_inline
    fn disable_event_waiting(self):
        """Disable cursor availability."""
        self._disable_event_waiting()

    @always_inline
    fn show_cursor(self):
        """Shows cursor."""
        self._show_cursor()

    @always_inline
    fn hide_cursor(self):
        """Hides cursor."""
        self._hide_cursor()

    @always_inline
    fn is_cursor_hidden(self) -> Bool:
        """Check if cursor is not visible."""
        return self._is_cursor_hidden()

    @always_inline
    fn enable_cursor(self):
        """Enables cursor (unlock cursor)."""
        self._enable_cursor()

    @always_inline
    fn disable_cursor(self):
        """Disables cursor (lock cursor)."""
        self._disable_cursor()

    @always_inline
    fn is_cursor_on_screen(self) -> Bool:
        """Check if cursor is on the current screen."""
        return self._is_cursor_on_screen()

    @always_inline
    fn clear_background(self, owned color: Color):
        """Clear the background with a color."""
        self._clear_background(UnsafePointer.address_of(color))

    @always_inline
    fn begin_drawing(self):
        """Setup canvas (framebuffer) to start drawing."""
        self._begin_drawing()

    @always_inline
    fn end_drawing(self):
        """End canvas drawing and swap buffers (double buffering)."""
        self._end_drawing()

    @always_inline
    fn begin_mode2d(self, owned camera: Camera2D):
        """Begin 2D mode with custom camera."""
        self._begin_mode2d(UnsafePointer.address_of(camera))

    @always_inline
    fn end_mode2d(self):
        """End 2D mode with custom camera."""
        self._end_mode2d()

    @always_inline
    fn begin_mode3d(self, owned camera: Camera3D):
        """Begin 3D mode with custom camera."""
        self._begin_mode3d(UnsafePointer.address_of(camera))

    @always_inline
    fn end_mode3d(self):
        """End 3D mode and return to default 2D mode."""
        self._end_mode3d()

    @always_inline
    fn begin_texture_mode(self, owned target: RenderTexture2D):
        """Begin texture drawing to render texture."""
        self._begin_texture_mode(UnsafePointer.address_of(target))

    @always_inline
    fn end_texture_mode(self):
        """End texture drawing and return to default render texture."""
        self._end_texture_mode()

    @always_inline
    fn begin_shader_mode(self, owned shader: Shader):
        """Begin custom shader drawing."""
        self._begin_shader_mode(UnsafePointer.address_of(shader))

    @always_inline
    fn end_shader_mode(self):
        """End custom shader drawing."""
        self._end_shader_mode()

    @always_inline
    fn begin_blend_mode(self, mode: Int32):
        """Begin blending mode (alpha, additive, multiplied)."""
        self._begin_blend_mode(mode)

    @always_inline
    fn end_blend_mode(self):
        """End blending mode (reset to default: alpha blending)."""
        self._end_blend_mode()

    @always_inline
    fn begin_scissor_mode(
        self, x: Int32, y: Int32, width: Int32, height: Int32
    ):
        """Begin scissor mode (define screen area for following drawing)."""
        self._begin_scissor_mode(x, y, width, height)

    @always_inline
    fn end_scissor_mode(self):
        """End scissor mode."""
        self._end_scissor_mode()

    @always_inline
    fn begin_vr_stereo_mode(self, owned config: VrStereoConfig):
        """Begin VR stereo rendering."""
        self._begin_vr_stereo_mode(UnsafePointer.address_of(config))

    @always_inline
    fn end_vr_stereo_mode(self):
        """End VR stereo rendering."""
        self._end_vr_stereo_mode()

    @always_inline
    fn load_vr_stereo_config(
        self, owned device: VrDeviceInfo
    ) -> VrStereoConfig:
        """Load VR stereo config for VR simulator."""
        return self._load_vr_stereo_config(UnsafePointer.address_of(device))

    @always_inline
    fn unload_vr_stereo_config(self, owned config: VrStereoConfig):
        """Unload VR stereo config for VR simulator."""
        self._unload_vr_stereo_config(UnsafePointer.address_of(config))

    @always_inline
    fn load_shader(self, vsFileName: String, fsFileName: String) -> Shader:
        """Load shader from files and bind default locations."""
        var temp = self._load_shader(
            vsFileName.unsafe_ptr(), fsFileName.unsafe_ptr()
        )
        return UnsafePointer.address_of(temp).bitcast[Shader]()[]

    @always_inline
    fn load_shader_from_memory(self, vsCode: String, fsCode: String) -> Shader:
        """Load shader from code strings and bind default locations."""
        return self._load_shader_from_memory(
            vsCode.unsafe_ptr(), fsCode.unsafe_ptr()
        )

    @always_inline
    fn is_shader_ready(self, owned shader: Shader) -> Bool:
        """Check if a shader is ready."""
        return self._is_shader_ready(UnsafePointer.address_of(shader))

    @always_inline
    fn get_shader_location(
        self, owned shader: Shader, uniformName: String
    ) -> Int32:
        """Get shader uniform location."""
        return self._get_shader_location(
            UnsafePointer.address_of(shader),
            uniformName.unsafe_ptr(),
        )

    @always_inline
    fn get_shader_location_attrib(
        self, owned shader: Shader, attribName: String
    ) -> Int32:
        """Get shader attribute location."""
        return self._get_shader_location_attrib(
            UnsafePointer.address_of(shader),
            attribName.unsafe_ptr(),
        )

    @always_inline
    fn set_shader_value(
        self,
        owned shader: Shader,
        uniformLoc: Int32,
        value: UnsafePointer[NoneType],
        uniformType: Int32,
    ):
        """Set shader uniform value."""
        self._set_shader_value(
            UnsafePointer.address_of(shader),
            uniformLoc,
            value,
            uniformType,
        )

    @always_inline
    fn set_shader_value_v(
        self,
        owned shader: Shader,
        uniformLoc: Int32,
        value: UnsafePointer[NoneType],
        uniformType: Int32,
        count: Int32,
    ):
        """Set shader uniform value vector."""
        self._set_shader_value_v(
            UnsafePointer.address_of(shader),
            uniformLoc,
            value,
            uniformType,
            count,
        )

    @always_inline
    fn set_shader_value_matrix(
        self, owned shader: Shader, uniformLoc: Int32, owned mat: Matrix
    ):
        """Set shader uniform value (matrix 4x4)."""
        self._set_shader_value_matrix(
            UnsafePointer.address_of(shader),
            uniformLoc,
            UnsafePointer.address_of(mat),
        )

    @always_inline
    fn set_shader_value_texture(
        self, owned shader: Shader, uniformLoc: Int32, owned texture: Texture2D
    ):
        """Set shader uniform value for texture."""
        self._set_shader_value_texture(
            UnsafePointer.address_of(shader),
            uniformLoc,
            UnsafePointer.address_of(texture),
        )

    @always_inline
    fn unload_shader(self, owned shader: Shader):
        """Unload shader from GPU memory (VRAM)."""
        self._unload_shader(UnsafePointer.address_of(shader))

    @always_inline
    fn get_mouse_ray(
        self, owned mousePosition: Vector2, owned camera: Camera
    ) -> Ray:
        """Get a ray trace from mouse."""
        return self._get_mouse_ray(
            UnsafePointer.address_of(mousePosition),
            UnsafePointer.address_of(camera),
        )

    @always_inline
    fn get_camera_matrix(self, owned camera: Camera) -> Matrix:
        """Get camera transform matrix (view matrix)."""
        return self._get_camera_matrix(UnsafePointer.address_of(camera))

    @always_inline
    fn get_camera_matrix2d(self, owned camera: Camera2D) -> Matrix:
        """Get camera 2d transform matrix."""
        return self._get_camera_matrix2d(UnsafePointer.address_of(camera))

    @always_inline
    fn get_world_to_screen(
        self, owned position: Vector3, owned camera: Camera
    ) -> Vector2:
        """Get the screen space position for a 3d world space position."""
        return self._get_world_to_screen(
            UnsafePointer.address_of(position),
            UnsafePointer.address_of(camera),
        )

    @always_inline
    fn get_screen_world_to_screen2d(
        self, owned position: Vector2, owned camera: Camera2D
    ) -> Vector2:
        """Get the screen space position for a 3d world space position."""
        return self._get_screen_world_to_screen2d(
            UnsafePointer.address_of(position),
            UnsafePointer.address_of(camera),
        )

    @always_inline
    fn get_world_to_screen_ex(
        self,
        owned position: Vector3,
        owned camera: Camera,
        width: Int32,
        height: Int32,
    ) -> Vector2:
        """Get the screen space position for a 3d world space position."""
        return self._get_world_to_screen_ex(
            UnsafePointer.address_of(position),
            UnsafePointer.address_of(camera),
            width,
            height,
        )

    @always_inline
    fn get_world_to_screen2d(
        self, owned position: Vector2, owned camera: Camera2D
    ) -> Vector2:
        """Get the screen space position for a 2d camera world space position.
        """
        return self._get_world_to_screen2d(
            UnsafePointer.address_of(position),
            UnsafePointer.address_of(camera),
        )

    @always_inline
    fn set_target_fps(self, fps: Int32):
        """Set target FPS (maximum)."""
        self._set_target_fps(fps)

    @always_inline
    fn get_frame_time(self) -> Float32:
        """Get time in seconds for last frame drawn."""
        return self._get_frame_time()

    @always_inline
    fn get_time(self) -> Float64:
        """Get time in seconds since window initialization."""
        return self._get_time()

    @always_inline
    fn get_fps(self) -> Int32:
        """Get frames per second."""
        return self._get_fps()

    @always_inline
    fn swap_screen_buffer(self):
        """Swap back buffer to front buffer."""
        self._swap_screen_buffer()

    @always_inline
    fn poll_input_events(self):
        """Poll (store) all input events."""
        self._poll_input_events()

    @always_inline
    fn wait_time(self, ms: Float64):
        """Wait for some milliseconds."""
        self._wait_time(ms)

    @always_inline
    fn set_random_seed(self, seed: UInt32):
        """Set the seed for the random number generator."""
        self._set_random_seed(seed)

    @always_inline
    fn get_random_value(self, min: Int32, max: Int32) -> Int32:
        """Get a random value between min and max (both included)."""
        return self._get_random_value(min, max)

    @always_inline
    fn load_random_sequence(
        self, count: UInt32, min: Int32, max: Int32
    ) -> UnsafePointer[Int32]:
        """Load a random sequence for the random number generator."""
        return self._load_random_sequence(count, min, max)

    @always_inline
    fn unload_random_sequence(self, sequence: UnsafePointer[Int32]):
        """Unload a random sequence for the random number generator."""
        self._unload_random_sequence(sequence)
     
    @always_inline
    fn take_screenshot(self, file_name: String):
        """Take a screenshot of current screen (saved a .png)."""
        self._take_screenshot(file_name.unsafe_ptr())

    @always_inline
    fn set_config_flags(self, flags: UInt32):
        """Set the config flags."""
        self._set_config_flags(flags)

    @always_inline
    fn open_url(self, url: String):
        """Open URL with default system browser (if available)."""
        self._open_url(url.unsafe_ptr())

    @always_inline
    fn trace_log(self, log_type: Int32, text: String):
        """Show trace log messages (LOG_INFO, LOG_WARNING, LOG_ERROR, LOG_DEBUG).
        Missing extras: Keyword arguments."""
        self._trace_log(log_type, text.unsafe_ptr())

    @always_inline
    fn set_trace_log_level(self, log_type: Int32):
        """Set the current threshold (minimum) log level."""
        self._set_trace_log_level(log_type)

    @always_inline
    fn mem_alloc(self, size: UInt32) -> UnsafePointer[SYSTEM_SIZE]:
        """Internal memory allocator."""
        return self._mem_alloc(size)

    @always_inline
    fn mem_realloc(
        self, ptr: UnsafePointer[SYSTEM_SIZE], size: UInt32
    ) -> UnsafePointer[SYSTEM_SIZE]:
        """Internal memory reallocator."""
         return self._mem_realloc(ptr, size)

    @always_inline
    fn mem_free(self, ptr: UnsafePointer[SYSTEM_SIZE]):
        """Internal memory deallocator."""
        self._mem_free(ptr)

    @always_inline
    fn set_trace_log_callback(
        self, owned callback: TraceLogCallback
    ):
        """Set a custom trace log callback to enable custom logging."""
        self._set_trace_log_callback(UnsafePointer.address_of(callback))

    @always_inline
    fn set_load_file_data_callback(
        self, owned callback: LoadFileDataCallback
    ):
        """Set custom file binary data loader callback."""
        self._set_load_file_data_callback(UnsafePointer.address_of(callback))

    @always_inline
    fn set_save_file_data_callback(
        self, owned callback: SaveFileDataCallback
    ):
        """Set custom file binary data saver callback."""
        self._set_save_file_data_callback(UnsafePointer.address_of(callback))

    @always_inline
    fn set_load_file_text_callback(
        self, owned callback: LoadFileTextCallback
    ):
        """Set custom file text data loader callback."""
        self._set_load_file_text_callback(UnsafePointer.address_of(callback))

    @always_inline
    fn set_save_file_text_callback(
        self, owned callback: SaveFileTextCallback
    ):
        """Set custom file text data saver callback."""
        self._set_save_file_text_callback(UnsafePointer.address_of(callback))

    @always_inline
    fn load_file_data(
        self, file_name: String, owned data_size: UnsafePointer[Int32]
    ) -> UnsafePointer[UInt8]:
        """Load file data as byte array (read)."""
        return self._load_file_data(file_name.unsafe_ptr(), data_size)

    @always_inline
    fn unload_file_data(self, owned data: UnsafePointer[UInt8]):
        """Unload file data allocated by LoadFileData()."""
        self._unload_file_data(data)

    @always_inline
    fn save_file_data(
        self, file_name: String, data: UnsafePointer[NoneType], data_size: UInt32
    ) -> Bool:
        """Save data to file from byte array (write)."""
        return self._save_file_data(file_name.unsafe_ptr(), data, data_size)

    @always_inline
    fn export_data_as_code(
        self, data: UnsafePointer[UInt8], data_size: UInt32, var_name: String
    ) -> String:
        """Export image data as code file defining an array of bytes."""
        return self._export_data_as_code(data, data_size, var_name.unsafe_ptr())

    @always_inline
    fn load_file_text(self, file_name: String) -> String:
        """Load text data from file (read)."""
        var temp = self._load_file_text(file_name.unsafe_ptr())
        return StringRef(temp)
    
    @always_inline
    fn unload_file_text(self, owned text: String):
        """Unload file text data (free memory)."""
        self._unload_file_text(text.unsafe_ptr())

    @always_inline
    fn save_file_text(self, file_name: String, text: String) -> Bool:
        """Save text data to file (write)."""
        return self._save_file_text(file_name.unsafe_ptr(), text.unsafe_ptr())
    
    @always_inline
    fn file_exists(self, file_name: String) -> Bool:
        """Check if file exists."""
        return self._file_exists(file_name.unsafe_ptr())

    @always_inline
    fn directory_exists(self, dir_path: String) -> Bool:
        """Check if a directory path exists."""
        return self._directory_exists(dir_path.unsafe_ptr())

    @always_inline
    fn is_file_extension(self, file_name: String, ext: String) -> Bool:
        """Check file extension (including point: .png, .wav)."""
        return self._is_file_extension(file_name.unsafe_ptr(), ext.unsafe_ptr())

    @always_inline
    fn get_file_extension(self, file_name: String) -> String:
        """Get pointer to extension for a filename string."""
        var temp = self._get_file_extension(file_name.unsafe_ptr())
        return StringRef(temp)

    @always_inline
    fn get_file_name(self, file_path: String) -> String:
        """Get pointer to filename for a path string."""
        var temp = self._get_file_name(file_path.unsafe_ptr())
        return StringRef(temp)

    @always_inline
    fn get_file_name_without_ext(self, file_path: String) -> String:
        """Get filename string without extension (uses static string)."""
        var temp = self._get_file_name_without_ext(file_path.unsafe_ptr())
        return StringRef(temp)

    @always_inline
    fn get_directory_path(self, file_path: String) -> String:
        """Get full path for a given fileName with path."""
        var temp = self._get_directory_path(file_path.unsafe_ptr())
        return StringRef(temp)

    @always_inline
    fn get_prev_directory_path(self, dir_path: String) -> String:
        """Get previous directory path for a given path."""
        var temp = self._get_prev_directory_path(dir_path.unsafe_ptr())
        return StringRef(temp)

    @always_inline
    fn get_working_directory(self) -> String:
        """Get current working directory."""
        var temp = self._get_working_directory()
        return StringRef(temp)

    @always_inline
    fn get_application_directory(self) -> String:
        """Get current executable directory."""
        var temp = self._get_application_directory()
        return StringRef(temp)

    @always_inline
    fn change_directory(self, dir: String) -> Bool:
        """Change working directory, returns true if success."""
        return self._change_directory(dir.unsafe_ptr())

    @always_inline
    fn is_path_file(self, file_path: String) -> Bool:
        """Check if a file path is a file."""
        return self._is_path_file(file_path.unsafe_ptr())

    fn load_directory_files(self, dir_path: String) -> FilePathList:
        """Load files paths from a directory path."""
        return self._load_directory_files(dir_path.unsafe_ptr())

    fn load_directory_files_ex(
        self, base_path: String, filter: String, scan_sub_dirs: Bool
    ) -> FilePathList:
        """Load files paths from a directory path with filter."""
        return self._load_directory_files_ex(
            base_path.unsafe_ptr(), filter.unsafe_ptr(), scan_sub_dirs
        )

    fn unload_directory_files(self, owned files: FilePathList):
        """Unload files paths buffers loaded with LoadDirectoryFiles()."""
        self._unload_directory_files(UnsafePointer.address_of(files))

    @always_inline
    fn is_file_dropped(self) -> Bool:
        """Check if a file has been dropped into window."""
        return self._is_file_dropped()

    @always_inline
    fn load_dropped_files(self) -> FilePathList:
        """Retrieve dropped files into an array of strings."""
        return self._load_dropped_files()

    @always_inline  
    fn unload_dropped_files(self, owned files: FilePathList):
        """Clear dropped files paths buffer."""
        self._unload_dropped_files(UnsafePointer.address_of(files))

    @always_inline
    fn get_file_mod_time(self, file_name: String) -> UInt64:
        """Get file modification time (last write time)."""
        return self._get_file_mod_time(file_name.unsafe_ptr())
    
    @always_inline
    fn compress_data(
        self, data: UnsafePointer[UInt8], data_size: Int32, var_name: UnsafePointer[Int32]
    ) -> UnsafePointer[UInt8]:
        """Compress data (DEFLATE algorithm), memory must be MemFree()."""
        return self._compress_data(data, data_size, var_name)

    @always_inline
    fn decompress_data(
        self, data: UnsafePointer[UInt8], data_size: Int32, var_name: UnsafePointer[Int32]
    ) -> UnsafePointer[UInt8]:
        """Decompress data (DEFLATE algorithm), memory must be MemFree()."""
        return self._decompress_data(data, data_size, var_name)

    @always_inline
    fn encode_data_base64(
        self, data: UnsafePointer[UInt8], data_size: Int32, output_size: UnsafePointer[Int32]) -> UnsafePointer[Int8]:
        """Encode data to base64 string, memory must be MemFree()."""
        return self._encode_data_base64(data, data_size, output_size)

    @always_inline
    fn decode_data_base64(
        self, data: UnsafePointer[UInt8], data_size: UnsafePointer[Int32]
    ) -> UnsafePointer[UInt8]:
        """Decode base64 text to binary data."""
        return self._decode_data_base64(data, data_size)

    @always_inline
    fn load_automation_event_list(self, file_name: String) -> AutomationEventList:
        """Load automation event list from file."""
        return self._load_automation_event_list(file_name.unsafe_ptr())
    
    @always_inline
    fn unload_automation_event_list(self, owned events: AutomationEventList):
        """Unload automation event list."""
        self._unload_automation_event_list(UnsafePointer.address_of(events))

    @always_inline
    fn export_automation_event_list(self, owned events: AutomationEventList, file_name: String) -> Bool:
        """Export automation event list to file."""
        return self._export_automation_event_list(UnsafePointer.address_of(events), file_name.unsafe_ptr())

    @always_inline
    fn set_automation_event_list(self, owned events: AutomationEventList):
        """Set current event list for playback."""
        self._set_automation_event_list(UnsafePointer.address_of(events))

    @always_inline
    fn set_automation_event_base_frame(self, frame: Int32):
        """Set the base time for the event list."""
        self._set_automation_event_base_frame(frame)

    @always_inline
    fn start_automation_event_recording(self):
        """Start recording events (raylib internal)."""
        self._start_automation_event_recording()

    @always_inline
    fn stop_automation_event_recording(self):
        """Stop recording events (raylib internal)."""
        self._stop_automation_event_recording()

    @always_inline
    fn play_automation_event(self, owned event: AutomationEvent):
        """Play a single automation event."""
        self._play_automation_event(UnsafePointer.address_of(event))
    
    @always_inline
    fn is_key_pressed(self, key: Int32) -> Bool:
        """Detect if a key has been pressed once."""
        return self._is_key_pressed(key)

    @always_inline
    fn is_key_pressed_repeat(self, key: Int32) -> Bool:
        """Detect if a key is being pressed again (Only PLATFORM_DESKTOP)."""
        return self._is_key_pressed_repeat(key)

    @always_inline
    fn is_key_down(self, key: Int32) -> Bool:
        """Detect if a key is being pressed."""
        return self._is_key_down(key)

    @always_inline
    fn is_key_released(self, key: Int32) -> Bool:
        """Detect if a key has been released once."""
        return self._is_key_released(key)

    @always_inline
    fn is_key_up(self, key: Int32) -> Bool:
        """Detect if a key has been released once."""
        return self._is_key_up(key)

    @always_inline
    fn get_key_pressed(self) -> Int32:
        """Get latest key pressed (keycode), call it multiple times for keys queued, returns 0 when the queue is empty."""
        return self._get_key_pressed()

    @always_inline
    fn get_char_pressed(self) -> Int32:
        """Get latest key pressed (keycode), call it multiple times for keys queued, returns 0 when the queue is empty."""
        return self._get_char_pressed()

    @always_inline
    fn set_exit_key(self, key: Int32):
        """Set a custom key to exit program (default is ESC)."""
        self._set_exit_key(key)

    @always_inline
    fn is_gamepad_available(self, gamepad: Int32) -> Bool:
        """Check if a gamepad is available."""
        return self._is_gamepad_available(gamepad)

    @always_inline
    fn get_gamepad_name(self, gamepad: Int32) -> String:
        """Get the name from a gamepad."""
        var temp = self._get_gamepad_name(gamepad)
        return StringRef(temp)

    @always_inline
    fn is_gamepad_button_pressed(self, gamepad: Int32, button: Int32) -> Bool:
        """Check if a gamepad button has been pressed once."""
        return self._is_gamepad_button_pressed(gamepad, button)
    
    @always_inline
    fn is_gamepad_button_down(self, gamepad: Int32, button: Int32) -> Bool:
        """Check if a gamepad button is being pressed."""
        return self._is_gamepad_button_down(gamepad, button)

    @always_inline
    fn is_gamepad_button_released(self, gamepad: Int32, button: Int32) -> Bool:
        """Check if a gamepad button has been released once."""
        return self._is_gamepad_button_released(gamepad, button)

    @always_inline
    fn is_gamepad_button_up(self, gamepad: Int32, button: Int32) -> Bool:
        """Check if a gamepad button is NOT being pressed."""
        return self._is_gamepad_button_up(gamepad, button)

    @always_inline
    fn get_gamepad_button_pressed(self) -> Int32:
        """Get the last gamepad button pressed."""
        return self._get_gamepad_button_pressed()

    @always_inline
    fn get_gamepad_axis_count(self, gamepad: Int32) -> Int32:
        """Get the axis count for a gamepad."""
        return self._get_gamepad_axis_count(gamepad)

    @always_inline
    fn get_gamepad_axis_movement(self, gamepad: Int32, axis: Int32) -> Float32:
        """Get the axis movement value for a gamepad axis."""
        return self._get_gamepad_axis_movement(gamepad, axis)

    @always_inline
    fn sset_gamepad_mappings(self, mappings: String) -> Int32:
        """Set internal gamepad mappings (SDL_GameControllerDB)."""
        return self._set_gamepad_mappings(mappings.unsafe_ptr())

    @always_inline
    fn is_mouse_button_pressed(self, button: Int32) -> Bool:
        """Check if a mouse button has been pressed once."""
        return self._is_mouse_button_pressed(button)

    @always_inline
    fn is_mouse_button_down(self, button: Int32) -> Bool:
        """Check if a mouse button is being pressed."""
        return self._is_mouse_button_down(button)
    
    @always_inline
    fn is_mouse_button_released(self, button: Int32) -> Bool:
        """Check if a mouse button has been released once."""
        return self._is_mouse_button_released(button)

    @always_inline
    fn is_mouse_button_up(self, button: Int32) -> Bool:
        """Check if a mouse button is NOT being pressed."""
        return self._is_mouse_button_up(button)

    @always_inline
    fn get_mouse_x(self) -> Int32:
        """Get the mouse position X."""
        return self._get_mouse_x()

    @always_inline
    fn get_mouse_y(self) -> Int32:
        """Get the mouse position Y."""
        return self._get_mouse_y()

    @always_inline
    fn get_mouse_position(self) -> Vector2:
        """Get the mouse position."""
        var temp = self._get_mouse_position()
        return UnsafePointer.address_of(temp).bitcast[Vector2]()[0]

    @always_inline
    fn set_mouse_position(self, x: Int32, y: Int32):
        """Set the mouse position."""
        self._set_mouse_position(x, y)

    @always_inline
    fn set_mouse_offset(self, x: Int32, y: Int32):
        """Set the mouse offset."""
        self._set_mouse_offset(x, y)

    @always_inline
    fn set_mouse_scale(self, x: Float32, y: Float32):
        """Set the mouse scaling."""
        self._set_mouse_scale(x, y)

    @always_inline
    fn get_mouse_wheel_move(self) -> Int32:
        """Get the mouse wheel movement Y."""
        return self._get_mouse_wheel_move()

    @always_inline
    fn get_mouse_wheel_move_v(self) -> Vector2:
        """Get the mouse wheel movement XY."""
        return self._get_mouse_wheel_move_v()

    @always_inline
    fn set_mouse_cursor(self, cursor: Int32):
        """Set the mouse cursor."""
        self._set_mouse_cursor(cursor)

    @always_inline
    fn get_touch_x(self) -> Int32:
        """Get touch position X for touch point 0 (relative to screen size)."""
        return self._get_touch_x()

    @always_inline
    fn get_touch_y(self) -> Int32:
        """Get touch position Y for touch point 0 (relative to screen size)."""
        return self._get_touch_y()

    @always_inline
    fn get_touch_position(self, index: Int32) -> Vector2:
        """Get touch position XY for a touch point index (relative to screen size)."""
        return self._get_touch_position(index)
    
    @always_inline
    fn get_touch_point_id(self, index: Int32) -> Int32:
        """Get touch point identifier for given index."""
        return self._get_touch_point_id(index)

    @always_inline
    fn get_touch_point_count(self) -> Int32:
        """Get the touch points count."""
        return self._get_touch_point_count()

    
    @always_inline
    fn set_gestures_enabled(self, gestureFlags: UInt32):
        """Set gestures enabled."""
        self._set_gestures_enabled(gestureFlags)

    @always_inline
    fn is_gesture_detected(self, gesture: UInt32) -> Bool:
        """Check if a gesture have been detected."""
        return self._is_gesture_detected(gesture)

    @always_inline
    fn get_gesture_detected(self) -> Int32:
        """Get latest detected gesture."""
        return self._get_gesture_detected()

    @always_inline
    fn get_gesture_hold_duration(self) -> Float32:
        """Get gesture hold time in milliseconds."""
        return self._get_gesture_hold_duration()

    @always_inline
    fn get_gesture_drag_vector(self) -> Vector2:
        """Get gesture drag vector."""
        return self._get_gesture_drag_vector()

    @always_inline
    fn get_gesture_drag_angle(self) -> Float32:
        """Get gesture drag angle."""
        return self._get_gesture_drag_angle()

    @always_inline
    fn get_gesture_pinch_vector(self) -> Vector2:
        """Get gesture pinch delta."""
        return self._get_gesture_pinch_vector()

    @always_inline
    fn get_gesture_pinch_angle(self) -> Float32:
        """Get gesture pinch angle."""
        return self._get_gesture_pinch_angle()

    @always_inline
    fn update_camera(self, owned camera: Camera, mode: Int32):
        """Update camera position for selected mode."""
        self._update_camera(UnsafePointer.address_of(camera), mode)

    @always_inline
    fn update_camera_pro(self, owned camera: Camera, owned movement: Vector3, owned rotation: Vector3, zoom: Float32):
        """Update camera position for selected mode with Pro parameters."""
        self._update_camera_pro(UnsafePointer.address_of(camera), UnsafePointer.address_of(movement), UnsafePointer.address_of(rotation), zoom)
