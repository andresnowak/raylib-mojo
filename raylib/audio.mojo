@value
struct Wave(CollectionElement):
    var data: DTypePointer[DType.float32]
    var sampleCount: Int32
    var sampleRate: Int32
    var sampleSize: Int32
    var channels: Int32

    fn __init__(
        inout self,
        data: DTypePointer[DType.float32],
        sampleCount: Int32,
        sampleRate: Int32,
        sampleSize: Int32,
        channels: Int32,
    ):
        self.data = data
        self.sampleCount = sampleCount
        self.sampleRate = sampleRate
        self.sampleSize = sampleSize
        self.channels = channels


@value
struct AudioStream(CollectionElement):
    var sampleRate: Int32
    var sampleSize: Int32
    var channels: Int32
    var buffer: DTypePointer[DType.float32]
    var bufferSizeInFrames: Int32
    var playing: Bool

    fn __init__(
        inout self,
        sampleRate: Int32,
        sampleSize: Int32,
        channels: Int32,
        buffer: DTypePointer[DType.float32],
        bufferSizeInFrames: Int32,
        playing: Bool,
    ):
        self.sampleRate = sampleRate
        self.sampleSize = sampleSize
        self.channels = channels
        self.buffer = buffer
        self.bufferSizeInFrames = bufferSizeInFrames
        self.playing = playing


@value
struct Sound(CollectionElement):
    var sampleCount: Int32
    var stream: AudioStream

    fn __init__(inout self, sampleCount: Int32, stream: AudioStream):
        self.sampleCount = sampleCount
        self.stream = stream


@value
struct Music(CollectionElement):
    var stream: AudioStream
    var loopCount: Int32

    fn __init__(inout self, stream: AudioStream, loopCount: Int32):
        self.stream = stream
        self.loopCount = loopCount
