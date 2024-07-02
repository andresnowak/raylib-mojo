# raylib general constants

# System/Window config flags
# NOTE: Every bit registers one state (use it with bit masks)
# By default all flags are set to 0
struct ConfigFlags:
    alias FLAG_VSYNC_HINT = 0x00000040                # Set to try enabling V-Sync on GPU
    alias FLAG_FULLSCREEN_MODE = 0x00000002           # Set to run program in fullscreen
    alias FLAG_WINDOW_RESIZABLE = 0x00000004          # Set to allow resizable window
    alias FLAG_WINDOW_UNDECORATED = 0x00000008        # Set to disable window decoration (frame and buttons)
    alias FLAG_WINDOW_HIDDEN = 0x00000080             # Set to hide window
    alias FLAG_WINDOW_MINIMIZED = 0x00000200          # Set to minimize window (iconify)
    alias FLAG_WINDOW_MAXIMIZED = 0x00000400          # Set to maximize window (expanded to monitor)
    alias FLAG_WINDOW_UNFOCUSED = 0x00000800          # Set to window non focused
    alias FLAG_WINDOW_TOPMOST = 0x00001000            # Set to window always on top
    alias FLAG_WINDOW_ALWAYS_RUN = 0x00000100         # Set to allow windows running while minimized
    alias FLAG_WINDOW_TRANSPARENT = 0x00000010        # Set to allow transparent framebuffer
    alias FLAG_WINDOW_HIGHDPI = 0x00002000            # Set to support HighDPI
    alias FLAG_WINDOW_MOUSE_PASSTHROUGH = 0x00004000  # Set to support mouse passthrough, only supported when FLAG_WINDOW_UNDECORATED
    alias FLAG_BORDERLESS_WINDOWED_MODE = 0x00008000  # Set to run program in borderless windowed mode
    alias FLAG_MSAA_4X_HINT = 0x00000020              # Set to try enabling MSAA 4X
    alias FLAG_INTERLACED_HINT = 0x00010000           # Set to try enabling interlaced video format (for V3D)

# Trace log level
# NOTE: Organized by priority level
struct TraceLogLevels:
    alias LOG_ALL = 0                                 # Display all logs
    alias LOG_TRACE = 1                               # Trace logging, intended for internal use only
    alias LOG_DEBUG = 2                               # Debug logging, used for internal debugging, it should be disabled on release builds
    alias LOG_INFO = 3                                # Info logging, used for program execution info
    alias LOG_WARNING = 4                             # Warning logging, used on recoverable failures
    alias LOG_ERROR = 5                               # Error logging, used on unrecoverable failures
    alias LOG_FATAL = 6                               # Fatal logging, used to abort program: exit(EXIT_FAILURE)
    alias LOG_NONE = 7                                # Disable logging


# Keyboard codes
# NOTE: Use GetKeyPressed() to allow redefining
# required keys for alternative layouts
struct Keyboard:
    alias KEY_NULL            = 0        # Key: NULL, used for no key pressed
    # Alphanumeric keys
    alias KEY_APOSTROPHE      = 39       # Key: '
    alias KEY_COMMA           = 44       # Key: ,
    alias KEY_MINUS           = 45       # Key: -
    alias KEY_PERIOD          = 46       # Key: .
    alias KEY_SLASH           = 47       # Key: /
    alias KEY_ZERO            = 48       # Key: 0
    alias KEY_ONE             = 49       # Key: 1
    alias KEY_TWO             = 50       # Key: 2
    alias KEY_THREE           = 51       # Key: 3
    alias KEY_FOUR            = 52       # Key: 4
    alias KEY_FIVE            = 53       # Key: 5
    alias KEY_SIX             = 54       # Key: 6
    alias KEY_SEVEN           = 55       # Key: 7
    alias KEY_EIGHT           = 56       # Key: 8
    alias KEY_NINE            = 57       # Key: 9
    alias KEY_SEMICOLON       = 59       # Key: ;
    alias KEY_EQUAL           = 61       # Key: =
    alias KEY_A               = 65       # Key: A | a
    alias KEY_B               = 66       # Key: B | b
    alias KEY_C               = 67       # Key: C | c
    alias KEY_D               = 68       # Key: D | d
    alias KEY_E               = 69       # Key: E | e
    alias KEY_F               = 70       # Key: F | f
    alias KEY_G               = 71       # Key: G | g
    alias KEY_H               = 72       # Key: H | h
    alias KEY_I               = 73       # Key: I | i
    alias KEY_J               = 74       # Key: J | j
    alias KEY_K               = 75       # Key: K | k
    alias KEY_L               = 76       # Key: L | l
    alias KEY_M               = 77       # Key: M | m
    alias KEY_N               = 78       # Key: N | n
    alias KEY_O               = 79       # Key: O | o
    alias KEY_P               = 80       # Key: P | p
    alias KEY_Q               = 81       # Key: Q | q
    alias KEY_R               = 82       # Key: R | r
    alias KEY_S               = 83       # Key: S | s
    alias KEY_T               = 84       # Key: T | t
    alias KEY_U               = 85       # Key: U | u
    alias KEY_V               = 86       # Key: V | v
    alias KEY_W               = 87       # Key: W | w
    alias KEY_X               = 88       # Key: X | x
    alias KEY_Y               = 89       # Key: Y | y
    alias KEY_Z               = 90       # Key: Z | z
    alias KEY_LEFT_BRACKET    = 91       # Key: [
    alias KEY_BACKSLASH       = 92       # Key: '\'
    alias KEY_RIGHT_BRACKET   = 93       # Key: ]
    alias KEY_GRAVE           = 96       # Key: `
    # Function keys
    alias KEY_SPACE           = 32       # Key: Space
    alias KEY_ESCAPE          = 256      # Key: Esc
    alias KEY_ENTER           = 257      # Key: Enter
    alias KEY_TAB             = 258      # Key: Tab
    alias KEY_BACKSPACE       = 259      # Key: Backspace
    alias KEY_INSERT          = 260      # Key: Ins
    alias KEY_DELETE          = 261      # Key: Del
    alias KEY_RIGHT           = 262      # Key: Cursor right
    alias KEY_LEFT            = 263      # Key: Cursor left
    alias KEY_DOWN            = 264      # Key: Cursor down
    alias KEY_UP              = 265      # Key: Cursor up
    alias KEY_PAGE_UP         = 266      # Key: Page up
    alias KEY_PAGE_DOWN       = 267      # Key: Page down
    alias KEY_HOME            = 268      # Key: Home
    alias KEY_END             = 269      # Key: End
    alias KEY_CAPS_LOCK       = 280      # Key: Caps lock
    alias KEY_SCROLL_LOCK     = 281      # Key: Scroll down
    alias KEY_NUM_LOCK        = 282      # Key: Num lock
    alias KEY_PRINT_SCREEN    = 283      # Key: Print screen
    alias KEY_PAUSE           = 284      # Key: Pause
    alias KEY_F1              = 290      # Key: F1
    alias KEY_F2              = 291      # Key: F2
    alias KEY_F3              = 292      # Key: F3
    alias KEY_F4              = 293      # Key: F4
    alias KEY_F5              = 294      # Key: F5
    alias KEY_F6              = 295      # Key: F6
    alias KEY_F7              = 296      # Key: F7
    alias KEY_F8              = 297      # Key: F8
    alias KEY_F9              = 298      # Key: F9
    alias KEY_F10             = 299      # Key: F10
    alias KEY_F11             = 300      # Key: F11
    alias KEY_F12             = 301      # Key: F12
    alias KEY_LEFT_SHIFT      = 340      # Key: Shift left
    alias KEY_LEFT_CONTROL    = 341      # Key: Control left
    alias KEY_LEFT_ALT        = 342      # Key: Alt left
    alias KEY_LEFT_SUPER      = 343      # Key: Super left
    alias KEY_RIGHT_SHIFT     = 344      # Key: Shift right
    alias KEY_RIGHT_CONTROL   = 345      # Key: Control right
    alias KEY_RIGHT_ALT       = 346      # Key: Alt right
    alias KEY_RIGHT_SUPER     = 347      # Key: Super right
    alias KEY_KB_MENU         = 348      # Key: KB menu
    # Keypad keys
    alias KEY_KP_0            = 320      # Key: Keypad 0
    alias KEY_KP_1            = 321      # Key: Keypad 1
    alias KEY_KP_2            = 322      # Key: Keypad 2
    alias KEY_KP_3            = 323      # Key: Keypad 3
    alias KEY_KP_4            = 324      # Key: Keypad 4
    alias KEY_KP_5            = 325      # Key: Keypad 5
    alias KEY_KP_6            = 326      # Key: Keypad 6
    alias KEY_KP_7            = 327      # Key: Keypad 7
    alias KEY_KP_8            = 328      # Key: Keypad 8
    alias KEY_KP_9            = 329      # Key: Keypad 9
    alias KEY_KP_DECIMAL      = 330      # Key: Keypad .
    alias KEY_KP_DIVIDE       = 331      # Key: Keypad /
    alias KEY_KP_MULTIPLY     = 332      # Key: Keypad *
    alias KEY_KP_SUBTRACT     = 333      # Key: Keypad -
    alias KEY_KP_ADD          = 334      # Key: Keypad +
    alias KEY_KP_ENTER        = 335      # Key: Keypad Enter
    alias KEY_KP_EQUAL        = 336      # Key: Keypad =
    # Android key buttons
    alias KEY_BACK            = 4        # Key: Android back button
    alias KEY_MENU            = 5        # Key: Android menu button
    alias KEY_VOLUME_UP       = 24       # Key: Android volume up button
    alias KEY_VOLUME_DOWN     = 25        # Key: Android volume down button

# Mouse codes
struct MouseButton:
    alias MOUSE_BUTTON_LEFT = 0       # Mouse button left
    alias MOUSE_BUTTON_RIGHT = 1      # Mouse button right
    alias MOUSE_BUTTON_MIDDLE = 2     # Mouse button middle (pressed wheel)
    alias MOUSE_BUTTON_SIDE = 3       # Mouse button side (advanced mouse device)
    alias MOUSE_BUTTON_EXTRA = 4      # Mouse button extra (advanced mouse device)
    alias MOUSE_BUTTON_FORWARD = 5    # Mouse button forward (advanced mouse device)
    alias MOUSE_BUTTON_BACK = 6       # Mouse button back (advanced mouse device)

struct MouseCursor:
    alias MOUSE_CURSOR_DEFAULT = 0         # Default pointer shape
    alias MOUSE_CURSOR_ARROW = 1           # Arrow shape
    alias MOUSE_CURSOR_IBEAM = 2           # Text writing cursor shape
    alias MOUSE_CURSOR_CROSSHAIR = 3       # Cross shape
    alias MOUSE_CURSOR_POINTING_HAND = 4   # Pointing hand cursor
    alias MOUSE_CURSOR_RESIZE_EW = 5       # Horizontal resize/move arrow shape
    alias MOUSE_CURSOR_RESIZE_NS = 6       # Vertical resize/move arrow shape
    alias MOUSE_CURSOR_RESIZE_NWSE = 7     # Top-left to bottom-right diagonal resize/move arrow shape
    alias MOUSE_CURSOR_RESIZE_NESW = 8     # Top-right to bottom-left diagonal resize/move arrow shape
    alias MOUSE_CURSOR_RESIZE_ALL = 9      # Omnidirectional resize/move cursor shape
    alias MOUSE_CURSOR_NOT_ALLOWED = 10    # Operation-not-allowed shape

# Gamepad codes
struct GamepadButton:
    alias GAMEPAD_BUTTON_UNKNOWN = 0          # Unknown button, just for error checking
    alias GAMEPAD_BUTTON_LEFT_FACE_UP = 1     # Gamepad left DPAD up button
    alias GAMEPAD_BUTTON_LEFT_FACE_RIGHT = 2  # Gamepad left DPAD right button
    alias GAMEPAD_BUTTON_LEFT_FACE_DOWN = 3   # Gamepad left DPAD down button
    alias GAMEPAD_BUTTON_LEFT_FACE_LEFT = 4   # Gamepad left DPAD left button
    alias GAMEPAD_BUTTON_RIGHT_FACE_UP = 5    # Gamepad right button up (i.e. PS3: Triangle, Xbox: Y)
    alias GAMEPAD_BUTTON_RIGHT_FACE_RIGHT = 6 # Gamepad right button right (i.e. PS3: Circle, Xbox: B)
    alias GAMEPAD_BUTTON_RIGHT_FACE_DOWN = 7  # Gamepad right button down (i.e. PS3: Cross, Xbox: A)
    alias GAMEPAD_BUTTON_RIGHT_FACE_LEFT = 8  # Gamepad right button left (i.e. PS3: Square, Xbox: X)
    alias GAMEPAD_BUTTON_LEFT_TRIGGER_1 = 9   # Gamepad top/back trigger left (first), it could be a trailing button
    alias GAMEPAD_BUTTON_LEFT_TRIGGER_2 = 10  # Gamepad top/back trigger left (second), it could be a trailing button
    alias GAMEPAD_BUTTON_RIGHT_TRIGGER_1 = 11 # Gamepad top/back trigger right (first), it could be a trailing button
    alias GAMEPAD_BUTTON_RIGHT_TRIGGER_2 = 12 # Gamepad top/back trigger right (second), it could be a trailing button
    alias GAMEPAD_BUTTON_MIDDLE_LEFT = 13     # Gamepad center buttons, left one (i.e. PS3: Select)
    alias GAMEPAD_BUTTON_MIDDLE = 14          # Gamepad center buttons, middle one (i.e. PS3: PS, Xbox: XBOX)
    alias GAMEPAD_BUTTON_MIDDLE_RIGHT = 15    # Gamepad center buttons, right one (i.e. PS3: Start)
    alias GAMEPAD_BUTTON_LEFT_THUMB = 16      # Gamepad joystick pressed button left
    alias GAMEPAD_BUTTON_RIGHT_THUMB = 17     # Gamepad joystick pressed button right

struct GamepadAxis:
    alias GAMEPAD_AXIS_LEFT_X = 0        # Gamepad left stick X axis
    alias GAMEPAD_AXIS_LEFT_Y = 1        # Gamepad left stick Y axis
    alias GAMEPAD_AXIS_RIGHT_X = 2       # Gamepad right stick X axis
    alias GAMEPAD_AXIS_RIGHT_Y = 3       # Gamepad right stick Y axis
    alias GAMEPAD_AXIS_LEFT_TRIGGER = 4  # Gamepad back trigger left, pressure level: [1..-1]
    alias GAMEPAD_AXIS_RIGHT_TRIGGER = 5 # Gamepad back trigger right, pressure level: [1..-1]

# Material map type
struct MaterialMaps:
    alias MATERIAL_MAP_ALBEDO = 0          # Albedo material (same as: MATERIAL_MAP_DIFFUSE)
    alias MATERIAL_MAP_METALNESS = 1       # Metalness material (same as: MATERIAL_MAP_SPECULAR)
    alias MATERIAL_MAP_NORMAL = 2          # Normal material
    alias MATERIAL_MAP_ROUGHNESS = 3       # Roughness material
    alias MATERIAL_MAP_OCCLUSION = 4       # Ambient occlusion material
    alias MATERIAL_MAP_EMISSION = 5        # Emission material
    alias MATERIAL_MAP_HEIGHT = 6          # Heightmap material
    alias MATERIAL_MAP_CUBEMAP = 7         # Cubemap material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
    alias MATERIAL_MAP_IRRADIANCE = 8      # Irradiance material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
    alias MATERIAL_MAP_PREFILTER = 9       # Prefilter material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
    alias MATERIAL_MAP_BRDF = 10           # Brdf material

    alias MATERIAL_MAP_DIFFUSE = Self.MATERIAL_MAP_ALBEDO
    alias MATERIAL_MAP_SPECULAR = Self.MATERIAL_MAP_METALNESS

# Shader location point type
struct ShaderLocations:
    alias SHADER_LOC_VERTEX_POSITION = 0       # Shader location: vertex attribute: position
    alias SHADER_LOC_VERTEX_TEXCOORD01 = 1     # Shader location: vertex attribute: texcoord01
    alias SHADER_LOC_VERTEX_TEXCOORD02 = 2     # Shader location: vertex attribute: texcoord02
    alias SHADER_LOC_VERTEX_NORMAL = 3         # Shader location: vertex attribute: normal
    alias SHADER_LOC_VERTEX_TANGENT = 4        # Shader location: vertex attribute: tangent
    alias SHADER_LOC_VERTEX_COLOR = 5          # Shader location: vertex attribute: color
    alias SHADER_LOC_MATRIX_MVP = 6            # Shader location: matrix uniform: model-view-projection
    alias SHADER_LOC_MATRIX_VIEW = 7           # Shader location: matrix uniform: view (camera transform)
    alias SHADER_LOC_MATRIX_PROJECTION = 8     # Shader location: matrix uniform: projection
    alias SHADER_LOC_MATRIX_MODEL = 9          # Shader location: matrix uniform: model (transform)
    alias SHADER_LOC_MATRIX_NORMAL = 10        # Shader location: matrix uniform: normal
    alias SHADER_LOC_VECTOR_VIEW = 11          # Shader location: vector uniform: view
    alias SHADER_LOC_COLOR_DIFFUSE = 12        # Shader location: vector uniform: diffuse color
    alias SHADER_LOC_COLOR_SPECULAR = 13       # Shader location: vector uniform: specular color
    alias SHADER_LOC_COLOR_AMBIENT = 14        # Shader location: vector uniform: ambient color
    alias SHADER_LOC_MAP_ALBEDO = 15           # Shader location: sampler2d texture: albedo (same as: SHADER_LOC_MAP_DIFFUSE)
    alias SHADER_LOC_MAP_METALNESS = 16        # Shader location: sampler2d texture: metalness (same as: SHADER_LOC_MAP_SPECULAR)
    alias SHADER_LOC_MAP_NORMAL = 17           # Shader location: sampler2d texture: normal
    alias SHADER_LOC_MAP_ROUGHNESS = 18        # Shader location: sampler2d texture: roughness
    alias SHADER_LOC_MAP_OCCLUSION = 19        # Shader location: sampler2d texture: occlusion
    alias SHADER_LOC_MAP_EMISSION = 20         # Shader location: sampler2d texture: emission
    alias SHADER_LOC_MAP_HEIGHT = 21           # Shader location: sampler2d texture: height
    alias SHADER_LOC_MAP_CUBEMAP = 22          # Shader location: samplerCube texture: cubemap
    alias SHADER_LOC_MAP_IRRADIANCE = 23       # Shader location: samplerCube texture: irradiance
    alias SHADER_LOC_MAP_PREFILTER = 24        # Shader location: samplerCube texture: prefilter
    alias SHADER_LOC_MAP_BRDF = 25             # Shader location: sampler2d texture: brdf

    alias SHADER_LOC_MAP_DIFFUSE = Self.SHADER_LOC_MAP_ALBEDO
    alias SHADER_LOC_MAP_SPECULAR = Self.SHADER_LOC_MAP_METALNESS

# Shader uniform data type
struct ShaderUniformDataTypes:
    alias SHADER_UNIFORM_FLOAT = 0        # Shader uniform type: float
    alias SHADER_UNIFORM_VEC2 = 1         # Shader uniform type: vec2 (2 float)
    alias SHADER_UNIFORM_VEC3 = 2         # Shader uniform type: vec3 (3 float)
    alias SHADER_UNIFORM_VEC4 = 3         # Shader uniform type: vec4 (4 float)
    alias SHADER_UNIFORM_INT = 4          # Shader uniform type: int
    alias SHADER_UNIFORM_IVEC2 = 5        # Shader uniform type: ivec2 (2 int)
    alias SHADER_UNIFORM_IVEC3 = 6        # Shader uniform type: ivec3 (3 int)
    alias SHADER_UNIFORM_IVEC4 = 7        # Shader uniform type: ivec4 (4 int)
    alias SHADER_UNIFORM_SAMPLER2D = 8    # Shader uniform type: sampler2d

# Shader attribute data type
struct ShaderAttributeDataTypes:
    alias SHADER_ATTRIB_FLOAT = 0         # Shader attribute type: float
    alias SHADER_ATTRIB_VEC2 = 1          # Shader attribute type: vec2 (2 float)
    alias SHADER_ATTRIB_VEC3 = 2          # Shader attribute type: vec3 (3 float)
    alias SHADER_ATTRIB_VEC4 = 3          # Shader attribute type: vec4 (4 float)

# Pixel formats
# NOTE: Support depends on OpenGL version and platform
struct PixelFormats:
    alias PIXELFORMAT_UNCOMPRESSED_GRAYSCALE = 1   # 8 bit per pixel (no alpha)
    alias PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA = 2  # 8*2 bpp (2 channels)
    alias PIXELFORMAT_UNCOMPRESSED_R5G6B5 = 3      # 16 bpp
    alias PIXELFORMAT_UNCOMPRESSED_R8G8B8 = 4      # 24 bpp
    alias PIXELFORMAT_UNCOMPRESSED_R5G5B5A1 = 5    # 16 bpp (1 bit alpha)
    alias PIXELFORMAT_UNCOMPRESSED_R4G4B4A4 = 6    # 16 bpp (4 bit alpha)
    alias PIXELFORMAT_UNCOMPRESSED_R8G8B8A8 = 7    # 32 bpp
    alias PIXELFORMAT_UNCOMPRESSED_R32 = 8         # 32 bpp (1 channel - float)
    alias PIXELFORMAT_UNCOMPRESSED_R32G32B32 = 9   # 32*3 bpp (3 channels - float)
    alias PIXELFORMAT_UNCOMPRESSED_R32G32B32A32 = 10  # 32*4 bpp (4 channels - float)
    alias PIXELFORMAT_UNCOMPRESSED_R16 = 11        # 16 bpp (1 channel - half float)
    alias PIXELFORMAT_UNCOMPRESSED_R16G16B16 = 12  # 16*3 bpp (3 channels - half float)
    alias PIXELFORMAT_UNCOMPRESSED_R16G16B16A16 = 13  # 16*4 bpp (4 channels - half float)
    alias PIXELFORMAT_COMPRESSED_DXT1_RGB = 14     # 4 bpp (no alpha)
    alias PIXELFORMAT_COMPRESSED_DXT1_RGBA = 15    # 4 bpp (1 bit alpha)
    alias PIXELFORMAT_COMPRESSED_DXT3_RGBA = 16    # 8 bpp
    alias PIXELFORMAT_COMPRESSED_DXT5_RGBA = 17    # 8 bpp
    alias PIXELFORMAT_COMPRESSED_ETC1_RGB = 18     # 4 bpp
    alias PIXELFORMAT_COMPRESSED_ETC2_RGB = 19     # 4 bpp
    alias PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA = 20  # 8 bpp
    alias PIXELFORMAT_COMPRESSED_PVRT_RGB = 21     # 4 bpp
    alias PIXELFORMAT_COMPRESSED_PVRT_RGBA = 22    # 4 bpp
    alias PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA = 23  # 8 bpp
    alias PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA = 24  # 2 bpp

# Texture parameters: filter mode
# NOTE 1: Filtering considers mipmaps if available in the texture
# NOTE 2: Filter is accordingly set for minification and magnification
struct TextureFilters:
    alias TEXTURE_FILTER_POINT = 0               # No filter, just pixel approximation
    alias TEXTURE_FILTER_BILINEAR = 1            # Linear filtering
    alias TEXTURE_FILTER_TRILINEAR = 2           # Trilinear filtering (linear with mipmaps)
    alias TEXTURE_FILTER_ANISOTROPIC_4X = 3      # Anisotropic filtering 4x
    alias TEXTURE_FILTER_ANISOTROPIC_8X = 4      # Anisotropic filtering 8x
    alias TEXTURE_FILTER_ANISOTROPIC_16X = 5     # Anisotropic filtering 16x

# Texture parameters: wrap mode
struct TextureWraps:
    alias TEXTURE_WRAP_REPEAT = 0                # Repeats texture in tiled mode
    alias TEXTURE_WRAP_CLAMP = 1                 # Clamps texture to edge pixel in tiled mode
    alias TEXTURE_WRAP_MIRROR_REPEAT = 2         # Mirrors and repeats the texture in tiled mode
    alias TEXTURE_WRAP_MIRROR_CLAMP = 3          # Mirrors and clamps to border the texture in tiled mode

# Cubemap layouts
struct CubemapLayouts:
    alias CUBEMAP_LAYOUT_AUTO_DETECT = 0         # Automatically detect layout type
    alias CUBEMAP_LAYOUT_LINE_VERTICAL = 1       # Layout is defined by a vertical line with faces
    alias CUBEMAP_LAYOUT_LINE_HORIZONTAL = 2     # Layout is defined by a horizontal line with faces
    alias CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR = 3 # Layout is defined by a 3x4 cross with cubemap faces
    alias CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE = 4 # Layout is defined by a 4x3 cross with cubemap faces
    alias CUBEMAP_LAYOUT_PANORAMA = 5            # Layout is defined by a panorama image (equirrectangular map)

# Font type, defines generation method
struct FontTypes:
    alias FONT_DEFAULT = 0                       # Default font generation, anti-aliased
    alias FONT_BITMAP = 1                        # Bitmap font generation, no anti-aliasing
    alias FONT_SDF = 2                           # SDF font generation, requires external shader

# Color blending modes (pre-defined)
struct BlendModes:
    alias BLEND_ALPHA = 0                        # Blend textures considering alpha (default)
    alias BLEND_ADDITIVE = 1                     # Blend textures adding colors
    alias BLEND_MULTIPLIED = 2                   # Blend textures multiplying colors
    alias BLEND_ADD_COLORS = 3                   # Blend textures adding colors (alternative)
    alias BLEND_SUBTRACT_COLORS = 4              # Blend textures subtracting colors (alternative)
    alias BLEND_ALPHA_PREMULTIPLY = 5            # Blend premultiplied textures considering alpha
    alias BLEND_CUSTOM = 6                       # Blend textures using custom src/dst factors (use rlSetBlendFactors())
    alias BLEND_CUSTOM_SEPARATE = 7              # Blend textures using custom rgb/alpha separate src/dst factors (use rlSetBlendFactorsSeparate())

# Gestures type
struct Gestures:
    alias GESTURE_NONE = 0                       # No gesture
    alias GESTURE_TAP = 1                        # Tap gesture
    alias GESTURE_DOUBLETAP = 2                  # Double tap gesture
    alias GESTURE_HOLD = 4                       # Hold gesture
    alias GESTURE_DRAG = 8                       # Drag gesture
    alias GESTURE_SWIPE_RIGHT = 16               # Swipe right gesture
    alias GESTURE_SWIPE_LEFT = 32                # Swipe left gesture
    alias GESTURE_SWIPE_UP = 64                  # Swipe up gesture
    alias GESTURE_SWIPE_DOWN = 128               # Swipe down gesture
    alias GESTURE_PINCH_IN = 256                 # Pinch in gesture
    alias GESTURE_PINCH_OUT = 512                # Pinch out gesture

# Camera system modes
struct CameraModes:
    alias CAMERA_CUSTOM = 0                      # Camera custom, controlled by user (UpdateCamera() does nothing)
    alias CAMERA_FREE = 1                        # Camera free mode
    alias CAMERA_ORBITAL = 2                     # Camera orbital, around target, zoom supported
    alias CAMERA_FIRST_PERSON = 3                # Camera first person
    alias CAMERA_THIRD_PERSON = 4                # Camera third person

# Camera projection modes
struct CameraProjections:
    alias CAMERA_PERSPECTIVE = 0                 # Perspective projection
    alias CAMERA_ORTHOGRAPHIC = 1                # Orthographic projection

# N-patch layout
struct NPatchLayouts:
    alias NPATCH_NINE_PATCH = 0                  # Npatch layout: 3x3 tiles
    alias NPATCH_THREE_PATCH_VERTICAL = 1        # Npatch layout: 1x3 tiles
    alias NPATCH_THREE_PATCH_HORIZONTAL = 2      # Npatch layout: 3x1 tiles