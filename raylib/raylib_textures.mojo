from .texture import Texture2D, TextureCubemap, RenderTexture2D

# Image loading functions
# NOTE: These functions do not require GPU access
alias c_raylib_LoadImage = fn (filename: UnsafePointer[Int8]) -> Image
alias c_raylib_LoadImageRaw = fn (
    filename: UnsafePointer[Int8],
    width: Int32,
    height: Int32,
    format: Int32,
    headerSize: Int32,
) -> Image
alias c_raylib_LoadImageSvg = fn (
    filenameOrString: UnsafePointer[Int8], width: Int32, height: Int32
) -> Image
alias c_raylib_LoadImageAnim = fn (
    filename: UnsafePointer[Int8], frames: UnsafePointer[Int32]
) -> Image
alias c_raylib_LoadImageFromMemory = fn (
    fileType: UnsafePointer[Int8],
    fileData: UnsafePointer[UInt8],
    dataSize: Int32,
) -> Image
alias c_raylib_LoadImageFromTexture = fn (
    texture: UnsafePointer[Texture2D]
) -> Image
alias c_raylib_LoadImageFromScreen = fn () -> Image
alias c_raylib_IsImageReady = fn (image: UnsafePointer[Image]) -> Bool
alias c_raylib_UnloadImage = fn (image: UnsafePointer[Image]) -> None
alias c_raylib_ExportImage = fn (
    image: UnsafePointer[Image], filename: UnsafePointer[Int8]
) -> Bool
alias c_raylib_ExportImageToMemory = fn (
    image: UnsafePointer[Image],
    fileTypes: UnsafePointer[Int8],
    fileSize: UnsafePointer[Int32],
) -> UnsafePointer[UInt8]
alias c_raylib_ExportImageAsCode = fn (
    image: UnsafePointer[Image], filename: UnsafePointer[Int8]
) -> Bool

# Image generation functions
alias c_raylib_GenImageColor = fn (
    width: Int32, height: Int32, color: UnsafePointer[Color]
) -> Image
alias c_raylib_GenImageGradientLinear = fn (
    width: Int32,
    height: Int32,
    direction: Int32,
    start: UnsafePointer[Color],
    end: UnsafePointer[Color],
) -> Image
alias c_raylib_GenImageGradientRadial = fn (
    width: Int32,
    height: Int32,
    density: Float32,
    inner: UnsafePointer[Color],
    outer: UnsafePointer[Color],
) -> Image
alias c_raylib_GenImageGradientSquare = fn (
    width: Int32,
    height: Int32,
    density: Float32,
    inner: UnsafePointer[Color],
    outer: UnsafePointer[Color],
) -> Image
alias c_raylib_GenImageChecked = fn (
    width: Int32,
    height: Int32,
    checksX: Int32,
    checksY: Int32,
    col1: UnsafePointer[Color],
    col2: UnsafePointer[Color],
) -> Image
alias c_raylib_GenImageWhiteNoise = fn (
    width: Int32, height: Int32, factor: Float32
) -> Image
alias c_raylib_GenImagePerlinNoise = fn (
    width: Int32, height: Int32, offsetX: Int32, offsetY: Int32, scale: Float32
) -> Image
alias c_raylib_GenImageCellular = fn (
    width: Int32, height: Int32, tileSize: Int32
) -> Image
alias c_raylib_GenImageText = fn (
    width: Int32, height: Int32, text: UnsafePointer[Int8]
) -> Image

# Image manipulation functions
alias c_raylib_ImageCopy = fn (image: UnsafePointer[Image]) -> Image
alias c_raylib_ImageFromImage = fn (
    image: UnsafePointer[Image], rec: UnsafePointer[Rectangle]
) -> Image
alias c_raylib_ImageText = fn (
    text: UnsafePointer[Int8], fontSize: Int32, color: UnsafePointer[Color]
) -> Image
alias c_raylib_ImageTextEx = fn (
    font: UnsafePointer[Font],
    text: UnsafePointer[Int8],
    fontSize: Float32,
    spacing: Float32,
    tint: UnsafePointer[Color],
) -> Image
alias c_raylib_ImageFormat = fn (
    image: UnsafePointer[Image], newFormat: Int32
) -> None
alias c_raylib_ImageToPOT = fn (
    image: UnsafePointer[Image], fill: UnsafePointer[Color]
) -> None
alias c_raylib_ImageCrop = fn (
    image: UnsafePointer[Image], crop: UnsafePointer[Rectangle]
) -> None
alias c_raylib_ImageAlphaCrop = fn (
    image: UnsafePointer[Image], threshold: Float32
) -> None
alias c_raylib_ImageAlphaClear = fn (
    image: UnsafePointer[Image], color: UnsafePointer[Color], threshold: Float32
) -> None
alias c_raylib_ImageAlphaMask = fn (
    image: UnsafePointer[Image], alphaMask: UnsafePointer[Image]
) -> None
alias c_raylib_ImageAlphaPremultiply = fn (image: UnsafePointer[Image]) -> None
alias c_raylib_ImageBlurGaussian = fn (
    image: UnsafePointer[Image], blurSize: Int32
) -> None
alias c_raylib_ImageResize = fn (
    image: UnsafePointer[Image], newWidth: Int32, newHeight: Int32
) -> None
alias c_raylib_ImageResizeNN = fn (
    image: UnsafePointer[Image], newWidth: Int32, newHeight: Int32
) -> None
alias c_raylib_ImageResizeCanvas = fn (
    image: UnsafePointer[Image],
    newWidth: Int32,
    newHeight: Int32,
    offsetX: Int32,
    offsetY: Int32,
    fill: UnsafePointer[Color],
) -> None
alias c_raylib_ImageMipmaps = fn (image: UnsafePointer[Image]) -> None
alias c_raylib_ImageDither = fn (
    image: UnsafePointer[Image],
    rBpp: Int32,
    gBpp: Int32,
    bBpp: Int32,
    aBpp: Int32,
) -> None
alias c_raylib_ImageFlipVertical = fn (image: UnsafePointer[Image]) -> None
alias c_raylib_ImageFlipHorizontal = fn (image: UnsafePointer[Image]) -> None
alias c_raylib_ImageRotate = fn (
    image: UnsafePointer[Image], degrees: Int32
) -> None
alias c_raylib_ImageRotateCW = fn (image: UnsafePointer[Image]) -> None
alias c_raylib_ImageRotateCCW = fn (image: UnsafePointer[Image]) -> None
alias c_raylib_ImageColorTint = fn (
    image: UnsafePointer[Image], color: UnsafePointer[Color]
) -> None
alias c_raylib_ImageColorInvert = fn (image: UnsafePointer[Image]) -> None
alias c_raylib_ImageColorGrayscale = fn (image: UnsafePointer[Image]) -> None
alias c_raylib_ImageColorContrast = fn (
    image: UnsafePointer[Image], contrast: Float32
) -> None
alias c_raylib_ImageColorBrightness = fn (
    image: UnsafePointer[Image], brightness: Int32
) -> None
alias c_raylib_ImageColorReplace = fn (
    image: UnsafePointer[Image],
    color: UnsafePointer[Color],
    replace: UnsafePointer[Color],
) -> None
alias c_raylib_LoadImageColors = fn (
    image: UnsafePointer[Image]
) -> UnsafePointer[Color]
alias c_raylib_LoadImagePalette = fn (
    image: UnsafePointer[Image],
    maxPaletteSize: Int32,
    colorCount: UnsafePointer[Int32],
) -> UnsafePointer[Color]
alias c_raylib_UnloadImageColors = fn (colors: UnsafePointer[Color]) -> None
alias c_raylib_UnloadImagePalette = fn (colors: UnsafePointer[Color]) -> None
alias c_raylib_GetImageAlphaBorder = fn (
    image: UnsafePointer[Image], threshold: Float32
) -> Rectangle
alias c_raylib_GetImageColor = fn (
    image: UnsafePointer[Image], x: Int32, y: Int32
) -> Color

# Image drawing functions
alias c_raylib_ImageClearBackground = fn (
    dst: UnsafePointer[Image], color: UnsafePointer[Color]
) -> None
alias c_raylib_ImageDrawPixel = fn (
    dst: UnsafePointer[Image],
    posX: Int32,
    posY: Int32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_ImageDrawPixelV = fn (
    dst: UnsafePointer[Image],
    position: UnsafePointer[Vector2],
    color: UnsafePointer[Color],
) -> None
alias c_raylib_ImageDrawLine = fn (
    dst: UnsafePointer[Image],
    startPosX: Int32,
    startPosY: Int32,
    endPosX: Int32,
    endPosY: Int32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_ImageDrawLineV = fn (
    dst: UnsafePointer[Image],
    start: UnsafePointer[Vector2],
    end: UnsafePointer[Vector2],
    color: UnsafePointer[Color],
) -> None
alias c_raylib_ImageDrawCircle = fn (
    dst: UnsafePointer[Image],
    centerX: Int32,
    centerY: Int32,
    radius: Int32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_ImageDrawCircleV = fn (
    dst: UnsafePointer[Image],
    center: UnsafePointer[Vector2],
    radius: Int32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_ImageDrawCircleLines = fn (
    dst: UnsafePointer[Image],
    centerX: Int32,
    centerY: Int32,
    radius: Int32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_ImageDrawCircleLinesV = fn (
    dst: UnsafePointer[Image],
    center: UnsafePointer[Vector2],
    radius: Int32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_ImageDrawRectangle = fn (
    dst: UnsafePointer[Image],
    posX: Int32,
    posY: Int32,
    width: Int32,
    height: Int32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_ImageDrawRectangleV = fn (
    dst: UnsafePointer[Image],
    position: UnsafePointer[Vector2],
    size: UnsafePointer[Vector2],
    color: UnsafePointer[Color],
) -> None
alias c_raylib_ImageDrawRectangleRec = fn (
    dst: UnsafePointer[Image],
    rec: UnsafePointer[Rectangle],
    color: UnsafePointer[Color],
) -> None
alias c_raylib_ImageDrawRectangleLines = fn (
    dst: UnsafePointer[Image],
    rec: UnsafePointer[Rectangle],
    thick: Int32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_ImageDraw = fn (
    dst: UnsafePointer[Image],
    src: UnsafePointer[Image],
    srcRec: UnsafePointer[Rectangle],
    dstRec: UnsafePointer[Rectangle],
    tint: UnsafePointer[Color],
) -> None
alias c_raylib_ImageDrawText = fn (
    dst: UnsafePointer[Image],
    text: UnsafePointer[Int8],
    posX: Int32,
    posY: Int32,
    fontSize: Int32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_ImageDrawTextEx = fn (
    dst: UnsafePointer[Image],
    font: UnsafePointer[Font],
    text: UnsafePointer[Int8],
    position: UnsafePointer[Vector2],
    fontSize: Float32,
    spacing: Float32,
    tint: UnsafePointer[Color],
) -> None

# Texture loading functions
# NOTE: These functions require GPU access
alias c_raylib_LoadTexture = fn (fileName: UnsafePointer[Int8]) -> Texture2D
alias c_raylib_LoadTextureFromImage = fn (
    image: UnsafePointer[Image]
) -> Texture2D
alias c_raylib_LoadTextureCubemap = fn (
    image: UnsafePointer[Image], layout: Int32
) -> TextureCubemap
alias c_raylib_LoadRenderTexture = fn (
    width: Int32, height: Int32
) -> RenderTexture2D
alias c_raylib_IsTextureReady = fn (texture: UnsafePointer[Texture2D]) -> Bool
alias c_raylib_UnloadTexture = fn (texture: UnsafePointer[Texture2D]) -> None
alias c_raylib_IsRenderTextureReady = fn (
    target: UnsafePointer[RenderTexture2D]
) -> Bool
alias c_raylib_UnloadRenderTexture = fn (
    target: UnsafePointer[RenderTexture2D]
) -> None
alias c_raylib_UpdateTexture = fn (
    texture: UnsafePointer[Texture2D], pixels: UnsafePointer[NoneType]
) -> None
alias c_raylib_UpdateTextureRec = fn (
    texture: UnsafePointer[Texture2D],
    rec: UnsafePointer[Rectangle],
    pixels: UnsafePointer[NoneType],
) -> None

# Texture configuration functions
alias c_raylib_GenTextureMipmaps = fn (
    texture: UnsafePointer[Texture2D]
) -> None
alias c_raylib_SetTextureFilter = fn (
    texture: UnsafePointer[Texture2D], filterMode: Int32
) -> None
alias c_raylib_SetTextureWrap = fn (
    texture: UnsafePointer[Texture2D], wrapMode: Int32
) -> None

# Texture Drawing functions
alias c_raylib_DrawTexture = fn (
    texture: UnsafePointer[Texture2D],
    posX: Int32,
    posY: Int32,
    tint: UnsafePointer[Color],
) -> None
alias c_raylib_DrawTextureV = fn (
    texture: UnsafePointer[Texture2D],
    position: UnsafePointer[Vector2],
    tint: UnsafePointer[Color],
) -> None
alias c_raylib_DrawTextureEx = fn (
    texture: UnsafePointer[Texture2D],
    position: UnsafePointer[Vector2],
    rotation: Float32,
    scale: Float32,
    tint: UnsafePointer[Color],
) -> None
alias c_raylib_DrawTextureRec = fn (
    texture: UnsafePointer[Texture2D],
    source: UnsafePointer[Rectangle],
    position: UnsafePointer[Vector2],
    tint: UnsafePointer[Color],
) -> None
alias c_raylib_DrawTexturePro = fn (
    texture: UnsafePointer[Texture2D],
    source: UnsafePointer[Rectangle],
    dest: UnsafePointer[Rectangle],
    origin: UnsafePointer[Vector2],
    rotation: Float32,
    tint: UnsafePointer[Color],
) -> None
alias c_raylib_DrawTextureNPatch = fn (
    texture: UnsafePointer[Texture2D],
    nPatchInfo: UnsafePointer[NPatchInfo],
    dest: UnsafePointer[Rectangle],
    origin: UnsafePointer[Vector2],
    rotation: Float32,
    tint: UnsafePointer[Color],
) -> None

# Color/pixel related functions
alias c_raylib_Fade = fn (color: UnsafePointer[Color], alpha: Float32) -> Color
alias c_raylib_ColorToInt = fn (color: UnsafePointer[Color]) -> Int32
alias c_raylib_ColorNormalize = fn (color: UnsafePointer[Color]) -> Vector4
alias c_raylib_ColorFromNormalized = fn (
    normalized: UnsafePointer[Vector4]
) -> Color
alias c_raylib_ColorToHSV = fn (color: UnsafePointer[Color]) -> Vector3
alias c_raylib_ColorFromHSV = fn (
    hue: Float32, saturation: Float32, value: Float32
) -> Color
alias c_raylib_ColorTint = fn (
    color: UnsafePointer[Color], tint: UnsafePointer[Color]
) -> Color
alias c_raylib_ColorBrightness = fn (
    color: UnsafePointer[Color], factor: Float32
) -> Color
alias c_raylib_ColorContrast = fn (
    color: UnsafePointer[Color], contrast: Float32
) -> Color
alias c_raylib_ColorAlpha = fn (
    color: UnsafePointer[Color], alpha: Float32
) -> Color
alias c_raylib_ColorAlphaBlend = fn (
    dst: UnsafePointer[Color],
    src: UnsafePointer[Color],
    tint: UnsafePointer[Color],
) -> Color
alias c_raylib_GetColor = fn (hexValue: UInt32) -> Color
alias c_raylib_GetPixelColor = fn (
    srcPtr: UnsafePointer[NoneType], format: Int32
) -> Color
alias c_raylib_SetPixelColor = fn (
    dstPtr: UnsafePointer[NoneType], color: UnsafePointer[Color], format: Int32
) -> None
alias c_raylib_GetPixelDataSize = fn (
    width: Int32, height: Int32, format: Int32
) -> Int32


@value
struct RayLibTextures:
    var _load_image: c_raylib_LoadImage
    var _load_image_raw: c_raylib_LoadImageRaw
    var _load_image_svg: c_raylib_LoadImageSvg
    var _load_image_anim: c_raylib_LoadImageAnim
    var _load_image_from_memory: c_raylib_LoadImageFromMemory
    var _load_image_from_texture: c_raylib_LoadImageFromTexture
    var _load_image_from_screen: c_raylib_LoadImageFromScreen
    var _is_image_ready: c_raylib_IsImageReady
    var _unload_image: c_raylib_UnloadImage
    var _export_image: c_raylib_ExportImage
    var _export_image_to_memory: c_raylib_ExportImageToMemory
    var _export_image_as_code: c_raylib_ExportImageAsCode

    var _gen_image_color: c_raylib_GenImageColor
    var _gen_image_gradient_linear: c_raylib_GenImageGradientLinear
    var _gen_image_gradient_radial: c_raylib_GenImageGradientRadial
    var _gen_image_gradient_square: c_raylib_GenImageGradientSquare
    var _gen_image_checked: c_raylib_GenImageChecked
    var _gen_image_white_noise: c_raylib_GenImageWhiteNoise
    var _gen_image_perlin_noise: c_raylib_GenImagePerlinNoise
    var _gen_image_cellular: c_raylib_GenImageCellular
    var _gen_image_text: c_raylib_GenImageText

    var _image_copy: c_raylib_ImageCopy
    var _image_from_image: c_raylib_ImageFromImage
    var _image_text: c_raylib_ImageText
    var _image_text_ex: c_raylib_ImageTextEx
    var _image_format: c_raylib_ImageFormat
    var _image_to_pot: c_raylib_ImageToPOT
    var _image_crop: c_raylib_ImageCrop
    var _image_alpha_crop: c_raylib_ImageAlphaCrop
    var _image_alpha_clear: c_raylib_ImageAlphaClear
    var _image_alpha_mask: c_raylib_ImageAlphaMask
    var _image_alpha_premultiply: c_raylib_ImageAlphaPremultiply
    var _image_blur_gaussian: c_raylib_ImageBlurGaussian
    var _image_resize: c_raylib_ImageResize
    var _image_resize_nn: c_raylib_ImageResizeNN
    var _image_resize_canvas: c_raylib_ImageResizeCanvas
    var _image_mipmaps: c_raylib_ImageMipmaps
    var _image_dither: c_raylib_ImageDither
    var _image_flip_vertical: c_raylib_ImageFlipVertical
    var _image_flip_horizontal: c_raylib_ImageFlipHorizontal
    var _image_rotate: c_raylib_ImageRotate
    var _image_rotate_cw: c_raylib_ImageRotateCW
    var _image_rotate_ccw: c_raylib_ImageRotateCCW
    var _image_color_tint: c_raylib_ImageColorTint
    var _image_color_invert: c_raylib_ImageColorInvert
    var _image_color_grayscale: c_raylib_ImageColorGrayscale
    var _image_color_contrast: c_raylib_ImageColorContrast
    var _image_color_brightness: c_raylib_ImageColorBrightness
    var _image_color_replace: c_raylib_ImageColorReplace
    var _load_image_colors: c_raylib_LoadImageColors
    var _load_image_palette: c_raylib_LoadImagePalette
    var _unload_image_colors: c_raylib_UnloadImageColors
    var _unload_image_palette: c_raylib_UnloadImagePalette
    var _get_image_alpha_border: c_raylib_GetImageAlphaBorder
    var _get_image_color: c_raylib_GetImageColor

    var _image_clear_background: c_raylib_ImageClearBackground
    var _image_draw_pixel: c_raylib_ImageDrawPixel
    var _image_draw_pixel_v: c_raylib_ImageDrawPixelV
    var _image_draw_line: c_raylib_ImageDrawLine
    var _image_draw_line_v: c_raylib_ImageDrawLineV
    var _image_draw_circle: c_raylib_ImageDrawCircle
    var _image_draw_circle_v: c_raylib_ImageDrawCircleV
    var _image_draw_circle_lines: c_raylib_ImageDrawCircleLines
    var _image_draw_circle_lines_v: c_raylib_ImageDrawCircleLinesV
    var _image_draw_rectangle: c_raylib_ImageDrawRectangle
    var _image_draw_rectangle_v: c_raylib_ImageDrawRectangleV
    var _image_draw_rectangle_rec: c_raylib_ImageDrawRectangleRec
    var _image_draw_rectangle_lines: c_raylib_ImageDrawRectangleLines
    var _image_draw: c_raylib_ImageDraw
    var _image_draw_text: c_raylib_ImageDrawText
    var _image_draw_text_ex: c_raylib_ImageDrawTextEx

    var _load_texture: c_raylib_LoadTexture
    var _load_texture_from_image: c_raylib_LoadTextureFromImage
    var _load_texture_cubemap: c_raylib_LoadTextureCubemap
    var _load_render_texture: c_raylib_LoadRenderTexture
    var _is_texture_ready: c_raylib_IsTextureReady
    var _unload_texture: c_raylib_UnloadTexture
    var _is_render_texture_ready: c_raylib_IsRenderTextureReady
    var _unload_render_texture: c_raylib_UnloadRenderTexture
    var _update_texture: c_raylib_UpdateTexture
    var _update_texture_rec: c_raylib_UpdateTextureRec

    var _gen_texture_mipmaps: c_raylib_GenTextureMipmaps
    var _set_texture_filter: c_raylib_SetTextureFilter
    var _set_texture_wrap: c_raylib_SetTextureWrap

    var _draw_texture: c_raylib_DrawTexture
    var _draw_texture_v: c_raylib_DrawTextureV
    var _draw_texture_ex: c_raylib_DrawTextureEx
    var _draw_texture_rec: c_raylib_DrawTextureRec
    var _draw_texture_pro: c_raylib_DrawTexturePro
    var _draw_texture_n_patch: c_raylib_DrawTextureNPatch

    var _fade: c_raylib_Fade
    var _color_to_int: c_raylib_ColorToInt
    var _color_normalize: c_raylib_ColorNormalize
    var _color_from_normalized: c_raylib_ColorFromNormalized
    var _color_to_hsv: c_raylib_ColorToHSV
    var _color_from_hsv: c_raylib_ColorFromHSV
    var _color_tint: c_raylib_ColorTint
    var _color_brightness: c_raylib_ColorBrightness
    var _color_contrast: c_raylib_ColorContrast
    var _color_alpha: c_raylib_ColorAlpha
    var _color_alpha_blend: c_raylib_ColorAlphaBlend
    var _get_color: c_raylib_GetColor
    var _get_pixel_color: c_raylib_GetPixelColor
    var _set_pixel_color: c_raylib_SetPixelColor
    var _get_pixel_data_size: c_raylib_GetPixelDataSize

    fn __init__(
        inout self,
        raylib_internal: DLHandle,
        raylib_bindings_internal: DLHandle,
    ):
        # Image loading functions
        self._load_image = raylib_internal.get_function[c_raylib_LoadImage](
            "LoadImage"
        )
        self._load_image_raw = raylib_internal.get_function[
            c_raylib_LoadImageRaw
        ]("LoadImageRaw")
        self._load_image_svg = raylib_internal.get_function[
            c_raylib_LoadImageSvg
        ]("LoadImageSvg")
        self._load_image_anim = raylib_internal.get_function[
            c_raylib_LoadImageAnim
        ]("LoadImageAnim")
        self._load_image_from_memory = raylib_internal.get_function[
            c_raylib_LoadImageFromMemory
        ]("LoadImageFromMemory")
        self._load_image_from_texture = raylib_bindings_internal.get_function[
            c_raylib_LoadImageFromTexture
        ]("_LoadImageFromTexture")
        self._load_image_from_screen = raylib_internal.get_function[
            c_raylib_LoadImageFromScreen
        ]("LoadImageFromScreen")
        self._is_image_ready = raylib_bindings_internal.get_function[
            c_raylib_IsImageReady
        ]("_IsImageReady")
        self._unload_image = raylib_bindings_internal.get_function[
            c_raylib_UnloadImage
        ]("_UnloadImage")
        self._export_image = raylib_bindings_internal.get_function[
            c_raylib_ExportImage
        ]("_ExportImage")
        self._export_image_to_memory = raylib_bindings_internal.get_function[
            c_raylib_ExportImageToMemory
        ]("_ExportImageToMemory")
        self._export_image_as_code = raylib_bindings_internal.get_function[
            c_raylib_ExportImageAsCode
        ]("_ExportImageAsCode")

        # Image generation functions
        self._gen_image_color = raylib_bindings_internal.get_function[
            c_raylib_GenImageColor
        ]("_GenImageColor")
        self._gen_image_gradient_linear = raylib_bindings_internal.get_function[
            c_raylib_GenImageGradientLinear
        ]("_GenImageGradientLinear")
        self._gen_image_gradient_radial = raylib_bindings_internal.get_function[
            c_raylib_GenImageGradientRadial
        ]("_GenImageGradientRadial")
        self._gen_image_gradient_square = raylib_bindings_internal.get_function[
            c_raylib_GenImageGradientSquare
        ]("_GenImageGradientSquare")
        self._gen_image_checked = raylib_bindings_internal.get_function[
            c_raylib_GenImageChecked
        ]("_GenImageChecked")
        self._gen_image_white_noise = raylib_internal.get_function[
            c_raylib_GenImageWhiteNoise
        ]("GenImageWhiteNoise")
        self._gen_image_perlin_noise = raylib_internal.get_function[
            c_raylib_GenImagePerlinNoise
        ]("GenImagePerlinNoise")
        self._gen_image_cellular = raylib_internal.get_function[
            c_raylib_GenImageCellular
        ]("GenImageCellular")
        self._gen_image_text = raylib_internal.get_function[
            c_raylib_GenImageText
        ]("GenImageText")

        # Image manipulation functions
        self._image_copy = raylib_bindings_internal.get_function[
            c_raylib_ImageCopy
        ]("_ImageCopy")
        self._image_from_image = raylib_bindings_internal.get_function[
            c_raylib_ImageFromImage
        ]("_ImageFromImage")
        self._image_text = raylib_internal.get_function[c_raylib_ImageText](
            "ImageText"
        )
        self._image_text_ex = raylib_internal.get_function[
            c_raylib_ImageTextEx
        ]("ImageTextEx")
        self._image_format = raylib_internal.get_function[c_raylib_ImageFormat](
            "ImageFormat"
        )
        self._image_to_pot = raylib_bindings_internal.get_function[
            c_raylib_ImageToPOT
        ]("_ImageToPOT")
        self._image_crop = raylib_bindings_internal.get_function[
            c_raylib_ImageCrop
        ]("_ImageCrop")
        self._image_alpha_crop = raylib_internal.get_function[
            c_raylib_ImageAlphaCrop
        ]("ImageAlphaCrop")
        self._image_alpha_clear = raylib_bindings_internal.get_function[
            c_raylib_ImageAlphaClear
        ]("_ImageAlphaClear")
        self._image_alpha_mask = raylib_bindings_internal.get_function[
            c_raylib_ImageAlphaMask
        ]("_ImageAlphaMask")
        self._image_alpha_premultiply = raylib_internal.get_function[
            c_raylib_ImageAlphaPremultiply
        ]("ImageAlphaPremultiply")
        self._image_blur_gaussian = raylib_internal.get_function[
            c_raylib_ImageBlurGaussian
        ]("ImageBlurGaussian")
        self._image_resize = raylib_internal.get_function[c_raylib_ImageResize](
            "ImageResize"
        )
        self._image_resize_nn = raylib_internal.get_function[
            c_raylib_ImageResizeNN
        ]("ImageResizeNN")
        self._image_resize_canvas = raylib_bindings_internal.get_function[
            c_raylib_ImageResizeCanvas
        ]("_ImageResizeCanvas")
        self._image_mipmaps = raylib_internal.get_function[
            c_raylib_ImageMipmaps
        ]("ImageMipmaps")
        self._image_dither = raylib_internal.get_function[c_raylib_ImageDither](
            "ImageDither"
        )
        self._image_flip_vertical = raylib_internal.get_function[
            c_raylib_ImageFlipVertical
        ]("ImageFlipVertical")
        self._image_flip_horizontal = raylib_internal.get_function[
            c_raylib_ImageFlipHorizontal
        ]("ImageFlipHorizontal")
        self._image_rotate = raylib_internal.get_function[c_raylib_ImageRotate](
            "ImageRotate"
        )
        self._image_rotate_cw = raylib_internal.get_function[
            c_raylib_ImageRotateCW
        ]("ImageRotateCW")
        self._image_rotate_ccw = raylib_internal.get_function[
            c_raylib_ImageRotateCCW
        ]("ImageRotateCCW")
        self._image_color_tint = raylib_bindings_internal.get_function[
            c_raylib_ImageColorTint
        ]("_ImageColorTint")
        self._image_color_invert = raylib_internal.get_function[
            c_raylib_ImageColorInvert
        ]("ImageColorInvert")
        self._image_color_grayscale = raylib_internal.get_function[
            c_raylib_ImageColorGrayscale
        ]("ImageColorGrayscale")
        self._image_color_contrast = raylib_internal.get_function[
            c_raylib_ImageColorContrast
        ]("ImageColorContrast")
        self._image_color_brightness = raylib_internal.get_function[
            c_raylib_ImageColorBrightness
        ]("ImageColorBrightness")
        self._image_color_replace = raylib_bindings_internal.get_function[
            c_raylib_ImageColorReplace
        ]("_ImageColorReplace")
        self._load_image_colors = raylib_bindings_internal.get_function[
            c_raylib_LoadImageColors
        ]("_LoadImageColors")
        self._load_image_palette = raylib_bindings_internal.get_function[
            c_raylib_LoadImagePalette
        ]("_LoadImagePalette")
        self._unload_image_colors = raylib_internal.get_function[
            c_raylib_UnloadImageColors
        ]("UnloadImageColors")
        self._unload_image_palette = raylib_internal.get_function[
            c_raylib_UnloadImagePalette
        ]("UnloadImagePalette")
        self._get_image_alpha_border = raylib_bindings_internal.get_function[
            c_raylib_GetImageAlphaBorder
        ]("_GetImageAlphaBorder")
        self._get_image_color = raylib_bindings_internal.get_function[
            c_raylib_GetImageColor
        ]("_GetImageColor")

        # Image drawing functions
        self._image_clear_background = raylib_bindings_internal.get_function[
            c_raylib_ImageClearBackground
        ]("_ImageClearBackground")
        self._image_draw_pixel = raylib_bindings_internal.get_function[
            c_raylib_ImageDrawPixel
        ]("_ImageDrawPixel")
        self._image_draw_pixel_v = raylib_bindings_internal.get_function[
            c_raylib_ImageDrawPixelV
        ]("_ImageDrawPixelV")
        self._image_draw_line = raylib_bindings_internal.get_function[
            c_raylib_ImageDrawLine
        ]("_ImageDrawLine")
        self._image_draw_line_v = raylib_bindings_internal.get_function[
            c_raylib_ImageDrawLineV
        ]("_ImageDrawLineV")
        self._image_draw_circle = raylib_bindings_internal.get_function[
            c_raylib_ImageDrawCircle
        ]("_ImageDrawCircle")
        self._image_draw_circle_v = raylib_bindings_internal.get_function[
            c_raylib_ImageDrawCircleV
        ]("_ImageDrawCircleV")
        self._image_draw_circle_lines = raylib_bindings_internal.get_function[
            c_raylib_ImageDrawCircleLines
        ]("_ImageDrawCircleLines")
        self._image_draw_circle_lines_v = raylib_bindings_internal.get_function[
            c_raylib_ImageDrawCircleLinesV
        ]("_ImageDrawCircleLinesV")
        self._image_draw_rectangle = raylib_bindings_internal.get_function[
            c_raylib_ImageDrawRectangle
        ]("_ImageDrawRectangle")
        self._image_draw_rectangle_v = raylib_bindings_internal.get_function[
            c_raylib_ImageDrawRectangleV
        ]("_ImageDrawRectangleV")
        self._image_draw_rectangle_rec = raylib_bindings_internal.get_function[
            c_raylib_ImageDrawRectangleRec
        ]("_ImageDrawRectangleRec")
        self._image_draw_rectangle_lines = (
            raylib_bindings_internal.get_function[
                c_raylib_ImageDrawRectangleLines
            ]("_ImageDrawRectangleLines")
        )
        self._image_draw = raylib_bindings_internal.get_function[
            c_raylib_ImageDraw
        ]("_ImageDraw")
        self._image_draw_text = raylib_bindings_internal.get_function[
            c_raylib_ImageDrawText
        ]("_ImageDrawText")
        self._image_draw_text_ex = raylib_bindings_internal.get_function[
            c_raylib_ImageDrawTextEx
        ]("_ImageDrawTextEx")

        # Texture loading functions
        self._load_texture = raylib_internal.get_function[c_raylib_LoadTexture](
            "LoadTexture"
        )
        self._load_texture_from_image = raylib_bindings_internal.get_function[
            c_raylib_LoadTextureFromImage
        ]("_LoadTextureFromImage")
        self._load_texture_cubemap = raylib_bindings_internal.get_function[
            c_raylib_LoadTextureCubemap
        ]("_LoadTextureCubemap")
        self._load_render_texture = raylib_internal.get_function[
            c_raylib_LoadRenderTexture
        ]("LoadRenderTexture")
        self._is_texture_ready = raylib_bindings_internal.get_function[
            c_raylib_IsTextureReady
        ]("_IsTextureReady")
        self._unload_texture = raylib_bindings_internal.get_function[
            c_raylib_UnloadTexture
        ]("_UnloadTexture")
        self._is_render_texture_ready = raylib_bindings_internal.get_function[
            c_raylib_IsRenderTextureReady
        ]("_IsRenderTextureReady")
        self._unload_render_texture = raylib_bindings_internal.get_function[
            c_raylib_UnloadRenderTexture
        ]("_UnloadRenderTexture")
        self._update_texture = raylib_bindings_internal.get_function[
            c_raylib_UpdateTexture
        ]("_UpdateTexture")
        self._update_texture_rec = raylib_bindings_internal.get_function[
            c_raylib_UpdateTextureRec
        ]("_UpdateTextureRec")

        # Texture configuration functions
        self._gen_texture_mipmaps = raylib_internal.get_function[
            c_raylib_GenTextureMipmaps
        ]("GenTextureMipmaps")
        self._set_texture_filter = raylib_bindings_internal.get_function[
            c_raylib_SetTextureFilter
        ]("_SetTextureFilter")
        self._set_texture_wrap = raylib_bindings_internal.get_function[
            c_raylib_SetTextureWrap
        ]("_SetTextureWrap")

        # Texture drawing functions
        self._draw_texture = raylib_bindings_internal.get_function[
            c_raylib_DrawTexture
        ]("_DrawTexture")
        self._draw_texture_v = raylib_bindings_internal.get_function[
            c_raylib_DrawTextureV
        ]("_DrawTextureV")
        self._draw_texture_ex = raylib_bindings_internal.get_function[
            c_raylib_DrawTextureEx
        ]("_DrawTextureEx")
        self._draw_texture_rec = raylib_bindings_internal.get_function[
            c_raylib_DrawTextureRec
        ]("_DrawTextureRec")
        self._draw_texture_pro = raylib_bindings_internal.get_function[
            c_raylib_DrawTexturePro
        ]("_DrawTexturePro")
        self._draw_texture_n_patch = raylib_bindings_internal.get_function[
            c_raylib_DrawTextureNPatch
        ]("_DrawTextureNPatch")

        # Color/pixel related functions
        self._fade = raylib_bindings_internal.get_function[c_raylib_Fade](
            "_Fade"
        )
        self._color_to_int = raylib_bindings_internal.get_function[
            c_raylib_ColorToInt
        ]("_ColorToInt")
        self._color_normalize = raylib_bindings_internal.get_function[
            c_raylib_ColorNormalize
        ]("_ColorNormalize")
        self._color_from_normalized = raylib_bindings_internal.get_function[
            c_raylib_ColorFromNormalized
        ]("_ColorFromNormalized")
        self._color_to_hsv = raylib_bindings_internal.get_function[
            c_raylib_ColorToHSV
        ]("_ColorToHSV")
        self._color_from_hsv = raylib_internal.get_function[
            c_raylib_ColorFromHSV
        ]("ColorFromHSV")
        self._color_tint = raylib_bindings_internal.get_function[
            c_raylib_ColorTint
        ]("_ColorTint")
        self._color_brightness = raylib_bindings_internal.get_function[
            c_raylib_ColorBrightness
        ]("_ColorBrightness")
        self._color_contrast = raylib_bindings_internal.get_function[
            c_raylib_ColorContrast
        ]("_ColorContrast")
        self._color_alpha = raylib_bindings_internal.get_function[
            c_raylib_ColorAlpha
        ]("_ColorAlpha")
        self._color_alpha_blend = raylib_bindings_internal.get_function[
            c_raylib_ColorAlphaBlend
        ]("_ColorAlphaBlend")
        self._get_color = raylib_internal.get_function[c_raylib_GetColor](
            "GetColor"
        )
        self._get_pixel_color = raylib_bindings_internal.get_function[
            c_raylib_GetPixelColor
        ]("_GetPixelColor")
        self._set_pixel_color = raylib_bindings_internal.get_function[
            c_raylib_SetPixelColor
        ]("_SetPixelColor")
        self._get_pixel_data_size = raylib_internal.get_function[
            c_raylib_GetPixelDataSize
        ]("GetPixelDataSize")

    fn load_image(self, file_name: String) -> Image:
        return self._load_image(file_name.unsafe_ptr())

    fn load_image_raw(
        self,
        file_name: String,
        width: Int32,
        height: Int32,
        format: Int32,
        headerSize: Int32,
    ) -> Image:
        return self._load_image_raw(
            file_name.unsafe_ptr(),
            width,
            height,
            format,
            headerSize,
        )

    fn load_image_svg(
        self, file_name_or_string: String, width: Int32, height: Int32
    ) -> Image:
        return self._load_image_svg(
            file_name_or_string.unsafe_ptr(), width, height
        )

    fn load_image_anim(
        self, file_name: String, frames: UnsafePointer[Int32]
    ) -> Image:
        return self._load_image_anim(file_name.unsafe_ptr(), frames)

    fn load_image_from_memory(
        self,
        file_type: String,
        file_data: UnsafePointer[UInt8],
        data_size: Int32,
    ) -> Image:
        return self._load_image_from_memory(
            file_type.unsafe_ptr(),
            file_data,
            data_size,
        )

    fn load_image_from_texture(self, owned texture: Texture2D) -> Image:
        return self._load_image_from_texture(UnsafePointer.address_of(texture))

    fn load_image_from_screen(self) -> Image:
        return self._load_image_from_screen()

    fn is_image_ready(self, owned image: Image) -> Bool:
        return self._is_image_ready(UnsafePointer.address_of(image))

    fn unload_image(self, owned image: Image) -> None:
        self._unload_image(UnsafePointer.address_of(image))

    fn export_image(self, owned image: Image, file_name: String) -> Bool:
        return self._export_image(
            UnsafePointer.address_of(image), file_name.unsafe_ptr()
        )

    fn export_image_to_memory(
        self,
        owned image: Image,
        file_type: String,
        file_size: UnsafePointer[Int32],
    ) -> UnsafePointer[UInt8]:
        return self._export_image_to_memory(
            UnsafePointer.address_of(image), file_type.unsafe_ptr(), file_size
        )

    fn export_image_as_code(
        self, owned image: Image, file_name: String
    ) -> Bool:
        return self._export_image_as_code(
            UnsafePointer.address_of(image), file_name.unsafe_ptr()
        )

    fn gen_image_color(
        self, width: Int32, height: Int32, owned color: Color
    ) -> Image:
        return self._gen_image_color(
            width, height, UnsafePointer.address_of(color)
        )

    fn gen_image_gradient_linear(
        self,
        width: Int32,
        height: Int32,
        direction: Int32,
        owned start: Color,
        owned end: Color,
    ) -> Image:
        return self._gen_image_gradient_linear(
            width,
            height,
            direction,
            UnsafePointer.address_of(start),
            UnsafePointer.address_of(end),
        )

    fn gen_image_gradient_radial(
        self,
        width: Int32,
        height: Int32,
        radius: Float32,
        owned inner: Color,
        owned outer: Color,
    ) -> Image:
        return self._gen_image_gradient_radial(
            width,
            height,
            radius,
            UnsafePointer.address_of(inner),
            UnsafePointer.address_of(outer),
        )

    fn gen_image_gradient_square(
        self,
        width: Int32,
        height: Int32,
        offset: Float32,
        owned inner: Color,
        owned outer: Color,
    ) -> Image:
        return self._gen_image_gradient_square(
            width,
            height,
            offset,
            UnsafePointer.address_of(inner),
            UnsafePointer.address_of(outer),
        )

    fn gen_image_checked(
        self,
        width: Int32,
        height: Int32,
        checksX: Int32,
        checksY: Int32,
        owned col1: Color,
        owned col2: Color,
    ) -> Image:
        return self._gen_image_checked(
            width,
            height,
            checksX,
            checksY,
            UnsafePointer.address_of(col1),
            UnsafePointer.address_of(col2),
        )

    fn gen_image_white_noise(
        self, width: Int32, height: Int32, factor: Float32
    ) -> Image:
        return self._gen_image_white_noise(width, height, factor)

    fn gen_image_perlin_noise(
        self,
        width: Int32,
        height: Int32,
        offsetX: Int32,
        offsetY: Int32,
        scale: Float32,
    ) -> Image:
        return self._gen_image_perlin_noise(
            width, height, offsetX, offsetY, scale
        )

    fn gen_image_cellular(
        self,
        width: Int32,
        height: Int32,
        tileSize: Int32,
    ) -> Image:
        return self._gen_image_cellular(width, height, tileSize)

    fn gen_image_text(
        self,
        widht: Int32,
        height: Int32,
        text: String,
    ) -> Image:
        return self._gen_image_text(widht, height, text.unsafe_ptr())

    fn image_copy(self, owned image: Image) -> Image:
        return self._image_copy(UnsafePointer.address_of(image))

    fn image_from_image(
        self, owned image: Image, owned rec: Rectangle
    ) -> Image:
        return self._image_from_image(
            UnsafePointer.address_of(image), UnsafePointer.address_of(rec)
        )

    fn image_text(
        self,
        text: String,
        fontSize: Int32,
        owned color: Color,
    ) -> Image:
        return self._image_text(
            text.unsafe_ptr(),
            fontSize,
            UnsafePointer.address_of(color),
        )

    fn image_text_ex(
        self,
        owned font: Font,
        text: String,
        fontSize: Float32,
        spacing: Float32,
        owned tint: Color,
    ) -> Image:
        return self._image_text_ex(
            UnsafePointer.address_of(font),
            text.unsafe_ptr(),
            fontSize,
            spacing,
            UnsafePointer.address_of(tint),
        )

    fn image_format(self, owned image: Image, newFormat: Int32) -> None:
        self._image_format(UnsafePointer.address_of(image), newFormat)

    fn image_to_pot(self, owned image: Image, owned fill: Color):
        self._image_to_pot(
            UnsafePointer.address_of(image), UnsafePointer.address_of(fill)
        )

    fn image_crop(self, owned image: Image, owned crop: Rectangle):
        self._image_crop(
            UnsafePointer.address_of(image), UnsafePointer.address_of(crop)
        )

    fn image_alpha_crop(self, owned image: Image, threshold: Float32):
        self._image_alpha_crop(UnsafePointer.address_of(image), threshold)

    fn image_alpha_clear(
        self, owned image: Image, owned color: Color, threshold: Float32
    ):
        self._image_alpha_clear(
            UnsafePointer.address_of(image),
            UnsafePointer.address_of(color),
            threshold,
        )

    fn image_alpha_mask(self, owned image: Image, owned alpha_mask: Image):
        self._image_alpha_mask(
            UnsafePointer.address_of(image),
            UnsafePointer.address_of(alpha_mask),
        )

    fn image_alpha_premultiply(self, owned image: Image):
        self._image_alpha_premultiply(UnsafePointer.address_of(image))

    fn image_blur_gaussian(self, owned image: Image, blur_size: Int32):
        self._image_blur_gaussian(UnsafePointer.address_of(image), blur_size)

    fn image_resize(
        self, owned image: Image, new_width: Int32, new_height: Int32
    ):
        self._image_resize(
            UnsafePointer.address_of(image), new_width, new_height
        )

    fn image_resize_nn(
        self, owned image: Image, new_width: Int32, new_height: Int32
    ):
        self._image_resize_nn(
            UnsafePointer.address_of(image), new_width, new_height
        )

    fn image_resize_canvas(
        self,
        owned image: Image,
        new_width: Int32,
        new_height: Int32,
        offset_x: Int32,
        offset_y: Int32,
        owned fill: Color,
    ):
        self._image_resize_canvas(
            UnsafePointer.address_of(image),
            new_width,
            new_height,
            offset_x,
            offset_y,
            UnsafePointer.address_of(fill),
        )

    fn image_mipmaps(self, owned image: Image):
        self._image_mipmaps(UnsafePointer.address_of(image))

    fn image_dither(
        self,
        owned image: Image,
        r_bpp: Int32,
        g_bpp: Int32,
        b_bpp: Int32,
        a_bpp: Int32,
    ):
        self._image_dither(
            UnsafePointer.address_of(image), r_bpp, g_bpp, b_bpp, a_bpp
        )

    fn image_flip_vertical(self, owned image: Image):
        self._image_flip_vertical(UnsafePointer.address_of(image))

    fn image_flip_horizontal(self, owned image: Image):
        self._image_flip_horizontal(UnsafePointer.address_of(image))

    fn image_rotate(self, owned image: Image, degrees: Int32):
        self._image_rotate(UnsafePointer.address_of(image), degrees)

    fn image_rotate_cw(self, owned image: Image):
        self._image_rotate_cw(UnsafePointer.address_of(image))

    fn image_rotate_ccw(self, owned image: Image):
        self._image_rotate_ccw(UnsafePointer.address_of(image))

    fn image_color_tint(self, owned image: Image, owned color: Color):
        self._image_color_tint(
            UnsafePointer.address_of(image), UnsafePointer.address_of(color)
        )

    fn image_color_invert(self, owned image: Image):
        self._image_color_invert(UnsafePointer.address_of(image))

    fn image_color_grayscale(self, owned image: Image):
        self._image_color_grayscale(UnsafePointer.address_of(image))

    fn image_color_contrast(self, owned image: Image, contrast: Float32):
        self._image_color_contrast(UnsafePointer.address_of(image), contrast)

    fn image_color_brightness(self, owned image: Image, brightness: Int32):
        self._image_color_brightness(
            UnsafePointer.address_of(image), brightness
        )

    fn image_color_replace(
        self, owned image: Image, owned color: Color, owned replace: Color
    ):
        self._image_color_replace(
            UnsafePointer.address_of(image),
            UnsafePointer.address_of(color),
            UnsafePointer.address_of(replace),
        )

    fn load_image_colors(self, owned image: Image) -> UnsafePointer[Color]:
        return self._load_image_colors(UnsafePointer.address_of(image))

    fn load_image_palette(
        self,
        owned image: Image,
        maxPaletteSize: Int32,
        colorsCount: UnsafePointer[Int32],
    ) -> UnsafePointer[Color]:
        return self._load_image_palette(
            UnsafePointer.address_of(image), maxPaletteSize, colorsCount
        )

    fn unload_image_colors(self, colors: UnsafePointer[Color]):
        self._unload_image_colors(colors)

    fn unload_image_palette(self, palette: UnsafePointer[Color]):
        self._unload_image_palette(palette)

    fn get_image_alpha_border(
        self, owned image: Image, threshold: Float32
    ) -> Rectangle:
        return self._get_image_alpha_border(
            UnsafePointer.address_of(image), threshold
        )

    fn get_image_color(self, owned image: Image, x: Int32, y: Int32) -> Color:
        return self._get_image_color(UnsafePointer.address_of(image), x, y)

    fn image_clear_background(
        self, owned dst: UnsafePointer[Image], owned color: Color
    ):
        self._image_clear_background(dst, UnsafePointer.address_of(color))

    fn image_draw_pixel(
        self,
        dst: UnsafePointer[Image],
        posX: Int32,
        posY: Int32,
        owned color: Color,
    ):
        self._image_draw_pixel(dst, posX, posY, UnsafePointer.address_of(color))

    fn image_draw_pixel_v(
        self,
        dst: UnsafePointer[Image],
        owned position: Vector2,
        owned color: Color,
    ):
        self._image_draw_pixel_v(
            dst,
            UnsafePointer.address_of(position),
            UnsafePointer.address_of(color),
        )

    fn image_draw_line(
        self,
        dst: UnsafePointer[Image],
        startPosX: Int32,
        startPosY: Int32,
        endPosX: Int32,
        endPosY: Int32,
        owned color: Color,
    ):
        self._image_draw_line(
            dst,
            startPosX,
            startPosY,
            endPosX,
            endPosY,
            UnsafePointer.address_of(color),
        )

    fn image_draw_line_v(
        self,
        dst: UnsafePointer[Image],
        owned start: Vector2,
        owned end: Vector2,
        owned color: Color,
    ):
        self._image_draw_line_v(
            dst,
            UnsafePointer.address_of(start),
            UnsafePointer.address_of(end),
            UnsafePointer.address_of(color),
        )

    fn image_draw_circle(
        self,
        dst: UnsafePointer[Image],
        centerX: Int32,
        centerY: Int32,
        radius: Int32,
        owned color: Color,
    ):
        self._image_draw_circle(
            dst, centerX, centerY, radius, UnsafePointer.address_of(color)
        )

    fn image_draw_circle_v(
        self,
        dst: UnsafePointer[Image],
        owned center: Vector2,
        radius: Int32,
        owned color: Color,
    ):
        self._image_draw_circle_v(
            dst,
            UnsafePointer.address_of(center),
            radius,
            UnsafePointer.address_of(color),
        )

    fn image_draw_circle_lines(
        self,
        dst: UnsafePointer[Image],
        centerX: Int32,
        centerY: Int32,
        radius: Int32,
        owned color: Color,
    ):
        self._image_draw_circle_lines(
            dst, centerX, centerY, radius, UnsafePointer.address_of(color)
        )

    fn image_draw_circle_lines_v(
        self,
        dst: UnsafePointer[Image],
        owned center: Vector2,
        radius: Int32,
        owned color: Color,
    ):
        self._image_draw_circle_lines_v(
            dst,
            UnsafePointer.address_of(center),
            radius,
            UnsafePointer.address_of(color),
        )

    fn image_draw_rectangle(
        self,
        dst: UnsafePointer[Image],
        posX: Int32,
        posY: Int32,
        width: Int32,
        height: Int32,
        owned color: Color,
    ):
        self._image_draw_rectangle(
            dst, posX, posY, width, height, UnsafePointer.address_of(color)
        )

    fn image_draw_rectangle_v(
        self,
        dst: UnsafePointer[Image],
        owned position: Vector2,
        owned size: Vector2,
        owned color: Color,
    ):
        self._image_draw_rectangle_v(
            dst,
            UnsafePointer.address_of(position),
            UnsafePointer.address_of(size),
            UnsafePointer.address_of(color),
        )

    fn image_draw_rectangle_rec(
        self,
        dst: UnsafePointer[Image],
        owned rec: Rectangle,
        owned color: Color,
    ):
        self._image_draw_rectangle_rec(
            dst, UnsafePointer.address_of(rec), UnsafePointer.address_of(color)
        )

    fn image_draw_rectangle_lines(
        self,
        dst: UnsafePointer[Image],
        owned rec: Rectangle,
        thick: Int32,
        owned color: Color,
    ):
        self._image_draw_rectangle_lines(
            dst,
            UnsafePointer.address_of(rec),
            thick,
            UnsafePointer.address_of(color),
        )

    fn image_draw(
        self,
        dst: UnsafePointer[Image],
        owned src: Image,
        owned src_rec: Rectangle,
        owned dst_rec: Rectangle,
        owned tint: Color,
    ):
        self._image_draw(
            dst,
            UnsafePointer.address_of(src),
            UnsafePointer.address_of(src_rec),
            UnsafePointer.address_of(dst_rec),
            UnsafePointer.address_of(tint),
        )

    fn image_draw_text(
        self,
        dst: UnsafePointer[Image],
        text: String,
        posX: Int32,
        posY: Int32,
        fontSize: Int32,
        owned color: Color,
    ):
        self._image_draw_text(
            dst,
            text.unsafe_ptr(),
            posX,
            posY,
            fontSize,
            UnsafePointer.address_of(color),
        )

    fn image_draw_text_ex(
        self,
        dst: UnsafePointer[Image],
        owned font: Font,
        text: String,
        owned position: Vector2,
        fontSize: Float32,
        spacing: Float32,
        owned tint: Color,
    ):
        self._image_draw_text_ex(
            dst,
            UnsafePointer.address_of(font),
            text.unsafe_ptr(),
            UnsafePointer.address_of(position),
            fontSize,
            spacing,
            UnsafePointer.address_of(tint),
        )

    fn load_texture(self, filename: String) -> Texture2D:
        return self._load_texture(filename.unsafe_ptr())

    fn load_texture_from_image(self, owned image: Image) -> Texture2D:
        return self._load_texture_from_image(UnsafePointer.address_of(image))

    fn load_texture_cubemap(
        self,
        owned image: Image,
        layout: Int32,
    ) -> TextureCubemap:
        return self._load_texture_cubemap(
            UnsafePointer.address_of(image),
            layout,
        )

    fn load_render_texture(
        self,
        width: Int32,
        height: Int32,
    ) -> RenderTexture2D:
        return self._load_render_texture(width, height)

    fn is_texture_ready(self, owned texture: Texture2D) -> Bool:
        return self._is_texture_ready(UnsafePointer.address_of(texture))

    fn unload_texture(self, owned texture: Texture2D) -> None:
        self._unload_texture(UnsafePointer.address_of(texture))

    fn is_render_texture_ready(self, owned target: RenderTexture2D) -> Bool:
        return self._is_render_texture_ready(UnsafePointer.address_of(target))

    fn unload_render_texture(self, owned target: RenderTexture2D) -> None:
        self._unload_render_texture(UnsafePointer.address_of(target))

    fn update_texture(
        self,
        owned texture: Texture2D,
        pixels: UnsafePointer[NoneType],
    ) -> None:
        self._update_texture(
            UnsafePointer.address_of(texture),
            pixels,
        )

    fn update_texture_rec(
        self,
        owned texture: Texture2D,
        owned rec: Rectangle,
        pixels: UnsafePointer[NoneType],
    ):
        self._update_texture_rec(
            UnsafePointer.address_of(texture),
            UnsafePointer.address_of(rec),
            pixels,
        )

    fn gen_texture_mipmaps(self, owned texture: UnsafePointer[Texture2D]):
        self._gen_texture_mipmaps(texture)

    fn set_texture_filter(
        self,
        owned texture: Texture2D,
        filterMode: Int32,
    ):
        self._set_texture_filter(UnsafePointer.address_of(texture), filterMode)

    fn set_texture_wrap(
        self,
        owned texture: Texture2D,
        wrapMode: Int32,
    ):
        self._set_texture_wrap(UnsafePointer.address_of(texture), wrapMode)

    fn draw_texture(
        self,
        owned texture: Texture2D,
        posX: Int32,
        posY: Int32,
        owned tint: Color,
    ) -> None:
        self._draw_texture(
            UnsafePointer.address_of(texture),
            posX,
            posY,
            UnsafePointer.address_of(tint),
        )

    fn draw_texture_v(
        self,
        owned texture: Texture2D,
        owned position: Vector2,
        owned tint: Color,
    ) -> None:
        self._draw_texture_v(
            UnsafePointer.address_of(texture),
            UnsafePointer.address_of(position),
            UnsafePointer.address_of(tint),
        )

    fn draw_texture_ex(
        self,
        owned texture: Texture2D,
        owned position: Vector2,
        rotation: Float32,
        scale: Float32,
        owned tint: Color,
    ) -> None:
        self._draw_texture_ex(
            UnsafePointer.address_of(texture),
            UnsafePointer.address_of(position),
            rotation,
            scale,
            UnsafePointer.address_of(tint),
        )

    fn draw_texture_rec(
        self,
        owned texture: Texture2D,
        owned source: Rectangle,
        owned position: Vector2,
        owned tint: Color,
    ) -> None:
        self._draw_texture_rec(
            UnsafePointer.address_of(texture),
            UnsafePointer.address_of(source),
            UnsafePointer.address_of(position),
            UnsafePointer.address_of(tint),
        )

    fn draw_texture_pro(
        self,
        owned texture: Texture2D,
        owned source: Rectangle,
        owned dest: Rectangle,
        owned origin: Vector2,
        rotation: Float32,
        owned tint: Color,
    ) -> None:
        self._draw_texture_pro(
            UnsafePointer.address_of(texture),
            UnsafePointer.address_of(source),
            UnsafePointer.address_of(dest),
            UnsafePointer.address_of(origin),
            rotation,
            UnsafePointer.address_of(tint),
        )

    fn draw_texture_n_patch(
        self,
        owned texture: Texture2D,
        owned source: NPatchInfo,
        owned dest: Rectangle,
        owned origin: Vector2,
        rotation: Float32,
        owned tint: Color,
    ) -> None:
        self._draw_texture_n_patch(
            UnsafePointer.address_of(texture),
            UnsafePointer.address_of(source),
            UnsafePointer.address_of(dest),
            UnsafePointer.address_of(origin),
            rotation,
            UnsafePointer.address_of(tint),
        )

    fn fade(self, owned color: Color, alpha: Float32) -> Color:
        return self._fade(UnsafePointer.address_of(color), alpha)

    fn color_to_int(self, owned color: Color) -> Int32:
        return self._color_to_int(UnsafePointer.address_of(color))

    fn color_normalize(self, owned color: Color) -> Vector4:
        return self._color_normalize(UnsafePointer.address_of(color))

    fn color_from_normalized(self, owned normalized: Vector4) -> Color:
        return self._color_from_normalized(UnsafePointer.address_of(normalized))

    fn color_to_hsv(self, owned color: Color) -> Vector3:
        return self._color_to_hsv(UnsafePointer.address_of(color))

    fn color_from_hsv(
        self, hue: Float32, saturation: Float32, value: Float32
    ) -> Color:
        return self._color_from_hsv(hue, saturation, value)

    fn color_tint(self, owned color: Color, owned tint: Color) -> Color:
        return self._color_tint(
            UnsafePointer.address_of(color), UnsafePointer.address_of(tint)
        )

    fn color_brightness(self, owned color: Color, facator: Float32) -> Color:
        return self._color_brightness(UnsafePointer.address_of(color), facator)

    fn color_contrast(self, owned color: Color, contrast: Float32) -> Color:
        return self._color_contrast(UnsafePointer.address_of(color), contrast)

    fn color_alpha(self, owned color: Color, alpha: Float32) -> Color:
        return self._color_alpha(UnsafePointer.address_of(color), alpha)

    fn color_alpha_blend(
        self, owned dst: Color, owned src: Color, owned tint: Color
    ) -> Color:
        return self._color_alpha_blend(
            UnsafePointer.address_of(dst),
            UnsafePointer.address_of(src),
            UnsafePointer.address_of(tint),
        )

    fn get_color(self, hexValue: UInt32) -> Color:
        return self._get_color(hexValue)

    fn get_pixel_color(
        self, src: UnsafePointer[NoneType], format: Int32
    ) -> Color:
        return self._get_pixel_color(src, format)

    fn set_pixel_color(
        self, dst: UnsafePointer[NoneType], owned color: Color, format: Int32
    ):
        self._set_pixel_color(dst, UnsafePointer.address_of(color), format)

    fn get_pixel_data_size(
        self, width: Int32, height: Int32, format: Int32
    ) -> Int32:
        return self._get_pixel_data_size(width, height, format)
