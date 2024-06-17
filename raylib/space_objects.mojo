from .shapes import Vector2, Vector3, Vector4, Matrix, Color
from .texture import Image, Texture, RenderTexture


alias Quaternion = Vector4
alias Texture2D = Texture


@value
struct Camera3D(CollectionElement):
    var position: Vector3
    var target: Vector3
    var up: Vector3
    var fovy: Float32
    var projection: Int32

    fn __init__(
        inout self,
        position: Vector3,
        target: Vector3,
        up: Vector3,
        fovy: Float32,
        projection: Int32,
    ):
        self.position = position
        self.target = target
        self.up = up
        self.fovy = fovy
        self.projection = projection


@value
struct Camera2D(CollectionElement):
    var offset: Vector2
    var target: Vector2
    var rotation: Float32
    var zoom: Float32

    fn __init__(
        inout self,
        offset: Vector2,
        target: Vector2,
        rotation: Float32,
        zoom: Float32,
    ):
        self.offset = offset
        self.target = target
        self.rotation = rotation
        self.zoom = zoom


@value
struct Mesh(CollectionElement):
    var vertexCount: Int32  # Number of vertices stored in arrays
    var triangleCount: Int32  # Number of triangles stored (indexed or not)

    # Vertex attributes data
    var vertices: DTypePointer[
        DType.float32
    ]  # Vertex position (XYZ - 3 components per vertex) (shader-location = 0)
    var texcoords: DTypePointer[
        DType.float32
    ]  # Vertex texture coordinates (UV - 2 components per vertex) (shader-location = 1)
    var texcoords2: DTypePointer[
        DType.float32
    ]  # Vertex second texture coordinates (useful for lightmaps) (shader-location = 5)
    var normals: DTypePointer[
        DType.float32
    ]  # Vertex normals (XYZ - 3 components per vertex) (shader-location = 2)
    var tangents: DTypePointer[
        DType.float32
    ]  # Vertex tangents (XYZW - 4 components per vertex) (shader-location = 4)
    var colors: DTypePointer[
        DType.uint8
    ]  # Vertex colors (RGBA - 4 components per vertex) (shader-location = 3)
    var indices: DTypePointer[
        DType.uint16
    ]  # Vertex indices (in case vertex data comes indexed)

    # Animation vertex data
    var animVertices: DTypePointer[
        DType.float32
    ]  # Animated vertex positions (after bones transformations)
    var animNormals: DTypePointer[
        DType.float32
    ]  # Animated normals (after bones transformations)
    var boneIds: DTypePointer[
        DType.int8
    ]  # Vertex bone ids, up to 4 bones influence by vertex (skinning)
    var boneWeights: DTypePointer[
        DType.float32
    ]  # Vertex bone weight, up to 4 bones influence by vertex (skinning)

    # OpenGL identifiers
    var vaoId: UInt32  # OpenGL Vertex Array Object id
    var vboId: UInt32  # OpenGL Vertex Buffer Objects id (7 types of vertex data)

    fn __init__(
        inout self,
        vertexCount: Int32,
        triangleCount: Int32,
        vertices: DTypePointer[DType.float32],
        texcoords: DTypePointer[DType.float32],
        texcoords2: DTypePointer[DType.float32],
        normals: DTypePointer[DType.float32],
        tangents: DTypePointer[DType.float32],
        colors: DTypePointer[DType.uint8],
        indices: DTypePointer[DType.uint16],
        animVertices: DTypePointer[DType.float32],
        animNormals: DTypePointer[DType.float32],
        boneIds: DTypePointer[DType.int8],
        boneWeights: DTypePointer[DType.float32],
        vaoId: UInt32,
        vboId: UInt32,
    ):
        self.vertexCount = vertexCount
        self.triangleCount = triangleCount
        self.vertices = vertices
        self.texcoords = texcoords
        self.texcoords2 = texcoords2
        self.normals = normals
        self.tangents = tangents
        self.colors = colors
        self.indices = indices
        self.animVertices = animVertices
        self.animNormals = animNormals
        self.boneIds = boneIds
        self.boneWeights = boneWeights
        self.vaoId = vaoId
        self.vboId = vboId


@value
struct Shader(CollectionElement):
    var id: UInt32
    var locs: DTypePointer[DType.int32]

    fn __init__(inout self, id: UInt32, locs: DTypePointer[DType.int32]):
        self.id = id
        self.locs = locs


@value
struct MaterialMap(CollectionElement):
    var texture: Texture2D
    var color: Color
    var value: Float32

    fn __init__(inout self, texture: Texture2D, color: Color, value: Float32):
        self.texture = texture
        self.color = color
        self.value = value


@value
struct Material(CollectionElement):
    var shader: Shader
    var maps: UnsafePointer[MaterialMap]

    fn __init__(inout self, shader: Shader, maps: UnsafePointer[MaterialMap]):
        self.shader = shader
        self.maps = maps


@value
struct Transform(CollectionElement):
    var translation: Vector3
    var rotation: Quaternion
    var scale: Vector3

    fn __init__(
        inout self, translation: Vector3, rotation: Quaternion, scale: Vector3
    ):
        self.translation = translation
        self.rotation = rotation
        self.scale = scale


@value
struct BoneInfo(CollectionElement):
    var name: String
    var parent: Int32

    fn __init__(inout self, name: String, parent: Int32):
        self.name = name
        self.parent = parent


@value
struct Model(CollectionElement):
    var transform: Matrix
    var meshCount: Int32
    var meshes: UnsafePointer[Mesh]
    var materialCount: Int32
    var materials: UnsafePointer[Material]
    var meshMaterial: DTypePointer[DType.int32]
    var boneCount: Int32
    var bones: UnsafePointer[BoneInfo]

    fn __init__(
        inout self,
        transform: Matrix,
        meshCount: Int32,
        meshes: UnsafePointer[Mesh],
        materialCount: Int32,
        materials: UnsafePointer[Material],
        meshMaterial: DTypePointer[DType.int32],
        boneCount: Int32,
        bones: UnsafePointer[BoneInfo],
    ):
        self.transform = transform
        self.meshCount = meshCount
        self.meshes = meshes
        self.materialCount = materialCount
        self.materials = materials
        self.meshMaterial = meshMaterial
        self.boneCount = boneCount
        self.bones = bones


@value
struct ModelAnimation(CollectionElement):
    var boneCount: Int32
    var bones: UnsafePointer[BoneInfo]
    var frameCount: Int32
    var frames: UnsafePointer[Float32]

    fn __init__(
        inout self,
        boneCount: Int32,
        bones: UnsafePointer[BoneInfo],
        frameCount: Int32,
        frames: UnsafePointer[Float32],
    ):
        self.boneCount = boneCount
        self.bones = bones
        self.frameCount = frameCount
        self.frames = frames


@value
struct Ray(CollectionElement):
    var position: Vector3
    var direction: Vector3

    fn __init__(inout self, position: Vector3, direction: Vector3):
        self.position = position
        self.direction = direction


@value
struct RayCollision(CollectionElement):
    var hit: Bool
    var distance: Float32
    var position: Vector3
    var normal: Vector3

    fn __init__(
        inout self,
        hit: Bool,
        distance: Float32,
        position: Vector3,
        normal: Vector3,
    ):
        self.hit = hit
        self.distance = distance
        self.position = position
        self.normal = normal


@value
struct BoundingBox(CollectionElement):
    var min: Vector3
    var max: Vector3

    fn __init__(inout self, min: Vector3, max: Vector3):
        self.min = min
        self.max = max
