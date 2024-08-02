alias Quaternion = Vector4


@value
@register_passable("trivial")
struct Vector2(CollectionElement):
    var x: Float32
    var y: Float32

    fn __init__(inout self, x: Float32, y: Float32):
        self.x = x
        self.y = y

    fn __str__(self) -> String:
        return "Vector2(" + str(self.x) + ", " + str(self.y) + ")"

    fn format_to(self, inout writer: Formatter):
        writer.write(self.__str__())


@value
@register_passable("trivial")
struct Vector3:
    # var x: Float32
    # var y: Float32
    # var z: Float32
    var xyz: SIMD[DType.float32, 4]

    fn __init__(inout self, x: Float32, y: Float32, z: Float32):
        self.xyz = SIMD[DType.float32, 4](x, y, z, 0)

    fn __str__(self) -> String:
        return (
            "Vector3("
            + str(self.xyz[0])
            + ", "
            + str(self.xyz[1])
            + ", "
            + str(self.xyz[2])
            + ")"
        )

    fn format_to(self, inout writer: Formatter):
        writer.write(self.__str__())


@value
@register_passable("trivial")
struct Vector4:
    var xyzw: SIMD[DType.float32, 4]

    fn __init__(inout self, x: Float32, y: Float32, z: Float32, w: Float32):
        self.xyzw = SIMD[DType.float32, 4](x, y, z, w)

    fn __str__(self) -> String:
        return (
            "Vector4("
            + str(self.xyzw[0])
            + ", "
            + str(self.xyzw[1])
            + ", "
            + str(self.xyzw[2])
            + ", "
            + str(self.xyzw[3])
            + ")"
        )

    fn format_to(self, inout writer: Formatter):
        writer.write(self.__str__())


@value
@register_passable
struct Matrix(CollectionElement):
    var data: SIMD[DType.float32, 16]

    fn __init__(inout self, *data: Float32):
        self.data = SIMD[DType.float32, 16](0)

        for i in range(len(data)):
            self.data[i] = data[i]

    fn __str__(self) -> String:
        return "Matrix(" + str(self.data) + ")"


@value
@register_passable("trivial")
struct Color(CollectionElement):
    """Color, 4 components, R8G8B8A8 (32bit)."""

    var r: UInt8
    var g: UInt8
    var b: UInt8
    var a: UInt8

    @always_inline
    fn __init__(inout self, r: UInt8, g: UInt8, b: UInt8, a: UInt8):
        """Constructs a Color from r, g, b, and a values."""
        self.r = r
        self.g = g
        self.b = b
        self.a = a

    fn __str__(self) -> String:
        return (
            "Color("
            + str(self.r)
            + ", "
            + str(self.g)
            + ", "
            + str(self.b)
            + ", "
            + str(self.a)
            + ")"
        )


@value
@register_passable("trivial")
struct Rectangle:
    var x: Float32
    var y: Float32
    var width: Float32
    var height: Float32

    fn __init__(
        inout self, x: Float32, y: Float32, width: Float32, height: Float32
    ):
        self.x = x
        self.y = y
        self.width = width
        self.height = height

    fn __str__(self) -> String:
        return (
            "Rectangle("
            + str(self.x)
            + ", "
            + str(self.y)
            + ", "
            + str(self.width)
            + ", "
            + str(self.height)
            + ")"
        )
