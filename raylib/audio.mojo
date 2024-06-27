@value
@register_passable
struct Wave(CollectionElement):
    var frameCount: UInt32
    var sampleRate: UInt32
    var sampleSize: UInt32
    var channels: UInt32
    var data: DTypePointer[SYSTEM_SIZE.type]

    fn __init__(
        inout self,
        frameCount: UInt32,
        sampleRate: UInt32,
        sampleSize: UInt32,
        channels: UInt32,
        data: DTypePointer[SYSTEM_SIZE.type],
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


# @value
# @register_passable
# struct AudioStream(CollectionElement):
#     var buffer: RAudioBuffer
#     var processor: RAudioProcessor


# @value
# @register_passable
# struct Sound(CollectionElement):
#     var sampleCount: Int32
#     var stream: AudioStream

#     fn __init__(inout self, sampleCount: Int32, stream: AudioStream):
#         self.sampleCount = sampleCount
#         self.stream = stream

#     fn __str__(self) -> String:
#         return "Sound(" + str(self.sampleCount) + ", " + str(self.stream) + ")"


# @value
# @register_passable
# struct Music(CollectionElement):
#     var stream: AudioStream
#     var loopCount: Int32

#     fn __init__(inout self, stream: AudioStream, loopCount: Int32):
#         self.stream = stream
#         self.loopCount = loopCount

#     fn __str__(self) -> String:
#         return "Music(" + str(self.stream) + ", " + str(self.loopCount) + ")"
