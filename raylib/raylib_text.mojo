from .texture import Font

#  Font loading/unloading functions
alias c_raylib_GetFontDefault = fn () -> SYSTEM_SIZE
alias c_raylib_LoadFont = fn (fileName: UnsafePointer[Int8]) -> SYSTEM_SIZE
alias c_raylib_LoadFontEx = fn (
    fileName: UnsafePointer[Int8],
    fontSize: Int32,
    codepoints: UnsafePointer[Int32],
    codepointCount: Int32,
) -> SYSTEM_SIZE
alias c_raylib_LoadFontFromImage = fn (
    image: SYSTEM_SIZE, key: Color, firstChar: Int32
) -> SYSTEM_SIZE
alias c_raylib_LoadFontFromMemory = fn (
    fileType: UnsafePointer[Int8],
    fileData: UnsafePointer[UInt8],
    dataSize: Int32,
    fontSize: Int32,
    codepoints: UnsafePointer[Int32],
    codepointCount: Int32,
) -> SYSTEM_SIZE
alias c_raylib_IsFontReady = fn (font: SYSTEM_SIZE) -> Bool
alias c_raylib_LoadFontData = fn (
    fileType: UnsafePointer[UInt8],
    fileData: UnsafePointer[UInt8],
    dataSize: Int32,
    fontSize: Int32,
    codepoints: UnsafePointer[Int32],
    codepointCount: Int32,
    type: Int,
) -> UnsafePointer[SYSTEM_SIZE]
alias c_raylib_GenImageFontAtlas = fn (
    chars: UnsafePointer[SYSTEM_SIZE],
    recs: UnsafePointer[Rectangle],
    charsCount: Int32,
    fontSize: Int32,
    padding: Int32,
    packMethod: Int32,
) -> SYSTEM_SIZE
alias c_raylib_UnloadFontData = fn (
    glyphs: UnsafePointer[SYSTEM_SIZE], glyphCount: Int32
) -> None
alias c_raylib_UnloadFont = fn (font: SYSTEM_SIZE) -> None
alias c_raylib_ExportFontAsCode = fn (
    font: SYSTEM_SIZE, filename: UnsafePointer[Int8]
) -> Bool


# Text drawing functions
alias c_raylib_DrawFPS = fn (x: Int32, y: Int32) -> None
alias c_raylib_DrawText = fn (
    text: UnsafePointer[Int8],
    x: Int32,
    y: Int32,
    fontSize: Int32,
    color: SYSTEM_SIZE,
) -> None
alias c_raylib_DrawTextEx = fn (
    font: SYSTEM_SIZE,
    text: UnsafePointer[Int8],
    position: SYSTEM_SIZE,
    fontSize: Float32,
    spacing: Float32,
    tint: SYSTEM_SIZE,
) -> None
alias c_raylib_DrawTextPro = fn (
    font: SYSTEM_SIZE,
    text: UnsafePointer[Int8],
    position: SYSTEM_SIZE,
    origin: SYSTEM_SIZE,
    rotation: Float32,
    fontSize: Float32,
    spacing: Float32,
    tint: SYSTEM_SIZE,
) -> None
alias c_raylib_DrawTextCodepoint = fn (
    font: SYSTEM_SIZE,
    codepoint: Int32,
    position: SYSTEM_SIZE,
    fontSize: Float32,
    tint: SYSTEM_SIZE,
) -> None
alias c_raylib_DrawTextCodepoints = fn (
    font: SYSTEM_SIZE,
    codepoints: UnsafePointer[Int32],
    codepointCount: Int32,
    position: SYSTEM_SIZE,
    fontSize: Float32,
    spacing: Float32,
    tint: SYSTEM_SIZE,
) -> None

# Text font info functions
alias c_raylib_SetTextLineSpacing = fn (spacing: Int32) -> None
alias c_raylib_MeasureText = fn (
    text: UnsafePointer[Int8], fontSize: Int32
) -> Int32
alias c_raylib_MeasureTextEx = fn (
    font: SYSTEM_SIZE,
    text: UnsafePointer[Int8],
    fontSize: Float32,
    spacing: Float32,
) -> SYSTEM_SIZE
alias c_raylib_GetGlyphIndex = fn (font: SYSTEM_SIZE, codepoint: Int32) -> Int32
alias c_raylib_GetGlyphInfo = fn (
    font: SYSTEM_SIZE, glyphIndex: Int32
) -> SYSTEM_SIZE
alias c_raylib_GetGlyphAtlasRec = fn (
    font: SYSTEM_SIZE, glyphIndex: Int32
) -> SYSTEM_SIZE

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

    fn __init__(inout self):
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
        self._unload_font = raylib_internal.get_function[c_raylib_UnloadFont](
            "UnloadFont"
        )
        self._export_font_as_code = raylib_internal.get_function[
            c_raylib_ExportFontAsCode
        ]("ExportFontAsCode")

        # Text drawing functions
        self._draw_fps = raylib_internal.get_function[c_raylib_DrawFPS](
            "DrawFPS"
        )
        self._draw_text = raylib_internal.get_function[c_raylib_DrawText](
            "DrawText"
        )
        self._draw_text_ex = raylib_internal.get_function[c_raylib_DrawTextEx](
            "DrawTextEx"
        )
        self._draw_text_pro = raylib_internal.get_function[
            c_raylib_DrawTextPro
        ]("DrawTextPro")
        self._draw_text_codepoint = raylib_internal.get_function[
            c_raylib_DrawTextCodepoint
        ]("DrawTextCodepoint")
        self._draw_text_codepoints = raylib_internal.get_function[
            c_raylib_DrawTextCodepoints
        ]("DrawTextCodepointEx")

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
        self._get_glyph_index = raylib_internal.get_function[
            c_raylib_GetGlyphIndex
        ]("GetGlyphIndex")
        self._get_glyph_info = raylib_internal.get_function[
            c_raylib_GetGlyphInfo
        ]("GetGlyphInfo")
        self._get_glyph_atlas_rec = raylib_internal.get_function[
            c_raylib_GetGlyphAtlasRec
        ]("GetGlyphAtlasRec")

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

    fn get_font_default(self) -> Font:
        """Get the default Font."""
        var temp = self._get_font_default()
        return UnsafePointer.address_of(temp).bitcast[Font]()[0]

    fn load_font(self, file_name: String) -> Font:
        """Load font from file into GPU memory (VRAM)."""
        var temp = file_name.unsafe_ptr()
        var font = self._load_font(temp)
        return UnsafePointer.address_of(font).bitcast[Font]()[0]

    fn load_font_ex(
        self,
        file_name: String,
        font_size: Int32,
        codepoints: UnsafePointer[Int32],
        codepoint_count: Int32,
    ) -> Font:
        """Load font from file with extended parameters."""
        var temp = file_name.unsafe_ptr()
        var font = self._load_font_ex(
            temp, font_size, codepoints, codepoint_count
        )
        return UnsafePointer.address_of(font).bitcast[Font]()[0]

    fn load_font_from_image(
        self, image: Image, key: Color, first_char: Int32
    ) -> Font:
        """Load font from Image (XNA style)."""
        var font = self._load_font_from_image(
            UnsafePointer.address_of(image).bitcast[SYSTEM_SIZE]()[0],
            key,
            first_char,
        )
        return UnsafePointer.address_of(font).bitcast[Font]()[0]

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
        var temp = file_type.unsafe_ptr()
        var font = self._load_font_from_memory(
            temp, file_data, data_size, font_size, codepoints, codepoint_count
        )
        return UnsafePointer.address_of(font).bitcast[Font]()[0]

    fn is_font_ready(self, font: Font) -> Bool:
        """Check if any font is loaded."""
        return self._is_font_ready(
            UnsafePointer.address_of(font).bitcast[SYSTEM_SIZE]()[0]
        )

    fn load_font_data(
        self,
        file_type: String,
        file_data: UnsafePointer[UInt8],
        data_size: Int32,
        font_size: Int32,
        codepoints: UnsafePointer[Int32],
        codepoint_count: Int32,
        type: Int,
    ) -> UnsafePointer[Font]:
        """Load font data for further use."""
        var temp = file_type.unsafe_uint8_ptr()
        return self._load_font_data(
            temp,
            file_data,
            data_size,
            font_size,
            codepoints,
            codepoint_count,
            type,
        ).bitcast[Font]()

    fn gen_image_font_atlas(
        self,
        chars: UnsafePointer[Font],
        recs: UnsafePointer[Rectangle],
        chars_count: Int32,
        font_size: Int32,
        padding: Int32,
        pack_method: Int32,
    ) -> Image:
        """Generate image font atlas using chars info."""
        var temp = self._gen_image_font_atlas(
            chars.bitcast[SYSTEM_SIZE](),
            recs,
            chars_count,
            font_size,
            padding,
            pack_method,
        )
        return UnsafePointer.address_of(temp).bitcast[Image]()[0]

    fn unload_font_data(self, glyphs: UnsafePointer[Font], glyph_count: Int32):
        """Unload font chars info (RAM)."""
        self._unload_font_data(glyphs.bitcast[SYSTEM_SIZE](), glyph_count)

    fn unload_font(self, font: Font):
        """Unload Font from GPU memory (VRAM)."""
        self._unload_font(
            UnsafePointer.address_of(font).bitcast[SYSTEM_SIZE]()[0]
        )

    fn export_font_as_code(self, font: Font, file_name: String) -> Bool:
        """Export font data to code file."""
        var temp = file_name.unsafe_ptr()
        return self._export_font_as_code(
            UnsafePointer.address_of(font).bitcast[SYSTEM_SIZE]()[0], temp
        )

    fn draw_fps(self, x: Int32, y: Int32):
        """Shows current FPS."""
        self._draw_fps(x, y)

    fn draw_text(
        self,
        text: String,
        x: Int32,
        y: Int32,
        font_size: Int32,
        owned color: Color,
    ):
        """Draw text (using default font)."""
        var temp = text.unsafe_ptr()
        self._draw_text(
            temp,
            x,
            y,
            font_size,
            UnsafePointer.address_of(color).bitcast[SYSTEM_SIZE]()[0],
        )

    fn draw_text_ex(
        self,
        font: Font,
        text: String,
        owned position: Vector2,
        font_size: Float32,
        spacing: Float32,
        owned color: Color,
    ):
        """Draw text using font and additional parameters."""
        var temp = text.unsafe_ptr()
        self._draw_text_ex(
            UnsafePointer.address_of(font).bitcast[SYSTEM_SIZE]()[0],
            temp,
            UnsafePointer.address_of(position).bitcast[SYSTEM_SIZE]()[0],
            font_size,
            spacing,
            UnsafePointer.address_of(color).bitcast[SYSTEM_SIZE]()[0],
        )

    fn draw_text_pro(
        self,
        font: Font,
        text: String,
        owned position: Vector2,
        owned origin: Vector2,
        rotation: Float32,
        font_size: Float32,
        spacing: Float32,
        owned color: Color,
    ):
        """Draw text using font and additional parameters."""
        var temp = text.unsafe_ptr()
        self._draw_text_pro(
            UnsafePointer.address_of(font).bitcast[SYSTEM_SIZE]()[0],
            temp,
            UnsafePointer.address_of(position).bitcast[SYSTEM_SIZE]()[0],
            UnsafePointer.address_of(origin).bitcast[SYSTEM_SIZE]()[0],
            rotation,
            font_size,
            spacing,
            UnsafePointer.address_of(color).bitcast[SYSTEM_SIZE]()[0],
        )

    fn draw_text_codepoint(
        self,
        font: Font,
        codepoint: Int32,
        owned position: Vector2,
        font_size: Float32,
        owned color: Color,
    ):
        """Draw one character (codepoint)."""
        self._draw_text_codepoint(
            UnsafePointer.address_of(font).bitcast[SYSTEM_SIZE]()[0],
            codepoint,
            UnsafePointer.address_of(position).bitcast[SYSTEM_SIZE]()[0],
            font_size,
            UnsafePointer.address_of(color).bitcast[SYSTEM_SIZE]()[0],
        )

    fn draw_text_codepoints(
        self,
        font: Font,
        codepoints: UnsafePointer[Int32],
        codepoint_count: Int32,
        owned position: Vector2,
        font_size: Float32,
        spacing: Float32,
        owned color: Color,
    ):
        """Draw text using font and additional parameters."""
        self._draw_text_codepoints(
            UnsafePointer.address_of(font).bitcast[SYSTEM_SIZE]()[0],
            codepoints,
            codepoint_count,
            UnsafePointer.address_of(position).bitcast[SYSTEM_SIZE]()[0],
            font_size,
            spacing,
            UnsafePointer.address_of(color).bitcast[SYSTEM_SIZE]()[0],
        )

    fn set_text_line_spacing(self, spacing: Int32):
        """Set the spacing between characters."""
        self._set_text_line_spacing(spacing)

    fn measure_text(self, text: String, font_size: Int32) -> Int32:
        """Measure string width for default font."""
        var temp = text.unsafe_ptr()
        return self._measure_text(temp, font_size)

    fn measure_text_ex(
        self,
        font: Font,
        text: String,
        font_size: Float32,
        spacing: Float32,
    ) -> Vector2:
        """Measure string size for Font."""
        var temp = text.unsafe_ptr()
        var result = self._measure_text_ex(
            UnsafePointer.address_of(font).bitcast[SYSTEM_SIZE]()[0],
            temp,
            font_size,
            spacing,
        )
        return UnsafePointer.address_of(result).bitcast[Vector2]()[0]
    
    fn get_glyph_index(self, font: Font, codepoint: Int32) -> Int32:
        """Get index position for a unicode character on font."""
        return self._get_glyph_index(
            UnsafePointer.address_of(font).bitcast[SYSTEM_SIZE]()[0], codepoint
        )
    
    fn get_glyph_info(self, font: Font, glyph_index: Int32) -> SYSTEM_SIZE:
        """Get glyph info for a unicode character on font."""
        return self._get_glyph_info(
            UnsafePointer.address_of(font).bitcast[SYSTEM_SIZE]()[0], glyph_index
        )

    fn get_glyph_atlas_rec(self, font: Font, glyph_index: Int32) -> Rectangle:
        """Get glyph atlas rectangle for a unicode character on font."""
        var temp = self._get_glyph_atlas_rec(
            UnsafePointer.address_of(font).bitcast[SYSTEM_SIZE]()[0], glyph_index
        )

        return UnsafePointer.address_of(temp).bitcast[Rectangle]()[0]

    fn load_utf8(self, codepoints: UnsafePointer[UInt8], length: Int32) -> String:
        """Load text data from file (codepoints) and return an UTF8 encoded string."""
        return StringRef(self._load_utf8(codepoints, length))

    fn unload_utf8(self, text: String):
        """Unload UTF8 text data."""
        self._unload_utf8(text.unsafe_ptr())

    fn load_codepoints(self, text: String, count: UnsafePointer[Int32]) -> UnsafePointer[Int32]:
        """Load codepoints data for a UTF8 encoded string."""
        var temp = text.unsafe_ptr()
        return self._load_codepoints(temp, count)

    fn unload_codepoints(self, codepoints: UnsafePointer[Int32]):
        """Unload codepoints data loaded with LoadCodepoints()."""
        self._unload_codepoints(codepoints)

    fn get_codepoint_count(self, text: String) -> Int32:
        """Get total number of characters (codepoints) in a UTF8 encoded string."""
        var temp = text.unsafe_ptr()
        return self._get_codepoint_count(temp)

    fn get_codepoint(self, text: String, codepoint_size: UnsafePointer[Int32]) -> Int32:
        """Get next codepoint in a UTF8 encoded string."""
        var temp = text.unsafe_ptr()
        return self._get_codepoint(temp, codepoint_size)
    
    fn get_codepoint_next(self, text: String, codepoint_size: UnsafePointer[Int32]) -> Int32:
        """Get next codepoint in a UTF8 encoded string."""
        var temp = text.unsafe_ptr()
        return self._get_codepoint_next(temp, codepoint_size)
    
    fn get_codepoint_previous(self, text: String, start_codepoint: Int32, codepoint_size: UnsafePointer[Int32]) -> Int32:
        """Get previous codepoint in a UTF8 encoded string."""
        var temp = text.unsafe_ptr()
        return self._get_codepoint_previous(temp, start_codepoint, codepoint_size)
    

    
    
