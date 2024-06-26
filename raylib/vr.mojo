from .shapes import Matrix

@value
struct VrStereoConfig(CollectionElement):
    var projection: Matrix
    var viewOffset: Float32

    fn __init__(inout self, projection: Matrix, viewOffset: Float32):
        self.projection = projection
        self.viewOffset = viewOffset


@value
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