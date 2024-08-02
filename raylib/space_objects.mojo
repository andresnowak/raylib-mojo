from utils.static_tuple import StaticTuple

from .shapes import Vector2, Vector3, Vector4, Matrix, Color, Quaternion
from .texture import Image, Texture, RenderTexture


alias Camera = Camera3D


@value
@register_passable
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

    fn __str__(self) -> String:
        return (
            "Camera3D("
            + str(self.position)
            + ", "
            + str(self.target)
            + ", "
            + str(self.up)
            + ", "
            + str(self.fovy)
            + ", "
            + str(self.projection)
            + ")"
        )


@value
@register_passable
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

    fn __str__(self) -> String:
        return (
            "Camera2D("
            + str(self.offset)
            + ", "
            + str(self.target)
            + ", "
            + str(self.rotation)
            + ", "
            + str(self.zoom)
            + ")"
        )


@value
@register_passable
struct Mesh(CollectionElement):
    var vertexCount: Int32  # Number of vertices stored in arrays
    var triangleCount: Int32  # Number of triangles stored (indexed or not)

    # Vertex attributes data
    var vertices: UnsafePointer[Scalar[DType.float32]]  # Vertex position (XYZ - 3 components per vertex) (shader-location = 0)
    var texcoords: UnsafePointer[Scalar[DType.float32]]  # Vertex texture coordinates (UV - 2 components per vertex) (shader-location = 1)
    var texcoords2: UnsafePointer[Scalar[DType.float32]]  # Vertex second texture coordinates (useful for lightmaps) (shader-location = 5)
    var normals: UnsafePointer[Scalar[DType.float32]]  # Vertex normals (XYZ - 3 components per vertex) (shader-location = 2)
    var tangents: UnsafePointer[Scalar[DType.float32]]  # Vertex tangents (XYZW - 4 components per vertex) (shader-location = 4)
    var colors: UnsafePointer[Scalar[DType.uint8]]  # Vertex colors (RGBA - 4 components per vertex) (shader-location = 3)
    var indices: UnsafePointer[Scalar[DType.uint16]]  # Vertex indices (in case vertex data comes indexed)

    # Animation vertex data
    var animVertices: UnsafePointer[Scalar[DType.float32]]  # Animated vertex positions (after bones transformations)
    var animNormals: UnsafePointer[Scalar[DType.float32]]  # Animated normals (after bones transformations)
    var boneIds: UnsafePointer[Scalar[DType.int8]]  # Vertex bone ids, up to 4 bones influence by vertex (skinning)
    var boneWeights: UnsafePointer[Scalar[DType.float32]]  # Vertex bone weight, up to 4 bones influence by vertex (skinning)

    # OpenGL identifiers
    var vaoId: UInt32  # OpenGL Vertex Array Object id
    var vboId: UInt32  # OpenGL Vertex Buffer Objects id (7 types of vertex data)

    fn __init__(
        inout self,
        vertexCount: Int32,
        triangleCount: Int32,
        vertices: UnsafePointer[Scalar[DType.float32]],
        texcoords: UnsafePointer[Scalar[DType.float32]],
        texcoords2: UnsafePointer[Scalar[DType.float32]],
        normals: UnsafePointer[Scalar[DType.float32]],
        tangents: UnsafePointer[Scalar[DType.float32]],
        colors: UnsafePointer[Scalar[DType.uint8]],
        indices: UnsafePointer[Scalar[DType.uint16]],
        animVertices: UnsafePointer[Scalar[DType.float32]],
        animNormals: UnsafePointer[Scalar[DType.float32]],
        boneIds: UnsafePointer[Scalar[DType.int8]],
        boneWeights: UnsafePointer[Scalar[DType.float32]],
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

    fn __str__(self) -> String:
        return (
            "Mesh("
            + str(self.vertexCount)
            + ", "
            + str(self.triangleCount)
            + ", "
            + str(self.vaoId)
            + ", "
            + str(self.vboId)
            + ")"
        )


@value
@register_passable
struct Shader(CollectionElement):
    var id: UInt32
    var locs: UnsafePointer[Scalar[DType.int32]]

    fn __init__(inout self, id: UInt32, locs: UnsafePointer[Scalar[DType.int32]]):
        self.id = id
        self.locs = locs

    fn __str__(self) -> String:
        return "Shader(" + str(self.id) + ")"


@value
@register_passable
struct MaterialMap(CollectionElement):
    var texture: Texture2D
    var color: Color
    var value: Float32

    fn __init__(inout self, texture: Texture2D, color: Color, value: Float32):
        self.texture = texture
        self.color = color
        self.value = value

    fn __str__(self) -> String:
        return (
            "MaterialMap("
            + str(self.texture)
            + ", "
            + str(self.color)
            + ", "
            + str(self.value)
            + ")"
        )


@value
@register_passable
struct Material(CollectionElement):
    var shader: Shader
    var maps: UnsafePointer[MaterialMap]

    fn __init__(inout self, shader: Shader, maps: UnsafePointer[MaterialMap]):
        self.shader = shader
        self.maps = maps

    fn __str__(self) -> String:
        return "Material(" + str(self.shader) + ")"


@value
@register_passable
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

    fn __str__(self) -> String:
        return (
            "Transform("
            + str(self.translation)
            + ", "
            + str(self.rotation)
            + ", "
            + str(self.scale)
            + ")"
        )


@value
@register_passable
struct BoneInfo(CollectionElement):
    var name: StaticTuple[Int8, 32]
    var parent: Int32

    fn __init__(inout self, name: String, parent: Int32):
        if len(name) > 32:
            print("Bone name too long, truncating to 32 characters")
        self.name = StaticTuple[Int8, 32]()
        self.parent = parent

        var n = min(len(name), 32)

        for i in range(n):
            self.name[i] = name.unsafe_cstr_ptr()[i]

    fn __str__(self) -> String:
        var result: String = "BoneInfo("
        for i in range(len(self.name)):
            if self.name[i] == 0:
                break
            result += str(self.name[i])
        result += ", " + str(self.parent) + ")"

        return result


@value
@register_passable
struct Model(CollectionElement):
    var transform: Matrix
    var meshCount: Int32
    var meshes: UnsafePointer[Mesh]
    var materialCount: Int32
    var materials: UnsafePointer[Material]
    var meshMaterial: UnsafePointer[Scalar[DType.int32]]
    var boneCount: Int32
    var bones: UnsafePointer[BoneInfo]

    fn __init__(
        inout self,
        transform: Matrix,
        meshCount: Int32,
        meshes: UnsafePointer[Mesh],
        materialCount: Int32,
        materials: UnsafePointer[Material],
        meshMaterial: UnsafePointer[Scalar[DType.int32]],
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

    fn __str__(self) -> String:
        return (
            "Model(transform: "
            + str(self.transform)
            + ", mesh_count: "
            + str(self.meshCount)
            + ", material_count: "
            + str(self.materialCount)
            + ", bone_count: "
            + str(self.boneCount)
            + ")"
        )


@value
@register_passable
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

    fn __str__(self) -> String:
        return (
            "ModelAnimation(bone_count: "
            + str(self.boneCount)
            + ", frame_count: "
            + str(self.frameCount)
            + ")"
        )


@value
@register_passable
struct Ray(CollectionElement):
    var position: Vector3
    var direction: Vector3

    fn __init__(inout self, position: Vector3, direction: Vector3):
        self.position = position
        self.direction = direction

    fn __str__(self) -> String:
        return "Ray(" + str(self.position) + ", " + str(self.direction) + ")"


@value
@register_passable
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

    fn __str__(self) -> String:
        return (
            "RayCollision("
            + str(self.hit)
            + ", "
            + str(self.distance)
            + ", "
            + str(self.position)
            + ", "
            + str(self.normal)
            + ")"
        )


@value
@register_passable
struct BoundingBox(CollectionElement):
    var min: Vector3
    var max: Vector3

    fn __init__(inout self, min: Vector3, max: Vector3):
        self.min = min
        self.max = max

    fn __str__(self) -> String:
        return "BoundingBox(" + str(self.min) + ", " + str(self.max) + ")"
