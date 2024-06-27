from .shapes import Matrix


@value
@register_passable
struct VrStereoConfig(CollectionElement):
    var projection: Matrix
    var viewOffset: Float32

    fn __init__(inout self, projection: Matrix, viewOffset: Float32):
        self.projection = projection
        self.viewOffset = viewOffset

    fn __str__(self) -> String:
        return (
            "VrStereoConfig("
            + str(self.projection)
            + ", "
            + str(self.viewOffset)
            + ")"
        )


@value
@register_passable
struct VrDeviceInfo(CollectionElement):
    var hResolution: Int32
    var vResolution: Int32
    var hScreenSize: Float32
    var vScreenSize: Float32
    var vScreenCenter: Float32
    var eyeToScreenDistance: Float32
    var lensSeparationDistance: Float32
    var interpupillaryDistance: Float32
    var lensDistortionValues: SIMD[DType.float32, 4]
    var chromaAbCorrection: SIMD[DType.float32, 4]

    fn __init__(
        inout self,
        hResolution: Int32,
        vResolution: Int32,
        hScreenSize: Float32,
        vScreenSize: Float32,
        vScreenCenter: Float32,
        eyeToScreenDistance: Float32,
        lensSeparationDistance: Float32,
        interpupillaryDistance: Float32,
        lensDistortionValues: SIMD[DType.float32, 4],
        chromaAbCorrection: SIMD[DType.float32, 4],
    ):
        self.hResolution = hResolution
        self.vResolution = vResolution
        self.hScreenSize = hScreenSize
        self.vScreenSize = vScreenSize
        self.vScreenCenter = vScreenCenter
        self.eyeToScreenDistance = eyeToScreenDistance
        self.lensSeparationDistance = lensSeparationDistance
        self.interpupillaryDistance = interpupillaryDistance
        self.lensDistortionValues = lensDistortionValues
        self.chromaAbCorrection = chromaAbCorrection

    fn __str__(self) -> String:
        return (
            "VrDeviceInfo("
            + str(self.hResolution)
            + ", "
            + str(self.vResolution)
            + ", "
            + str(self.hScreenSize)
            + ", "
            + str(self.vScreenSize)
            + ", "
            + str(self.vScreenCenter)
            + ", "
            + str(self.eyeToScreenDistance)
            + ", "
            + str(self.lensSeparationDistance)
            + ", "
            + str(self.interpupillaryDistance)
            + ", "
            + str(self.lensDistortionValues)
            + ", "
            + str(self.chromaAbCorrection)
            + ")"
        )
