from sys.ffi import DLHandle

from .texture import Font, GlyphInfo, Image, Rectangle
from .shapes import Color

#  Font loading/unloading functions
alias c_raylib_GetFontDefault = fn () -> Font
alias c_raylib_LoadFont = fn (fileName: UnsafePointer[Int8]) -> Font
alias c_raylib_LoadFontEx = fn (
    fileName: UnsafePointer[Int8],
    fontSize: Int32,
    codepoints: UnsafePointer[Int32],
    codepointCount: Int32,
) -> Font
alias c_raylib_LoadFontFromImage = fn (
    image: UnsafePointer[Image], key: UnsafePointer[Color], firstChar: Int32
) -> Font
alias c_raylib_LoadFontFromMemory = fn (
    fileType: UnsafePointer[Int8],
    fileData: UnsafePointer[UInt8],
    dataSize: Int32,
    fontSize: Int32,
    codepoints: UnsafePointer[Int32],
    codepointCount: Int32,
) -> Font
alias c_raylib_IsFontReady = fn (font: UnsafePointer[Font]) -> Bool
alias c_raylib_LoadFontData = fn (
    fileType: UnsafePointer[UInt8],
    fileData: UnsafePointer[UInt8],
    dataSize: Int32,
    fontSize: Int32,
    codepoints: UnsafePointer[Int32],
    codepointCount: Int32,
    type: Int,
) -> GlyphInfo
alias c_raylib_GenImageFontAtlas = fn (
    chars: UnsafePointer[GlyphInfo],
    recs: UnsafePointer[UnsafePointer[Rectangle]],
    charsCount: Int32,
    fontSize: Int32,
    padding: Int32,
    packMethod: Int32,
) -> Image
alias c_raylib_UnloadFontData = fn (
    glyphs: UnsafePointer[GlyphInfo], glyphCount: Int32
) -> None
alias c_raylib_UnloadFont = fn (font: UnsafePointer[Font]) -> None
alias c_raylib_ExportFontAsCode = fn (
    font: UnsafePointer[Font], filename: UnsafePointer[Int8]
) -> Bool


# Text drawing functions
alias c_raylib_DrawFPS = fn (x: Int32, y: Int32) -> None
alias c_raylib_DrawText = fn (
    text: UnsafePointer[Int8],
    x: Int32,
    y: Int32,
    fontSize: Int32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawTextEx = fn (
    font: UnsafePointer[Font],
    text: UnsafePointer[Int8],
    position: UnsafePointer[Vector2],
    fontSize: Float32,
    spacing: Float32,
    tint: UnsafePointer[Color],
) -> None
alias c_raylib_DrawTextPro = fn (
    font: UnsafePointer[Font],
    text: UnsafePointer[Int8],
    position: UnsafePointer[Vector2],
    origin: UnsafePointer[Vector2],
    rotation: Float32,
    fontSize: Float32,
    spacing: Float32,
    tint: UnsafePointer[Color],
) -> None
alias c_raylib_DrawTextCodepoint = fn (
    font: UnsafePointer[Font],
    codepoint: Int32,
    position: UnsafePointer[Vector2],
    fontSize: Float32,
    tint: UnsafePointer[Color],
) -> None
alias c_raylib_DrawTextCodepoints = fn (
    font: UnsafePointer[Font],
    codepoints: UnsafePointer[Int32],
    codepointCount: Int32,
    position: UnsafePointer[Vector2],
    fontSize: Float32,
    spacing: Float32,
    tint: UnsafePointer[Color],
) -> None

# Text font info functions
alias c_raylib_SetTextLineSpacing = fn (spacing: Int32) -> None
alias c_raylib_MeasureText = fn (
    text: UnsafePointer[Int8], fontSize: Int32
) -> Int32
alias c_raylib_MeasureTextEx = fn (
    font: UnsafePointer[Font],
    text: UnsafePointer[Int8],
    fontSize: Float32,
    spacing: Float32,
) -> Vector2
alias c_raylib_GetGlyphIndex = fn (
    font: UnsafePointer[Font], codepoint: Int32
) -> Int32
alias c_raylib_GetGlyphInfo = fn (
    font: UnsafePointer[Font], glyphIndex: Int32
) -> GlyphInfo
alias c_raylib_GetGlyphAtlasRec = fn (
    font: UnsafePointer[Font], glyphIndex: Int32
) -> Rectangle

# Text codepoint management functions (unicode characters)
alias c_raylib_LoadUTF8 = fn (
    codepoints: UnsafePointer[UInt8], length: Int32
) -> UnsafePointer[Int8]
alias c_raylib_UnloadUTF8 = fn (text: UnsafePointer[Int8]) -> None
alias c_raylib_LoadCodepoints = fn (
    text: UnsafePointer[Int8], count: UnsafePointer[Int32]
) -> UnsafePointer[Int32]
alias c_raylib_UnloadCodepoints = fn (codepoints: UnsafePointer[Int32]) -> None
alias c_raylib_GetCodepointCount = fn (text: UnsafePointer[Int8]) -> Int32
alias c_raylib_GetCodepoint = fn (
    text: UnsafePointer[Int8], codepointSize: UnsafePointer[Int32]
) -> Int32
alias c_raylib_GetCodepointNext = fn (
    text: UnsafePointer[Int8], codepointSize: UnsafePointer[Int32]
) -> Int32
alias c_raylib_GetCodepointPrevious = fn (
    text: UnsafePointer[Int8],
    startCodepoint: Int32,
    codepointSize: UnsafePointer[Int32],
) -> Int32
alias c_raylib_CodepointToUTF8 = fn (
    codepoint: Int32, utf8Size: UnsafePointer[Int32]
) -> UnsafePointer[Int8]

# Text strings management functions (no utf8 strings, only byte chars)


@value
struct RaylibText:
    var _get_font_default: c_raylib_GetFontDefault
    var _load_font: c_raylib_LoadFont
    var _load_font_ex: c_raylib_LoadFontEx
    var _load_font_from_image: c_raylib_LoadFontFromImage
    var _load_font_from_memory: c_raylib_LoadFontFromMemory
    var _is_font_ready: c_raylib_IsFontReady
    var _load_font_data: c_raylib_LoadFontData
    var _gen_image_font_atlas: c_raylib_GenImageFontAtlas
    var _unload_font_data: c_raylib_UnloadFontData
    var _unload_font: c_raylib_UnloadFont
    var _export_font_as_code: c_raylib_ExportFontAsCode

    var _draw_fps: c_raylib_DrawFPS
    var _draw_text: c_raylib_DrawText
    var _draw_text_ex: c_raylib_DrawTextEx
    var _draw_text_pro: c_raylib_DrawTextPro
    var _draw_text_codepoint: c_raylib_DrawTextCodepoint
    var _draw_text_codepoints: c_raylib_DrawTextCodepoints

    var _set_text_line_spacing: c_raylib_SetTextLineSpacing
    var _measure_text: c_raylib_MeasureText
    var _measure_text_ex: c_raylib_MeasureTextEx
    var _get_glyph_index: c_raylib_GetGlyphIndex
    var _get_glyph_info: c_raylib_GetGlyphInfo
    var _get_glyph_atlas_rec: c_raylib_GetGlyphAtlasRec

    var _load_utf8: c_raylib_LoadUTF8
    var _unload_utf8: c_raylib_UnloadUTF8
    var _load_codepoints: c_raylib_LoadCodepoints
    var _unload_codepoints: c_raylib_UnloadCodepoints
    var _get_codepoint_count: c_raylib_GetCodepointCount
    var _get_codepoint: c_raylib_GetCodepoint
    var _get_codepoint_next: c_raylib_GetCodepointNext
    var _get_codepoint_previous: c_raylib_GetCodepointPrevious

    fn __init__(
        inout self,
        raylib_internal: DLHandle,
        raylib_bindings_internal: DLHandle,
    ):
        # Font loading/unloading functions
        self._get_font_default = raylib_internal.get_function[
            c_raylib_GetFontDefault
        ]("GetFontDefault")
        self._load_font = raylib_internal.get_function[c_raylib_LoadFont](
            "LoadFont"
        )
        self._load_font_ex = raylib_internal.get_function[c_raylib_LoadFontEx](
            "LoadFontEx"
        )
        self._load_font_from_image = raylib_internal.get_function[
            c_raylib_LoadFontFromImage
        ]("LoadFontFromImage")
        self._load_font_from_memory = raylib_internal.get_function[
            c_raylib_LoadFontFromMemory
        ]("LoadFontFromMemory")
        self._is_font_ready = raylib_internal.get_function[
            c_raylib_IsFontReady
        ]("IsFontReady")
        self._load_font_data = raylib_internal.get_function[
            c_raylib_LoadFontData
        ]("LoadFontData")
        self._gen_image_font_atlas = raylib_internal.get_function[
            c_raylib_GenImageFontAtlas
        ]("GenImageFontAtlas")
        self._unload_font_data = raylib_internal.get_function[
            c_raylib_UnloadFontData
        ]("UnloadFontData")
        self._unload_font = raylib_bindings_internal.get_function[
            c_raylib_UnloadFont
        ]("_UnloadFont")
        self._export_font_as_code = raylib_bindings_internal.get_function[
            c_raylib_ExportFontAsCode
        ]("_ExportFontAsCode")

        # Text drawing functions
        self._draw_fps = raylib_internal.get_function[c_raylib_DrawFPS](
            "DrawFPS"
        )
        self._draw_text = raylib_bindings_internal.get_function[
            c_raylib_DrawText
        ]("_DrawText")
        self._draw_text_ex = raylib_bindings_internal.get_function[
            c_raylib_DrawTextEx
        ]("_DrawTextEx")
        self._draw_text_pro = raylib_bindings_internal.get_function[
            c_raylib_DrawTextPro
        ]("_DrawTextPro")
        self._draw_text_codepoint = raylib_bindings_internal.get_function[
            c_raylib_DrawTextCodepoint
        ]("_DrawTextCodepoint")
        self._draw_text_codepoints = raylib_bindings_internal.get_function[
            c_raylib_DrawTextCodepoints
        ]("_DrawTextCodepointEx")

        # Text font info functions
        self._set_text_line_spacing = raylib_internal.get_function[
            c_raylib_SetTextLineSpacing
        ]("SetTextLineSpacing")
        self._measure_text = raylib_internal.get_function[c_raylib_MeasureText](
            "MeasureText"
        )
        self._measure_text_ex = raylib_internal.get_function[
            c_raylib_MeasureTextEx
        ]("MeasureTextEx")
        self._get_glyph_index = raylib_bindings_internal.get_function[
            c_raylib_GetGlyphIndex
        ]("_GetGlyphIndex")
        self._get_glyph_info = raylib_bindings_internal.get_function[
            c_raylib_GetGlyphInfo
        ]("_GetGlyphInfo")
        self._get_glyph_atlas_rec = raylib_bindings_internal.get_function[
            c_raylib_GetGlyphAtlasRec
        ]("_GetGlyphAtlasRec")

        # Text codepoint management functions (unicode characters)
        self._load_utf8 = raylib_internal.get_function[c_raylib_LoadUTF8](
            "LoadUTF8"
        )
        self._unload_utf8 = raylib_internal.get_function[c_raylib_UnloadUTF8](
            "UnloadUTF8"
        )
        self._load_codepoints = raylib_internal.get_function[
            c_raylib_LoadCodepoints
        ]("LoadCodepoints")
        self._unload_codepoints = raylib_internal.get_function[
            c_raylib_UnloadCodepoints
        ]("UnloadCodepoints")
        self._get_codepoint_count = raylib_internal.get_function[
            c_raylib_GetCodepointCount
        ]("GetCodepointCount")
        self._get_codepoint = raylib_internal.get_function[
            c_raylib_GetCodepoint
        ]("GetCodepoint")
        self._get_codepoint_next = raylib_internal.get_function[
            c_raylib_GetCodepointNext
        ]("GetCodepointNext")
        self._get_codepoint_previous = raylib_internal.get_function[
            c_raylib_GetCodepointPrevious
        ]("GetCodepointPrevious")

    @always_inline
    fn get_font_default(self) -> Font:
        """Get the default Font."""
        return self._get_font_default()

    @always_inline
    fn load_font(self, file_name: String) -> Font:
        """Load font from file into GPU memory (VRAM)."""
        return self._load_font(file_name.unsafe_cstr_ptr())

    @always_inline
    fn load_font_ex(
        self,
        file_name: String,
        font_size: Int32,
        codepoints: UnsafePointer[Int32],
        codepoint_count: Int32,
    ) -> Font:
        """Load font from file with extended parameters."""
        var temp = file_name.unsafe_cstr_ptr()
        var font = self._load_font_ex(
            temp, font_size, codepoints, codepoint_count
        )
        return UnsafePointer.address_of(font).bitcast[Font]()[0]

    @always_inline
    fn load_font_from_image(
        self, owned image: Image, owned key: Color, first_char: Int32
    ) -> Font:
        """Load font from Image (XNA style)."""
        return self._load_font_from_image(
            UnsafePointer.address_of(image),
            UnsafePointer.address_of(key),
            first_char,
        )

    @always_inline
    fn load_font_from_memory(
        self,
        file_type: String,
        file_data: UnsafePointer[UInt8],
        data_size: Int32,
        font_size: Int32,
        codepoints: UnsafePointer[Int32],
        codepoint_count: Int32,
    ) -> Font:
        """Load font from memory buffer, fileType refers to extension: i.e. "ttf".
        """
        var temp = file_type.unsafe_cstr_ptr()
        var font = self._load_font_from_memory(
            temp, file_data, data_size, font_size, codepoints, codepoint_count
        )
        return UnsafePointer.address_of(font).bitcast[Font]()[0]

    @always_inline
    fn is_font_ready(self, owned font: Font) -> Bool:
        """Check if any font is loaded."""
        return self._is_font_ready(UnsafePointer.address_of(font))

    @always_inline
    fn load_font_data(
        self,
        file_type: String,
        file_data: UnsafePointer[UInt8],
        data_size: Int32,
        font_size: Int32,
        codepoints: UnsafePointer[Int32],
        codepoint_count: Int32,
        type: Int,
    ) -> GlyphInfo:
        """Load font data for further use."""
        var temp = file_type.unsafe_ptr()
        return self._load_font_data(
            temp,
            file_data,
            data_size,
            font_size,
            codepoints,
            codepoint_count,
            type,
        )

    @always_inline
    fn gen_image_font_atlas(
        self,
        chars: UnsafePointer[GlyphInfo],
        recs: UnsafePointer[UnsafePointer[Rectangle]],
        chars_count: Int32,
        font_size: Int32,
        padding: Int32,
        pack_method: Int32,
    ) -> Image:
        """Generate image font atlas using chars info."""
        return self._gen_image_font_atlas(
            chars,
            recs,
            chars_count,
            font_size,
            padding,
            pack_method,
        )

    @always_inline
    fn unload_font_data(
        self, glyphs: UnsafePointer[GlyphInfo], glyph_count: Int32
    ):
        """Unload font chars info (RAM)."""
        self._unload_font_data(glyphs, glyph_count)

    @always_inline
    fn unload_font(self, owned font: Font):
        """Unload Font from GPU memory (VRAM)."""
        self._unload_font(UnsafePointer.address_of(font))

        _ = font

    @always_inline
    fn export_font_as_code(self, owned font: Font, file_name: String) -> Bool:
        """Export font data to code file."""
        var temp = file_name.unsafe_cstr_ptr()
        return self._export_font_as_code(UnsafePointer.address_of(font), temp)

    @always_inline
    fn draw_fps(self, x: Int32, y: Int32):
        """Shows current FPS."""
        self._draw_fps(x, y)

    @always_inline
    fn draw_text(
        self,
        text: String,
        x: Int32,
        y: Int32,
        font_size: Int32,
        owned color: Color,
    ):
        """Draw text (using default font)."""
        var temp = text.unsafe_cstr_ptr()
        self._draw_text(
            temp,
            x,
            y,
            font_size,
            UnsafePointer.address_of(color),
        )

        _ = color

    @always_inline
    fn draw_text_ex(
        self,
        owned font: Font,
        text: String,
        owned position: Vector2,
        font_size: Float32,
        spacing: Float32,
        owned color: Color,
    ):
        """Draw text using font and additional parameters."""
        var temp = text.unsafe_cstr_ptr()
        self._draw_text_ex(
            UnsafePointer.address_of(font),
            temp,
            UnsafePointer.address_of(position),
            font_size,
            spacing,
            UnsafePointer.address_of(color),
        )

        _ = font
        _ = position
        _ = font_size
        _ = color

    @always_inline
    fn draw_text_pro(
        self,
        owned font: Font,
        text: String,
        owned position: Vector2,
        owned origin: Vector2,
        rotation: Float32,
        font_size: Float32,
        spacing: Float32,
        owned color: Color,
    ):
        """Draw text using font and additional parameters."""
        var temp = text.unsafe_cstr_ptr()
        self._draw_text_pro(
            UnsafePointer.address_of(font),
            temp,
            UnsafePointer.address_of(position),
            UnsafePointer.address_of(origin),
            rotation,
            font_size,
            spacing,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_text_codepoint(
        self,
        owned font: Font,
        codepoint: Int32,
        owned position: Vector2,
        font_size: Float32,
        owned color: Color,
    ):
        """Draw one character (codepoint)."""
        self._draw_text_codepoint(
            UnsafePointer.address_of(font),
            codepoint,
            UnsafePointer.address_of(position),
            font_size,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_text_codepoints(
        self,
        owned font: Font,
        codepoints: UnsafePointer[Int32],
        codepoint_count: Int32,
        owned position: Vector2,
        font_size: Float32,
        spacing: Float32,
        owned color: Color,
    ):
        """Draw text using font and additional parameters."""
        self._draw_text_codepoints(
            UnsafePointer.address_of(font),
            codepoints,
            codepoint_count,
            UnsafePointer.address_of(position),
            font_size,
            spacing,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn set_text_line_spacing(self, spacing: Int32):
        """Set the spacing between characters."""
        self._set_text_line_spacing(spacing)

    @always_inline
    fn measure_text(self, text: String, font_size: Int32) -> Int32:
        """Measure string width for default font."""
        var temp = text.unsafe_cstr_ptr()
        var res = self._measure_text(temp, font_size)
        _ = text
        return res

    @always_inline
    fn measure_text_ex(
        self,
        owned font: Font,
        text: String,
        font_size: Float32,
        spacing: Float32,
    ) -> Vector2:
        """Measure string size for Font."""
        var temp = text.unsafe_cstr_ptr()
        return self._measure_text_ex(
            UnsafePointer.address_of(font),
            temp,
            font_size,
            spacing,
        )

    @always_inline
    fn get_glyph_index(self, owned font: Font, codepoint: Int32) -> Int32:
        """Get index position for a unicode character on font."""
        return self._get_glyph_index(UnsafePointer.address_of(font), codepoint)

    @always_inline
    fn get_glyph_info(self, owned font: Font, glyph_index: Int32) -> GlyphInfo:
        """Get glyph info for a unicode character on font."""
        return self._get_glyph_info(UnsafePointer.address_of(font), glyph_index)

    @always_inline
    fn get_glyph_atlas_rec(
        self, owned font: Font, glyph_index: Int32
    ) -> Rectangle:
        """Get glyph atlas rectangle for a unicode character on font."""
        var temp = self._get_glyph_atlas_rec(
            UnsafePointer.address_of(font), glyph_index
        )

        return UnsafePointer.address_of(temp).bitcast[Rectangle]()[0]

    @always_inline
    fn load_utf8(
        self, codepoints: UnsafePointer[UInt8], length: Int32
    ) -> String:
        """Load text data from file (codepoints) and return an UTF8 encoded string.
        """
        return StringRef(self._load_utf8(codepoints, length))

    @always_inline
    fn unload_utf8(self, text: String):
        """Unload UTF8 text data."""
        self._unload_utf8(text.unsafe_cstr_ptr())

    @always_inline
    fn load_codepoints(
        self, text: String, count: UnsafePointer[Int32]
    ) -> UnsafePointer[Int32]:
        """Load codepoints data for a UTF8 encoded string."""
        var temp = text.unsafe_cstr_ptr()
        return self._load_codepoints(temp, count)

    @always_inline
    fn unload_codepoints(self, codepoints: UnsafePointer[Int32]):
        """Unload codepoints data loaded with LoadCodepoints()."""
        self._unload_codepoints(codepoints)

    @always_inline
    fn get_codepoint_count(self, text: String) -> Int32:
        """Get total number of characters (codepoints) in a UTF8 encoded string.
        """
        var temp = text.unsafe_cstr_ptr()
        return self._get_codepoint_count(temp)

    @always_inline
    fn get_codepoint(
        self, text: String, codepoint_size: UnsafePointer[Int32]
    ) -> Int32:
        """Get next codepoint in a UTF8 encoded string."""
        var temp = text.unsafe_cstr_ptr()
        return self._get_codepoint(temp, codepoint_size)

    @always_inline
    fn get_codepoint_next(
        self, text: String, codepoint_size: UnsafePointer[Int32]
    ) -> Int32:
        """Get next codepoint in a UTF8 encoded string."""
        var temp = text.unsafe_cstr_ptr()
        return self._get_codepoint_next(temp, codepoint_size)

    @always_inline
    fn get_codepoint_previous(
        self,
        text: String,
        start_codepoint: Int32,
        codepoint_size: UnsafePointer[Int32],
    ) -> Int32:
        """Get previous codepoint in a UTF8 encoded string."""
        var temp = text.unsafe_cstr_ptr()
        return self._get_codepoint_previous(
            temp, start_codepoint, codepoint_size
        )
