# MiniAudio bindings
@value
@register_passable
struct MaResampler(CollectionElement):
    var p_backend: UnsafePointer[SYSTEM_SIZE]
    var p_backend_v_table: UnsafePointer[SYSTEM_SIZE]
    var p_backend_user_data: UnsafePointer[SYSTEM_SIZE]
    var format: UInt8
    var channels: UInt32
    var sample_rate_in: UInt32
    var sample_rate_out: UInt32

    var state: UnsafePointer[SYSTEM_SIZE]

    var p_heap: UnsafePointer[SYSTEM_SIZE]
    var owns_heap: UInt32

    fn __init__(
        inout self,
        p_backend: UnsafePointer[SYSTEM_SIZE],
        p_backend_v_table: UnsafePointer[SYSTEM_SIZE],
        p_backend_user_data: UnsafePointer[SYSTEM_SIZE],
        format: UInt8,
        channels: UInt32,
        sample_rate_in: UInt32,
        sample_rate_out: UInt32,
        state: UnsafePointer[SYSTEM_SIZE],
        p_heap: UnsafePointer[SYSTEM_SIZE],
        owns_heap: UInt32,
    ):
        self.p_backend = p_backend
        self.p_backend_v_table = p_backend_v_table
        self.p_backend_user_data = p_backend_user_data
        self.format = format
        self.channels = channels
        self.sample_rate_in = sample_rate_in
        self.sample_rate_out = sample_rate_out
        self.state = state
        self.p_heap = p_heap
        self.owns_heap = owns_heap

@value
@register_passable
struct MaChannelConverter(CollectionElement):
    var format: UInt8
    var channelsIn: UInt32
    var channelsOut: UInt32
    var channelCount: UInt32
    var channelMapIn: UnsafePointer[SYSTEM_SIZE]
    var channelMapOut: UnsafePointer[SYSTEM_SIZE]

    fn __init__(
        inout self,
        format: UInt8,
        channelsIn: UInt32,
        channelsOut: UInt32,
        channelCount: UInt32,
        channelMapIn: UnsafePointer[SYSTEM_SIZE],
        channelMapOut: UnsafePointer[SYSTEM_SIZE],
    ):
        self.format = format
        self.channelsIn = channelsIn
        self.channelsOut = channelsOut
        self.channelCount = channelCount
        self.channelMapIn = channelMapIn
        self.channelMapOut = channelMapOut


@value
@register_passable
struct MaDataConverter(CollectionElement):
    var formatIn: UInt8
    var formatOut: UInt8
    var channelsIn: UInt32
    var channelsOut: UInt32
    var sampleRateIn: UInt32
    var sampleRateOut: UInt32
    var ditherMode: UInt8
    var executionPath: UInt8
    var channelConverter: UInt8
    var resampler: UInt8
    var hasPreFormatConversion: UInt8
    var hasPostFormatConversion: UInt8
    var hasChannelConverter: UInt8
    var hasResampler: UInt8
    var isPassthrough: UInt8

    var ownsHeap: UInt8
    var pHeap: UnsafePointer[SYSTEM_SIZE]

    fn __init__(
        inout self,
        formatIn: UInt8,
        formatOut: UInt8,
        channelsIn: UInt32,
        channelsOut: UInt32,
        sampleRateIn: UInt32,
        sampleRateOut: UInt32,
        ditherMode: UInt8,
        executionPath: UInt8,
        channelConverter: UInt8,
        resampler: UInt8,
        hasPreFormatConversion: UInt8,
        hasPostFormatConversion: UInt8,
        hasChannelConverter: UInt8,
        hasResampler: UInt8,
        isPassthrough: UInt8,
        ownsHeap: UInt8,
        pHeap: UnsafePointer[SYSTEM_SIZE],
    ):
        self.formatIn = formatIn
        self.formatOut = formatOut
        self.channelsIn = channelsIn
        self.channelsOut = channelsOut
        self.sampleRateIn = sampleRateIn
        self.sampleRateOut = sampleRateOut
        self.ditherMode = ditherMode
        self.executionPath = executionPath
        self.channelConverter = channelConverter
        self.resampler = resampler
        self.hasPreFormatConversion = hasPreFormatConversion
        self.hasPostFormatConversion = hasPostFormatConversion
        self.hasChannelConverter = hasChannelConverter
        self.hasResampler = hasResampler
        self.isPassthrough = isPassthrough
        self.ownsHeap = ownsHeap
        self.pHeap = pHeap


# Audio module

@value
@register_passable
struct Wave(CollectionElement):
    var frameCount: UInt32
    var sampleRate: UInt32
    var sampleSize: UInt32
    var channels: UInt32
    var data: UnsafePointer[SYSTEM_SIZE]

    fn __init__(
        inout self,
        frameCount: UInt32,
        sampleRate: UInt32,
        sampleSize: UInt32,
        channels: UInt32,
        data: UnsafePointer[SYSTEM_SIZE],
    ):
        self.frameCount = frameCount
        self.sampleRate = sampleRate
        self.sampleSize = sampleSize
        self.channels = channels
        self.data = data

    fn __str__(self) -> String:
        return (
            "Wave("
            + str(self.frameCount)
            + ", "
            + str(self.sampleRate)
            + ", "
            + str(self.sampleSize)
            + ", "
            + str(self.channels)
            + ", "
            + str(self.data)
            + ")"
        )


@value
@register_passable
struct AudioCallback(CollectionElement):
    var buffer_data: UnsafePointer[SYSTEM_SIZE]
    var frames: UInt32

    fn __init__(
        inout self, buffer_data: UnsafePointer[SYSTEM_SIZE], frames: UInt32
    ):
        self.buffer_data = buffer_data
        self.frames = frames

    fn __str__(self) -> String:
        return (
            "AudioCallback("
            + str(self.buffer_data)
            + ", "
            + str(self.frames)
            + ")"
        )


@value
@register_passable
struct RAudioProcessor(CollectionElement):
    var process: AudioCallback
    var next: UnsafePointer[RAudioProcessor]
    var prev: UnsafePointer[RAudioProcessor]

    fn __init__(
        inout self,
        process: AudioCallback,
        next: UnsafePointer[RAudioProcessor],
        prev: UnsafePointer[RAudioProcessor],
    ):
        self.process = process
        self.next = next
        self.prev = prev


@value
@register_passable
struct RAudioBuffer(CollectionElement):
    var converter: MaDataConverter
    var callback: AudioCallback
    var processor: UnsafePointer[RAudioProcessor]

    var volume: Float32
    var pitch: Float32
    var pan: Float32

    var playing: Bool
    var paused: Bool
    var looping: Bool
    var usage: Int32

    var is_sub_buffer_processed: SIMD[DType.bool, 2]
    var size_in_frames: UInt32
    var frame_cursor_pos: UInt32
    var frames_processed: UInt32

    var data: UnsafePointer[UInt8]

    var next: UnsafePointer[RAudioBuffer]
    var prev: UnsafePointer[RAudioBuffer]

    fn __init__(
        inout self,
        converter: MaDataConverter,
        callback: AudioCallback,
        processor: UnsafePointer[RAudioProcessor],
        volume: Float32,
        pitch: Float32,
        pan: Float32,
        playing: Bool,
        paused: Bool,
        looping: Bool,
        usage: Int32,
        is_sub_buffer_processed: SIMD[DType.bool, 2],
        size_in_frames: UInt32,
        frame_cursor_pos: UInt32,
        frames_processed: UInt32,
        data: UnsafePointer[UInt8],
        next: UnsafePointer[RAudioBuffer],
        prev: UnsafePointer[RAudioBuffer],
    ):
        self.converter = converter
        self.callback = callback
        self.processor = processor
        self.volume = volume
        self.pitch = pitch
        self.pan = pan
        self.playing = playing
        self.paused = paused
        self.looping = looping
        self.usage = usage
        self.is_sub_buffer_processed = is_sub_buffer_processed
        self.size_in_frames = size_in_frames
        self.frame_cursor_pos = frame_cursor_pos
        self.frames_processed = frames_processed
        self.data = data
        self.next = next
        self.prev = prev


@value
@register_passable
struct AudioStream(CollectionElement):
    var buffer: UnsafePointer[RAudioBuffer]
    var processor: UnsafePointer[RAudioProcessor]

    var sample_rate: UInt32
    var sample_size: UInt32
    var channels: UInt32

    fn __init__(
        inout self,
        buffer: UnsafePointer[RAudioBuffer],
        processor: UnsafePointer[RAudioProcessor],
        sample_rate: UInt32,
        sample_size: UInt32,
        channels: UInt32,
    ):
        self.buffer = buffer
        self.processor = processor
        self.sample_rate = sample_rate
        self.sample_size = sample_size
        self.channels = channels


@value
@register_passable
struct Sound(CollectionElement):
    var sampleCount: Int32
    var stream: AudioStream

    fn __init__(inout self, sampleCount: Int32, stream: AudioStream):
        self.sampleCount = sampleCount
        self.stream = stream


@value
@register_passable
struct Music(CollectionElement):
    var stream: AudioStream
    var fram_count: UInt32
    var looping: Bool

    var ctx_type: Int32
    var ctx_data: UnsafePointer[SYSTEM_SIZE]

    fn __init__(
        inout self,
        stream: AudioStream,
        fram_count: UInt32,
        looping: Bool,
        ctx_type: Int32,
        ctx_data: UnsafePointer[SYSTEM_SIZE],
    ):
        self.stream = stream
        self.fram_count = fram_count
        self.looping = looping
        self.ctx_type = ctx_type
        self.ctx_data = ctx_data
