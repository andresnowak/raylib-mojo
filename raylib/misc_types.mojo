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
