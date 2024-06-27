from .shapes import Rectangle

alias Texture2D = Texture
alias RenderTexture2D = RenderTexture


@value
@register_passable
struct Image(CollectionElement):
    var data: DTypePointer[DType.float32]
    var width: Int32
    var height: Int32
    var mipmaps: Int32
    var format: Int32

    fn __init__(
        inout self,
        data: DTypePointer[DType.float32],
        width: Int32,
        height: Int32,
        mipmaps: Int32,
        format: Int32,
    ):
        self.data = data
        self.width = width
        self.height = height
        self.mipmaps = mipmaps
        self.format = format

    fn __str__(self) -> String:
        return (
            "Image("
            + str(self.width)
            + ", "
            + str(self.height)
            + ")"
            + ", mipmaps: "
            + str(self.mipmaps)
            + ", format: "
            + str(self.format)
        )


@register_passable("trivial")
struct Texture(CollectionElement):
    var id: UInt32
    var width: Int32
    var height: Int32
    var mipmaps: Int32
    var format: Int32

    fn __init__(
        inout self,
        id: UInt32,
        width: Int32,
        height: Int32,
        mipmaps: Int32,
        format: Int32,
    ):
        self.id = id
        self.width = width
        self.height = height
        self.mipmaps = mipmaps
        self.format = format

    fn __str__(self) -> String:
        return (
            "Texture("
            "id: "
            + str(self.id)
            + ", width:"
            + str(self.width)
            + ", height:"
            + str(self.height)
            + ", mipmaps: "
            + str(self.mipmaps)
            + ", format: "
            + str(self.format)
            + ")"
        )


@value
@register_passable
struct RenderTexture(CollectionElement):
    var id: UInt32
    var texture: Texture
    var depth: Texture

    fn __init__(inout self, id: UInt32, texture: Texture, depth: Texture):
        self.id = id
        self.texture = texture
        self.depth = depth

    fn __str__(self) -> String:
        return (
            "RenderTexture("
            + str(self.texture.width)
            + ", "
            + str(self.texture.height)
            + ")"
        )


@value
@register_passable
struct NPatchInfo(CollectionElement):
    var sourceRec: Rectangle
    var left: Int32
    var top: Int32
    var right: Int32
    var bottom: Int32
    var layout: Int32

    fn __init__(
        inout self,
        sourceRec: Rectangle,
        left: Int32,
        top: Int32,
        right: Int32,
        bottom: Int32,
        layout: Int32,
    ):
        self.sourceRec = sourceRec
        self.left = left
        self.top = top
        self.right = right
        self.bottom = bottom
        self.layout = layout

    fn __str__(self) -> String:
        return "NPatchInfo(" + str(self.sourceRec) + ")"


@value
@register_passable
struct GlyphInfo(CollectionElement):
    var value: Int32
    var offsetX: Int32
    var offsetY: Int32
    var advanceX: Int32
    var image: Image

    fn __init__(
        inout self,
        value: Int32,
        offsetX: Int32,
        offsetY: Int32,
        advanceX: Int32,
        image: Image,
    ):
        self.value = value
        self.offsetX = offsetX
        self.offsetY = offsetY
        self.advanceX = advanceX
        self.image = image

    fn __str__(self) -> String:
        return "GlyphInfo(" + str(self.value) + ")"


@value
@register_passable
struct Font(CollectionElement):
    var base_size: Int32
    var glyph_count: Int32
    var glyph_padding: Int32
    var texture: Texture2D
    var recs: UnsafePointer[Rectangle]
    var glyphs: UnsafePointer[GlyphInfo]

    fn __init__(
        inout self,
        base_size: Int32,
        glyph_count: Int32,
        glyph_padding: Int32,
        texture: Texture2D,
        recs: UnsafePointer[Rectangle],
        glyphs: UnsafePointer[GlyphInfo],
    ):
        self.base_size = base_size
        self.glyph_count = glyph_count
        self.glyph_padding = glyph_padding
        self.texture = texture
        self.recs = recs
        self.glyphs = glyphs

    fn __str__(self) -> String:
        return (
            "Font("
            + str(self.base_size)
            + ", glyphs: "
            + str(self.glyph_count)
            + ", padding: "
            + str(self.glyph_padding)
            + ", "
            + str(self.texture)
            + ")"
        )
