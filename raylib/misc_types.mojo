@value
@register_passable
struct TraceLogCallback:
    var log_level: Int32
    var text: UnsafePointer[Int8]
    var args: VariadicList[AnyTrivialRegType]

    fn __init__(
        inout self,
        log_level: Int32,
        text: UnsafePointer[Int8],
        *args: AnyTrivialRegType,
    ):
        self.log_level = log_level
        self.text = text
        self.args = args


@value
@register_passable
struct SaveFileDataCallback:
    var file_name: UnsafePointer[Int8]
    var data: UnsafePointer[NoneType]
    var data_size: UInt32

    fn __init__(
        inout self,
        file_name: UnsafePointer[Int8],
        data: UnsafePointer[NoneType],
        data_size: UInt32,
    ):
        self.file_name = file_name
        self.data = data
        self.data_size = data_size


@value
@register_passable
struct LoadFileDataCallback:
    var file_name: UnsafePointer[Int8]
    var data_size: UnsafePointer[UInt32]

    fn __init__(
        inout self,
        file_name: UnsafePointer[Int8],
        data_size: UnsafePointer[UInt32],
    ):
        self.file_name = file_name
        self.data_size = data_size


@value
@register_passable
struct LoadFileTextCallback:
    var file_name: UnsafePointer[Int8]

    fn __init__(inout self, file_name: UnsafePointer[Int8]):
        self.file_name = file_name


@value
@register_passable
struct SaveFileTextCallback:
    var file_name: UnsafePointer[Int8]
    var text: UnsafePointer[Int8]

    fn __init__(
        inout self, file_name: UnsafePointer[Int8], text: UnsafePointer[Int8]
    ):
        self.file_name = file_name
        self.text = text


@value
@register_passable
struct FilePathList:
    var capacity: UInt32
    var count: UInt32
    var paths: UnsafePointer[UnsafePointer[Int8]]

    fn __init__(
        inout self,
        capacity: UInt32,
        count: UInt32,
        paths: UnsafePointer[UnsafePointer[Int8]],
    ):
        self.capacity = capacity
        self.count = count
        self.paths = paths


@value
@register_passable
struct AutomationEvent:
    var frame: UInt32
    var type: UInt32
    var params: SIMD[DType.int32, 4]

    fn __init__(
        inout self, frame: UInt32, type: UInt32, params: SIMD[DType.int32, 4]
    ):
        self.frame = frame
        self.type = type
        self.params = params

    fn __str__(self) -> String:
        return (
            "AutomationEvent(frame: "
            + str(self.frame)
            + ", type: "
            + str(self.type)
            + ", params: "
            + str(self.params)
            + ")"
        )


@value
@register_passable
struct AutomationEventList:
    var capacity: UInt32
    var count: UInt32
    var events: UnsafePointer[AutomationEvent]

    fn __init__(
        inout self,
        capacity: UInt32,
        count: UInt32,
        events: UnsafePointer[AutomationEvent],
    ):
        self.capacity = capacity
        self.count = count
        self.events = events

    fn __str__(self) -> String:
        return (
            "AutomationEventList(capacity: "
            + str(self.capacity)
            + ", count: "
            + str(self.count)
            + ")"
        )


@value
@register_passable
struct rlVertexBuffer:
    var element_count: Int32

    var vertices: UnsafePointer[Float32]
    var texcoords: UnsafePointer[Float32]
    var normals: UnsafePointer[Float32]
    var colors: UnsafePointer[UInt8]

    var indices: UnsafePointer[UInt32]

    var vao_id: UInt32
    var vbo_id: StaticTuple[UInt32, 6]

    fn __init__(
        inout self,
        element_count: Int32,
        vertices: UnsafePointer[Float32],
        texcoords: UnsafePointer[Float32],
        normals: UnsafePointer[Float32],
        colors: UnsafePointer[UInt8],
        indices: UnsafePointer[UInt32],
        vao_id: UInt32,
        vbo_id: StaticTuple[UInt32, 6],
    ):
        self.element_count = element_count
        self.vertices = vertices
        self.texcoords = texcoords
        self.normals = normals
        self.colors = colors
        self.indices = indices
        self.vao_id = vao_id
        self.vbo_id = vbo_id


@value
@register_passable
struct rlDrawCall:
    var mode: Int32
    var vertex_count: Int32
    var vertex_alignment: Int32

    var texture_id: UInt32

    fn __init__(
        inout self,
        mode: Int32,
        vertex_count: Int32,
        vertex_alignment: Int32,
        texture_id: UInt32,
    ):
        self.mode = mode
        self.vertex_count = vertex_count
        self.vertex_alignment = vertex_alignment
        self.texture_id = texture_id


@value
@register_passable
struct rlRenderBatch:
    var buffer_count: Int32
    var current_buffer: Int32
    var buffers: UnsafePointer[rlVertexBuffer]

    var draws: UnsafePointer[rlDrawCall]
    var draw_counter: Int32
    var current_depth: Float32

    fn __init__(
        inout self,
        buffer_count: Int32,
        current_buffer: Int32,
        buffers: UnsafePointer[rlVertexBuffer],
        draws: UnsafePointer[rlDrawCall],
        draw_counter: Int32,
        current_depth: Float32,
    ):
        self.buffer_count = buffer_count
        self.current_buffer = current_buffer
        self.buffers = buffers
        self.draws = draws
        self.draw_counter = draw_counter
        self.current_depth = current_depth
