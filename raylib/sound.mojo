@value
struct Wave(CollectionElement):
    var frame_count: UInt32
    var sample_rate: UInt32
    var sample_size: UInt32
    var channels: UInt32
    var data: DTypePointer[SYSTEM_SIZE.type]

    fn __init__(
        inout self,
        frame_count: UInt32,
        sample_rate: UInt32,
        sample_size: UInt32,
        channels: UInt32,
        data: DTypePointer[SYSTEM_SIZE.type],
    ):
        self.frame_count = frame_count
        self.sample_rate = sample_rate
        self.sample_size = sample_size
        self.channels = channels
        self.data = data


@value
struct AudioStream(CollectionElement):
    var sample_rate: UInt32
    var sample_size: UInt32
    var channels: UInt32
    var buffer: DTypePointer[SYSTEM_SIZE.type]
    var buffer_size: UInt32
    var format: Int32
    var playing: Bool
    var loop: Bool
    var stream: DTypePointer[SYSTEM_SIZE.type]

    fn __init__(
        inout self,
        sample_rate: UInt32,
        sample_size: UInt32,
        channels: UInt32,
        buffer: DTypePointer[SYSTEM_SIZE.type],
        buffer_size: UInt32,
        format: Int32,
        playing: Bool,
        loop: Bool,
        stream: DTypePointer[SYSTEM_SIZE.type],
    ):
        self.sample_rate = sample_rate
        self.sample_size = sample_size
        self.channels = channels
        self.buffer = buffer
        self.buffer_size = buffer_size
        self.format = format
        self.playing = playing
        self.loop = loop
        self.stream = stream

    fn __str__(self) -> String:
        return (
            "AudioStream(sample_rate="
            + str(self.sample_rate)
            + ", sample_size="
            + str(self.sample_size)
            + ", channels="
            + str(self.channels)
            + ", buffer="
            + str(self.buffer)
            + ", buffer_size="
            + str(self.buffer_size)
            + ", format="
            + str(self.format)
            + ", playing="
            + str(self.playing)
            + ", loop="
            + str(self.loop)
            + ", stream="
            + str(self.stream)
            + ")"
        )


@value
struct Sound(CollectionElement):
    var sample_count: UInt32
    var stream: AudioStream

    fn __init__(inout self, sample_count: UInt32, stream: AudioStream):
        self.sample_count = sample_count
        self.stream = stream

    fn __str__(self) -> String:
        return (
            "Sound(sample_count="
            + str(self.sample_count)
            + ", stream="
            + str(self.stream)
            + ")"
        )


@value
struct Music(CollectionElement):
    var ctx_type: Int32
    var ctx_data: DTypePointer[SYSTEM_SIZE.type]
    var ctx_data_size: UInt32
    var loop_count: Int32
    var stream: AudioStream

    fn __init__(
        inout self,
        ctx_type: Int32,
        ctx_data: DTypePointer[SYSTEM_SIZE.type],
        ctx_data_size: UInt32,
        loop_count: Int32,
        stream: AudioStream,
    ):
        self.ctx_type = ctx_type
        self.ctx_data = ctx_data
        self.ctx_data_size = ctx_data_size
        self.loop_count = loop_count
        self.stream = stream

    fn __str__(self) -> String:
        return (
            "Music(ctx_type="
            + str(self.ctx_type)
            + ", ctx_data="
            + str(self.ctx_data)
            + ", ctx_data_size="
            + str(self.ctx_data_size)
            + ", loop_count="
            + str(self.loop_count)
            + ", stream="
            + str(self.stream)
            + ")"
        )
