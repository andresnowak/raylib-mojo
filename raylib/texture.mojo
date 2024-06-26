from .shapes import Rectangle


@value
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


@value
struct RenderTexture(CollectionElement):
    var id: UInt32
    var texture: Texture
    var depth: Texture

    fn __init__(inout self, id: UInt32, texture: Texture, depth: Texture):
        self.id = id
        self.texture = texture
        self.depth = depth


@value
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


@value
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


@value
struct Font(CollectionElement):
    var base_size: Int32
    var glyph_count: Int32
    var glyph_padding: Int32
    var texture: Texture
    var recs: UnsafePointer[Rectangle]
    var glyphs: UnsafePointer[GlyphInfo]

    fn __init__(
        inout self,
        base_size: Int32,
        glyph_count: Int32,
        glyph_padding: Int32,
        texture: Texture,
        recs: UnsafePointer[Rectangle],
        glyphs: UnsafePointer[GlyphInfo],
    ):
        self.base_size = base_size
        self.glyph_count = glyph_count
        self.glyph_padding = glyph_padding
        self.texture = texture
        self.recs = recs
        self.glyphs = glyphs
