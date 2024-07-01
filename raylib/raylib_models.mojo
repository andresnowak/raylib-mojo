from sys.ffi import DLHandle

from .shapes import Vector3, Color, Vector2
from .space_objects import Ray, BoundingBox, RayCollision

# Basic geometric 3D shapes drawing functions
alias c_raylib_DrawLine3D = fn (
    startPos: UnsafePointer[Vector3],
    endPos: UnsafePointer[Vector3],
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawPoint3D = fn (
    position: UnsafePointer[Vector3], color: UnsafePointer[Color]
) -> None
alias c_raylib_DrawCircle3D = fn (
    center: UnsafePointer[Vector3],
    radius: Float32,
    rotationAxis: UnsafePointer[Vector3],
    rotationAngle: Float32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawTriangle3D = fn (
    v1: UnsafePointer[Vector3],
    v2: UnsafePointer[Vector3],
    v3: UnsafePointer[Vector3],
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawTriangleStrip3D = fn (
    points: UnsafePointer[Vector3],
    pointCount: Int32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawCube = fn (
    position: UnsafePointer[Vector3],
    width: Float32,
    height: Float32,
    length: Float32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawCubeV = fn (
    position: UnsafePointer[Vector3],
    size: UnsafePointer[Vector3],
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawCubeWires = fn (
    position: UnsafePointer[Vector3],
    width: Float32,
    height: Float32,
    length: Float32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawCubeWiresV = fn (
    position: UnsafePointer[Vector3],
    size: UnsafePointer[Vector3],
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawSphere = fn (
    centerPos: UnsafePointer[Vector3],
    radius: Float32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawSphereEx = fn (
    centerPos: UnsafePointer[Vector3],
    radius: Float32,
    rings: Int32,
    slices: Int32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawSphereWires = fn (
    centerPos: UnsafePointer[Vector3],
    radius: Float32,
    rings: Int32,
    slices: Int32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawCylinder = fn (
    position: UnsafePointer[Vector3],
    radiusTop: Float32,
    radiusBottom: Float32,
    height: Float32,
    slices: Int32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawCylinderEx = fn (
    startPos: UnsafePointer[Vector3],
    endPos: UnsafePointer[Vector3],
    startRadius: Float32,
    endRadius: Float32,
    sides: Int32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawCylinderWires = fn (
    position: UnsafePointer[Vector3],
    radiusTop: Float32,
    radiusBottom: Float32,
    height: Float32,
    slices: Int32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawCylinderWiresEx = fn (
    startPos: UnsafePointer[Vector3],
    endPos: UnsafePointer[Vector3],
    startRadius: Float32,
    endRadius: Float32,
    sides: Int32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawCapsule = fn (
    startPos: UnsafePointer[Vector3],
    endPos: UnsafePointer[Vector3],
    radius: Float32,
    slices: Int32,
    rings: Int32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawCapsuleWires = fn (
    startPos: UnsafePointer[Vector3],
    endPos: UnsafePointer[Vector3],
    radius: Float32,
    slices: Int32,
    rings: Int32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawPlane = fn (
    centerPos: UnsafePointer[Vector3],
    size: UnsafePointer[Vector2],
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawRay = fn (
    ray: UnsafePointer[Ray], color: UnsafePointer[Color]
) -> None
alias c_raylib_DrawGrid = fn (slices: Int32, spacing: Float32) -> None

# Model 3D loading and drawing functions (Module: models)

# Model management functions
alias c_raylib_LoadModel = fn (fileName: UnsafePointer[Int8]) -> Model
alias c_raylib_LoadModelFromMesh = fn (mesh: UnsafePointer[Mesh]) -> Model
alias c_raylib_IsModelReady = fn (model: UnsafePointer[Model]) -> Bool
alias c_raylib_UnloadModel = fn (model: UnsafePointer[Model]) -> None
alias c_raylib_GetModelBoundingBox = fn (
    model: UnsafePointer[Model]
) -> BoundingBox

# Mesh management functions
alias c_raylib_DrawModel = fn (
    model: UnsafePointer[Model],
    position: UnsafePointer[Vector3],
    scale: Float32,
    tint: UnsafePointer[Color],
) -> None
alias c_raylib_DrawModelEx = fn (
    model: UnsafePointer[Model],
    position: UnsafePointer[Vector3],
    rotationAxis: UnsafePointer[Vector3],
    rotationAngle: Float32,
    scale: UnsafePointer[Vector3],
    tint: UnsafePointer[Color],
) -> None
alias c_raylib_DrawModelWires = fn (
    model: UnsafePointer[Model],
    position: UnsafePointer[Vector3],
    scale: Float32,
    tint: UnsafePointer[Color],
) -> None
alias c_raylib_DrawModelWiresEx = fn (
    model: UnsafePointer[Model],
    position: UnsafePointer[Vector3],
    rotationAxis: UnsafePointer[Vector3],
    rotationAngle: Float32,
    scale: UnsafePointer[Vector3],
    tint: UnsafePointer[Color],
) -> None
alias c_raylib_DrawBoundingBox = fn (
    box: UnsafePointer[BoundingBox], color: UnsafePointer[Color]
) -> None
alias c_raylib_DrawBillboard = fn (
    camera: UnsafePointer[Camera],
    texture: UnsafePointer[Texture2D],
    position: UnsafePointer[Vector3],
    size: Float32,
    tint: UnsafePointer[Color],
) -> None
alias c_raylib_DrawBillboardRec = fn (
    camera: UnsafePointer[Camera],
    texture: UnsafePointer[Texture2D],
    source: UnsafePointer[Rectangle],
    position: UnsafePointer[Vector3],
    size: UnsafePointer[Vector2],
    tint: UnsafePointer[Color],
) -> None
alias c_raylib_DrawBillboardPro = fn (
    camera: UnsafePointer[Camera],
    texture: UnsafePointer[Texture2D],
    source: UnsafePointer[Rectangle],
    position: UnsafePointer[Vector3],
    up: UnsafePointer[Vector3],
    size: UnsafePointer[Vector2],
    origin: UnsafePointer[Vector2],
    rotation: Float32,
    tint: UnsafePointer[Color],
) -> None

# Mesh management functions
alias c_raylib_UploadMesh = fn (
    mesh: UnsafePointer[Mesh], dynamic: Bool
) -> None
alias c_raylib_UpdateMeshBuffer = fn (
    mesh: UnsafePointer[Mesh],
    index: Int32,
    data: UnsafePointer[NoneType],
    dataSize: Int32,
    offset: Int32,
) -> None
alias c_raylib_UnloadMesh = fn (mesh: UnsafePointer[Mesh]) -> None
alias c_raylib_DrawMesh = fn (
    mesh: UnsafePointer[Mesh],
    material: UnsafePointer[Material],
    transform: UnsafePointer[Matrix],
) -> None
alias c_raylib_DrawMeshInstanced = fn (
    mesh: UnsafePointer[Mesh],
    material: UnsafePointer[Material],
    transforms: UnsafePointer[Matrix],
    instances: Int32,
) -> None
alias c_raylib_ExportMesh = fn (
    mesh: UnsafePointer[Mesh], fileName: UnsafePointer[Int8]
) -> Bool
alias c_raylib_GetMeshBoundingBox = fn (
    mesh: UnsafePointer[Mesh]
) -> BoundingBox
alias c_raylib_GenMeshTangents = fn (mesh: UnsafePointer[Mesh]) -> None

# Mesh generation functions
alias c_raylib_GenMeshPoly = fn (sides: Int32, radius: Float32) -> Mesh
alias c_raylib_GenMeshPlane = fn (
    width: Float32, length: Float32, resX: Int32, resZ: Int32
) -> Mesh
alias c_raylib_GenMeshCube = fn (
    width: Float32, height: Float32, length: Float32
) -> Mesh
alias c_raylib_GenMeshSphere = fn (
    radius: Float32, rings: Int32, slices: Int32
) -> Mesh
alias c_raylib_GenMeshHemiSphere = fn (
    radius: Float32, rings: Int32, slices: Int32
) -> Mesh
alias c_raylib_GenMeshCylinder = fn (
    radius: Float32, height: Float32, slices: Int32
) -> Mesh
alias c_raylib_GenMeshCone = fn (
    radius: Float32, height: Float32, slices: Int32
) -> Mesh
alias c_raylib_GenMeshTorus = fn (
    radius: Float32, size: Float32, radSeg: Int32, sides: Int32
) -> Mesh
alias c_raylib_GenMeshKnot = fn (
    radius: Float32, size: Float32, radSeg: Int32, sides: Int32
) -> Mesh
alias c_raylib_GenMeshHeightmap = fn (
    heightmap: UnsafePointer[Image], size: UnsafePointer[Vector3]
) -> Mesh
alias c_raylib_GenMeshCubicmap = fn (
    cubicmap: UnsafePointer[Image], cubeSize: UnsafePointer[Vector3]
) -> Mesh

# Material loading/unloading functions
alias c_raylib_LoadMaterials = fn (
    fileName: UnsafePointer[Int8], materialCount: UnsafePointer[Int32]
) -> UnsafePointer[Material]
alias c_raylib_LoadMaterialDefault = fn () -> Material
alias c_raylib_IsMaterialReady = fn (material: UnsafePointer[Material]) -> Bool
alias c_raylib_UnloadMaterial = fn (material: UnsafePointer[Material]) -> None
alias c_raylib_SetMaterialTexture = fn (
    material: UnsafePointer[Material],
    mapType: Int32,
    texture: UnsafePointer[Texture2D],
) -> None
alias c_raylib_SetModelMeshMaterial = fn (
    model: UnsafePointer[Model], meshId: Int32, materialId: Int32
) -> None

# Model animations loading/unloading functions
alias c_raylib_LoadModelAnimations = fn (
    fileName: UnsafePointer[Int8], animCount: UnsafePointer[Int32]
) -> UnsafePointer[ModelAnimation]
alias c_raylib_UpdateModelAnimation = fn (
    model: UnsafePointer[Model],
    anim: UnsafePointer[ModelAnimation],
    frame: Int32,
) -> None
alias c_raylib_UnloadModelAnimation = fn (
    anim: UnsafePointer[ModelAnimation]
) -> None
alias c_raylib_UnloadModelAnimations = fn (
    animations: UnsafePointer[ModelAnimation], animCount: Int32
) -> None
alias c_raylib_IsModelAnimationValid = fn (
    model: UnsafePointer[Model], anim: UnsafePointer[ModelAnimation]
) -> Bool

# Collision detection functions
alias c_raylib_CheckCollisionSpheres = fn (
    center1: UnsafePointer[Vector3],
    radius1: Float32,
    center2: UnsafePointer[Vector3],
    radius2: Float32,
) -> Bool
alias c_raylib_CheckCollisionBoxes = fn (
    box1: UnsafePointer[BoundingBox], box2: UnsafePointer[BoundingBox]
) -> Bool
alias c_raylib_CheckCollisionBoxSphere = fn (
    box: UnsafePointer[BoundingBox],
    center: UnsafePointer[Vector3],
    radius: Float32,
) -> Bool
alias c_raylib_GetRayCollisionSphere = fn (
    ray: UnsafePointer[Ray], center: UnsafePointer[Vector3], radius: Float32
) -> RayCollision
alias c_raylib_GetRayCollisionBox = fn (
    ray: UnsafePointer[Ray], box: UnsafePointer[BoundingBox]
) -> RayCollision
alias c_raylib_GetRayCollisionMesh = fn (
    ray: UnsafePointer[Ray],
    mesh: UnsafePointer[Mesh],
    transform: UnsafePointer[Matrix],
) -> RayCollision
alias c_raylib_GetRayCollisionTriangle = fn (
    ray: UnsafePointer[Ray],
    p1: UnsafePointer[Vector3],
    p2: UnsafePointer[Vector3],
    p3: UnsafePointer[Vector3],
) -> RayCollision
alias c_raylib_GetRayCollisionQuad = fn (
    ray: UnsafePointer[Ray],
    p1: UnsafePointer[Vector3],
    p2: UnsafePointer[Vector3],
    p3: UnsafePointer[Vector3],
    p4: UnsafePointer[Vector3],
) -> RayCollision


@value
struct RayLibModels:
    var _draw_line_3d: c_raylib_DrawLine3D
    var _draw_point_3d: c_raylib_DrawPoint3D
    var _draw_circle_3d: c_raylib_DrawCircle3D
    var _draw_triangle_3d: c_raylib_DrawTriangle3D
    var _draw_triangle_strip_3d: c_raylib_DrawTriangleStrip3D
    var _draw_cube: c_raylib_DrawCube
    var _draw_cube_v: c_raylib_DrawCubeV
    var _draw_cube_wires: c_raylib_DrawCubeWires
    var _draw_cube_wires_v: c_raylib_DrawCubeWiresV
    var _draw_sphere: c_raylib_DrawSphere
    var _draw_sphere_ex: c_raylib_DrawSphereEx
    var _draw_sphere_wires: c_raylib_DrawSphereWires
    var _draw_cylinder: c_raylib_DrawCylinder
    var _draw_cylinder_ex: c_raylib_DrawCylinderEx
    var _draw_cylinder_wires: c_raylib_DrawCylinderWires
    var _draw_cylinder_wires_ex: c_raylib_DrawCylinderWiresEx
    var _draw_capsule: c_raylib_DrawCapsule
    var _draw_capsule_wires: c_raylib_DrawCapsuleWires
    var _draw_plane: c_raylib_DrawPlane
    var _draw_ray: c_raylib_DrawRay
    var _draw_grid: c_raylib_DrawGrid

    var _load_model: c_raylib_LoadModel
    var _load_model_from_mesh: c_raylib_LoadModelFromMesh
    var _is_model_ready: c_raylib_IsModelReady
    var _unload_model: c_raylib_UnloadModel
    var _get_model_bounding_box: c_raylib_GetModelBoundingBox

    var _draw_model: c_raylib_DrawModel
    var _draw_model_ex: c_raylib_DrawModelEx
    var _draw_model_wires: c_raylib_DrawModelWires
    var _draw_model_wires_ex: c_raylib_DrawModelWiresEx
    var _draw_bounding_box: c_raylib_DrawBoundingBox
    var _draw_billboard: c_raylib_DrawBillboard
    var _draw_billboard_rec: c_raylib_DrawBillboardRec
    var _draw_billboard_pro: c_raylib_DrawBillboardPro

    var _upload_mesh: c_raylib_UploadMesh
    var _update_mesh_buffer: c_raylib_UpdateMeshBuffer
    var _unload_mesh: c_raylib_UnloadMesh
    var _draw_mesh: c_raylib_DrawMesh
    var _draw_mesh_instanced: c_raylib_DrawMeshInstanced
    var _export_mesh: c_raylib_ExportMesh
    var _get_mesh_bounding_box: c_raylib_GetMeshBoundingBox
    var _gen_mesh_tangents: c_raylib_GenMeshTangents

    var _gen_mesh_poly: c_raylib_GenMeshPoly
    var _gen_mesh_plane: c_raylib_GenMeshPlane
    var _gen_mesh_cube: c_raylib_GenMeshCube
    var _gen_mesh_sphere: c_raylib_GenMeshSphere
    var _gen_mesh_hemi_sphere: c_raylib_GenMeshHemiSphere
    var _gen_mesh_cylinder: c_raylib_GenMeshCylinder
    var _gen_mesh_cone: c_raylib_GenMeshCone
    var _gen_mesh_torus: c_raylib_GenMeshTorus
    var _gen_mesh_knot: c_raylib_GenMeshKnot
    var _gen_mesh_heightmap: c_raylib_GenMeshHeightmap
    var _gen_mesh_cubicmap: c_raylib_GenMeshCubicmap

    var _load_materials: c_raylib_LoadMaterials
    var _load_material_default: c_raylib_LoadMaterialDefault
    var _is_material_ready: c_raylib_IsMaterialReady
    var _unload_material: c_raylib_UnloadMaterial
    var _set_material_texture: c_raylib_SetMaterialTexture
    var _set_model_mesh_material: c_raylib_SetModelMeshMaterial

    var _load_model_animations: c_raylib_LoadModelAnimations
    var _update_model_animation: c_raylib_UpdateModelAnimation
    var _unload_model_animation: c_raylib_UnloadModelAnimation
    var _unload_model_animations: c_raylib_UnloadModelAnimations
    var _is_model_animation_valid: c_raylib_IsModelAnimationValid

    var _check_collision_spheres: c_raylib_CheckCollisionSpheres
    var _check_collision_boxes: c_raylib_CheckCollisionBoxes
    var _check_collision_box_sphere: c_raylib_CheckCollisionBoxSphere
    var _get_ray_collision_sphere: c_raylib_GetRayCollisionSphere
    var _get_ray_collision_box: c_raylib_GetRayCollisionBox
    var _get_ray_collision_mesh: c_raylib_GetRayCollisionMesh
    var _get_ray_collision_triangle: c_raylib_GetRayCollisionTriangle
    var _get_ray_collision_quad: c_raylib_GetRayCollisionQuad

    fn __init__(
        inout self,
        raylib_internal: DLHandle,
        raylib_bindings_internal: DLHandle,
    ):
        # Basic geometric 3D shapes drawing functions
        self._draw_line_3d = raylib_bindings_internal.get_function[
            c_raylib_DrawLine3D
        ]("_DrawLine3D")
        self._draw_point_3d = raylib_bindings_internal.get_function[
            c_raylib_DrawPoint3D
        ]("_DrawPoint3D")
        self._draw_circle_3d = raylib_bindings_internal.get_function[
            c_raylib_DrawCircle3D
        ]("_DrawCircle3D")
        self._draw_triangle_3d = raylib_bindings_internal.get_function[
            c_raylib_DrawTriangle3D
        ]("_DrawTriangle3D")
        self._draw_triangle_strip_3d = raylib_bindings_internal.get_function[
            c_raylib_DrawTriangleStrip3D
        ]("_DrawTriangleStrip3D")
        self._draw_cube = raylib_bindings_internal.get_function[
            c_raylib_DrawCube
        ]("_DrawCube")
        self._draw_cube_v = raylib_bindings_internal.get_function[
            c_raylib_DrawCubeV
        ]("_DrawCubeV")
        self._draw_cube_wires = raylib_bindings_internal.get_function[
            c_raylib_DrawCubeWires
        ]("_DrawCubeWires")
        self._draw_cube_wires_v = raylib_bindings_internal.get_function[
            c_raylib_DrawCubeWiresV
        ]("_DrawCubeWiresV")
        self._draw_sphere = raylib_bindings_internal.get_function[
            c_raylib_DrawSphere
        ]("_DrawSphere")
        self._draw_sphere_ex = raylib_bindings_internal.get_function[
            c_raylib_DrawSphereEx
        ]("_DrawSphereEx")
        self._draw_sphere_wires = raylib_bindings_internal.get_function[
            c_raylib_DrawSphereWires
        ]("_DrawSphereWires")
        self._draw_cylinder = raylib_bindings_internal.get_function[
            c_raylib_DrawCylinder
        ]("_DrawCylinder")
        self._draw_cylinder_ex = raylib_bindings_internal.get_function[
            c_raylib_DrawCylinderEx
        ]("_DrawCylinderEx")
        self._draw_cylinder_wires = raylib_bindings_internal.get_function[
            c_raylib_DrawCylinderWires
        ]("_DrawCylinderWires")
        self._draw_cylinder_wires_ex = raylib_bindings_internal.get_function[
            c_raylib_DrawCylinderWiresEx
        ]("_DrawCylinderWiresEx")
        self._draw_capsule = raylib_bindings_internal.get_function[
            c_raylib_DrawCapsule
        ]("_DrawCapsule")
        self._draw_capsule_wires = raylib_bindings_internal.get_function[
            c_raylib_DrawCapsuleWires
        ]("_DrawCapsuleWires")
        self._draw_plane = raylib_bindings_internal.get_function[
            c_raylib_DrawPlane
        ]("_DrawPlane")
        self._draw_ray = raylib_bindings_internal.get_function[
            c_raylib_DrawRay
        ]("_DrawRay")
        self._draw_grid = raylib_bindings_internal.get_function[
            c_raylib_DrawGrid
        ]("_DrawGrid")

        # Model 3D loading and drawing functions (Module: models)

        # Model management functions
        self._load_model = raylib_internal.get_function[c_raylib_LoadModel](
            "LoadModel"
        )
        self._load_model_from_mesh = raylib_bindings_internal.get_function[
            c_raylib_LoadModelFromMesh
        ]("_LoadModelFromMesh")
        self._is_model_ready = raylib_bindings_internal.get_function[
            c_raylib_IsModelReady
        ]("_IsModelReady")
        self._unload_model = raylib_bindings_internal.get_function[
            c_raylib_UnloadModel
        ]("_UnloadModel")
        self._get_model_bounding_box = raylib_bindings_internal.get_function[
            c_raylib_GetModelBoundingBox
        ]("_GetModelBoundingBox")

        # Model drawing functions
        self._draw_model = raylib_bindings_internal.get_function[
            c_raylib_DrawModel
        ]("_DrawModel")
        self._draw_model_ex = raylib_bindings_internal.get_function[
            c_raylib_DrawModelEx
        ]("_DrawModelEx")
        self._draw_model_wires = raylib_bindings_internal.get_function[
            c_raylib_DrawModelWires
        ]("_DrawModelWires")
        self._draw_model_wires_ex = raylib_bindings_internal.get_function[
            c_raylib_DrawModelWiresEx
        ]("_DrawModelWiresEx")
        self._draw_bounding_box = raylib_bindings_internal.get_function[
            c_raylib_DrawBoundingBox
        ]("_DrawBoundingBox")
        self._draw_billboard = raylib_bindings_internal.get_function[
            c_raylib_DrawBillboard
        ]("_DrawBillboard")
        self._draw_billboard_rec = raylib_bindings_internal.get_function[
            c_raylib_DrawBillboardRec
        ]("_DrawBillboardRec")
        self._draw_billboard_pro = raylib_bindings_internal.get_function[
            c_raylib_DrawBillboardPro
        ]("_DrawBillboardPro")

        # Mesh management functions
        self._upload_mesh = raylib_internal.get_function[c_raylib_UploadMesh](
            "UploadMesh"
        )
        self._update_mesh_buffer = raylib_bindings_internal.get_function[
            c_raylib_UpdateMeshBuffer
        ]("_UpdateMeshBuffer")
        self._unload_mesh = raylib_internal.get_function[c_raylib_UnloadMesh](
            "UnloadMesh"
        )
        self._draw_mesh = raylib_bindings_internal.get_function[
            c_raylib_DrawMesh
        ]("_DrawMesh")
        self._draw_mesh_instanced = raylib_bindings_internal.get_function[
            c_raylib_DrawMeshInstanced
        ]("_DrawMeshInstanced")
        self._export_mesh = raylib_bindings_internal.get_function[
            c_raylib_ExportMesh
        ]("_ExportMesh")
        self._get_mesh_bounding_box = raylib_bindings_internal.get_function[
            c_raylib_GetMeshBoundingBox
        ]("_GetMeshBoundingBox")
        self._gen_mesh_tangents = raylib_bindings_internal.get_function[
            c_raylib_GenMeshTangents
        ]("_GenMeshTangents")

        # Mesh generation functions
        self._gen_mesh_poly = raylib_internal.get_function[
            c_raylib_GenMeshPoly
        ]("GenMeshPoly")
        self._gen_mesh_plane = raylib_internal.get_function[
            c_raylib_GenMeshPlane
        ]("GenMeshPlane")
        self._gen_mesh_cube = raylib_internal.get_function[
            c_raylib_GenMeshCube
        ]("GenMeshCube")
        self._gen_mesh_sphere = raylib_internal.get_function[
            c_raylib_GenMeshSphere
        ]("GenMeshSphere")
        self._gen_mesh_hemi_sphere = raylib_internal.get_function[
            c_raylib_GenMeshHemiSphere
        ]("GenMeshHemiSphere")
        self._gen_mesh_cylinder = raylib_internal.get_function[
            c_raylib_GenMeshCylinder
        ]("GenMeshCylinder")
        self._gen_mesh_cone = raylib_internal.get_function[
            c_raylib_GenMeshCone
        ]("GenMeshCone")
        self._gen_mesh_torus = raylib_internal.get_function[
            c_raylib_GenMeshTorus
        ]("GenMeshTorus")
        self._gen_mesh_knot = raylib_internal.get_function[
            c_raylib_GenMeshKnot
        ]("GenMeshKnot")
        self._gen_mesh_heightmap = raylib_bindings_internal.get_function[
            c_raylib_GenMeshHeightmap
        ]("_GenMeshHeightmap")
        self._gen_mesh_cubicmap = raylib_bindings_internal.get_function[
            c_raylib_GenMeshCubicmap
        ]("_GenMeshCubicmap")

        # Material loading/unloading functions
        self._load_materials = raylib_bindings_internal.get_function[
            c_raylib_LoadMaterials
        ]("_LoadMaterials")
        self._load_material_default = raylib_bindings_internal.get_function[
            c_raylib_LoadMaterialDefault
        ]("_LoadMaterialDefault")
        self._is_material_ready = raylib_bindings_internal.get_function[
            c_raylib_IsMaterialReady
        ]("_IsMaterialReady")
        self._unload_material = raylib_bindings_internal.get_function[
            c_raylib_UnloadMaterial
        ]("_UnloadMaterial")
        self._set_material_texture = raylib_bindings_internal.get_function[
            c_raylib_SetMaterialTexture
        ]("_SetMaterialTexture")
        self._set_model_mesh_material = raylib_bindings_internal.get_function[
            c_raylib_SetModelMeshMaterial
        ]("_SetModelMeshMaterial")

        # Model animations loading/unloading functions
        self._load_model_animations = raylib_internal.get_function[
            c_raylib_LoadModelAnimations
        ]("LoadModelAnimations")
        self._update_model_animation = raylib_bindings_internal.get_function[
            c_raylib_UpdateModelAnimation
        ]("_UpdateModelAnimation")
        self._unload_model_animation = raylib_bindings_internal.get_function[
            c_raylib_UnloadModelAnimation
        ]("_UnloadModelAnimation")
        self._unload_model_animations = raylib_bindings_internal.get_function[
            c_raylib_UnloadModelAnimations
        ]("_UnloadModelAnimations")
        self._is_model_animation_valid = raylib_bindings_internal.get_function[
            c_raylib_IsModelAnimationValid
        ]("_IsModelAnimationValid")

        # Collision detection functions
        self._check_collision_spheres = raylib_bindings_internal.get_function[
            c_raylib_CheckCollisionSpheres
        ]("_CheckCollisionSpheres")
        self._check_collision_boxes = raylib_bindings_internal.get_function[
            c_raylib_CheckCollisionBoxes
        ]("_CheckCollisionBoxes")
        self._check_collision_box_sphere = (
            raylib_bindings_internal.get_function[
                c_raylib_CheckCollisionBoxSphere
            ]("_CheckCollisionBoxSphere")
        )
        self._get_ray_collision_sphere = raylib_bindings_internal.get_function[
            c_raylib_GetRayCollisionSphere
        ]("_GetRayCollisionSphere")
        self._get_ray_collision_box = raylib_bindings_internal.get_function[
            c_raylib_GetRayCollisionBox
        ]("_GetRayCollisionBox")
        self._get_ray_collision_mesh = raylib_bindings_internal.get_function[
            c_raylib_GetRayCollisionMesh
        ]("_GetRayCollisionMesh")
        self._get_ray_collision_triangle = (
            raylib_bindings_internal.get_function[
                c_raylib_GetRayCollisionTriangle
            ]("_GetRayCollisionTriangle")
        )
        self._get_ray_collision_quad = raylib_bindings_internal.get_function[
            c_raylib_GetRayCollisionQuad
        ]("_GetRayCollisionQuad")

    @always_inline
    fn draw_line_3d(
        self,
        owned startPos: Vector3,
        owned endPos: Vector3,
        owned color: Color,
    ):
        """Draws a line in 3D space."""
        self._draw_line_3d(
            UnsafePointer.address_of(startPos),
            UnsafePointer.address_of(endPos),
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_point_3d(self, owned position: Vector3, owned color: Color):
        """Draws a point in 3D space."""
        self._draw_point_3d(
            UnsafePointer.address_of(position), UnsafePointer.address_of(color)
        )

    @always_inline
    fn draw_circle_3d(
        self,
        owned center: Vector3,
        radius: Float32,
        owned rotationAxis: Vector3,
        rotationAngle: Float32,
        owned color: Color,
    ):
        """Draws a circle in 3D space."""
        self._draw_circle_3d(
            UnsafePointer.address_of(center),
            radius,
            UnsafePointer.address_of(rotationAxis),
            rotationAngle,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_triangle_3d(
        self,
        owned v1: Vector3,
        owned v2: Vector3,
        owned v3: Vector3,
        owned color: Color,
    ):
        """Draws a triangle in 3D space."""
        self._draw_triangle_3d(
            UnsafePointer.address_of(v1),
            UnsafePointer.address_of(v2),
            UnsafePointer.address_of(v3),
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_triangle_strip_3d(
        self,
        points: UnsafePointer[Vector3],
        pointCount: Int32,
        owned color: Color,
    ):
        """Draws a triangle strip in 3D space."""
        self._draw_triangle_strip_3d(
            points,
            pointCount,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_cube(
        self,
        owned position: Vector3,
        width: Float32,
        height: Float32,
        length: Float32,
        owned color: Color,
    ):
        """Draws a cube."""
        self._draw_cube(
            UnsafePointer.address_of(position),
            width,
            height,
            length,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_cube_v(
        self,
        owned position: Vector3,
        owned size: Vector3,
        owned color: Color,
    ):
        """Draws a cube with a custom size."""
        self._draw_cube_v(
            UnsafePointer.address_of(position),
            UnsafePointer.address_of(size),
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_cube_wires(
        self,
        owned position: Vector3,
        width: Float32,
        height: Float32,
        length: Float32,
        owned color: Color,
    ):
        """Draws the wireframe of a cube."""
        self._draw_cube_wires(
            UnsafePointer.address_of(position),
            width,
            height,
            length,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_cube_wires_v(
        self,
        owned position: Vector3,
        owned size: Vector3,
        owned color: Color,
    ):
        """Draws the wireframe of a cube with a custom size."""
        self._draw_cube_wires_v(
            UnsafePointer.address_of(position),
            UnsafePointer.address_of(size),
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_sphere(
        self,
        owned center_pos: Vector3,
        radius: Float32,
        owned color: Color,
    ):
        """Draws a sphere."""
        self._draw_sphere(
            UnsafePointer.address_of(center_pos),
            radius,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_sphere_ex(
        self,
        owned center_pos: Vector3,
        radius: Float32,
        rings: Int32,
        slices: Int32,
        owned color: Color,
    ):
        """Draws a sphere with extended parameters."""
        self._draw_sphere_ex(
            UnsafePointer.address_of(center_pos),
            radius,
            rings,
            slices,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_sphere_wires(
        self,
        owned center_pos: Vector3,
        radius: Float32,
        rings: Int32,
        slices: Int32,
        owned color: Color,
    ):
        """Draws the wireframe of a sphere."""
        self._draw_sphere_wires(
            UnsafePointer.address_of(center_pos),
            radius,
            rings,
            slices,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_cylinder(
        self,
        owned position: Vector3,
        radius_top: Float32,
        radius_bottom: Float32,
        height: Float32,
        slices: Int32,
        owned color: Color,
    ):
        """Draws a cylinder."""
        self._draw_cylinder(
            UnsafePointer.address_of(position),
            radius_top,
            radius_bottom,
            height,
            slices,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_cylinder_ex(
        self,
        owned start_pos: Vector3,
        owned end_pos: Vector3,
        start_radius: Float32,
        end_radius: Float32,
        sides: Int32,
        owned color: Color,
    ):
        """Draws a cylinder with extended parameters."""
        self._draw_cylinder_ex(
            UnsafePointer.address_of(start_pos),
            UnsafePointer.address_of(end_pos),
            start_radius,
            end_radius,
            sides,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_cylinder_wires(
        self,
        owned position: Vector3,
        radius_top: Float32,
        radius_bottom: Float32,
        height: Float32,
        slices: Int32,
        owned color: Color,
    ):
        """Draw a cylinder/cone wires."""
        self._draw_cylinder_wires(
            UnsafePointer.address_of(position),
            radius_top,
            radius_bottom,
            height,
            slices,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_cylinder_wires_ex(
        self,
        owned start_pos: Vector3,
        owned end_pos: Vector3,
        start_radius: Float32,
        end_radius: Float32,
        sides: Int32,
        owned color: Color,
    ):
        """Draw a cylinder wires with base at startPos and top at endPos."""
        self._draw_cylinder_wires_ex(
            UnsafePointer.address_of(start_pos),
            UnsafePointer.address_of(end_pos),
            start_radius,
            end_radius,
            sides,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_capsule(
        self,
        owned start_pos: Vector3,
        owned end_pos: Vector3,
        radius: Float32,
        slices: Int32,
        rings: Int32,
        owned color: Color,
    ):
        """Draws a capsule."""
        self._draw_capsule(
            UnsafePointer.address_of(start_pos),
            UnsafePointer.address_of(end_pos),
            radius,
            slices,
            rings,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_capsule_wires(
        self,
        owned start_pos: Vector3,
        owned end_pos: Vector3,
        radius: Float32,
        slices: Int32,
        rings: Int32,
        owned color: Color,
    ):
        """Draw capsule wireframe with the center of its sphere caps at startPos and endPos."""
        self._draw_capsule_wires(
            UnsafePointer.address_of(start_pos),
            UnsafePointer.address_of(end_pos),
            radius,
            slices,
            rings,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_plane(
        self,
        owned center_pos: Vector3,
        owned size: Vector2,
        owned color: Color,
    ):
        """Draws a plane XZ."""
        self._draw_plane(
            UnsafePointer.address_of(center_pos),
            UnsafePointer.address_of(size),
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_ray(self, owned ray: Ray, owned color: Color):
        """Draws a ray line."""
        self._draw_ray(
            UnsafePointer.address_of(ray),
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_grid(
        self,
        slices: Int32,
        spacing: Float32,
    ):
        """Draws a grid centered at (0, 0, 0)."""
        self._draw_grid(slices, spacing)

    @always_inline
    fn load_model(self, owned file_name: String) -> Model:
        """Loads a model from a file (meshes and materials)."""
        return self._load_model(file_name.unsafe_ptr())

    @always_inline
    fn load_model_from_mesh(self, owned mesh: Mesh) -> Model:
        """Loads a model from a mesh (default material)."""
        return self._load_model_from_mesh(UnsafePointer.address_of(mesh))

    @always_inline
    fn unload_model(self, owned model: Model):
        """Unloads a model (including meshes) from memory (RAM and/or VRAM)."""
        self._unload_model(UnsafePointer.address_of(model))

    @always_inline
    fn is_model_ready(self, owned model: Model) -> Bool:
        """Checks if a model is ready to be used."""
        return self._is_model_ready(UnsafePointer.address_of(model))

    @always_inline
    fn get_model_bounding_box(self, owned model: Model) -> BoundingBox:
        """Compute model bounding box limits (considers all meshes)."""
        return self._get_model_bounding_box(UnsafePointer.address_of(model))

    @always_inline
    fn draw_model(
        self,
        model: UnsafePointer[Model],
        position: UnsafePointer[Vector3],
        scale: Float32,
        tint: UnsafePointer[Color],
    ):
        """Draw a model (with texture if set)."""
        self._draw_model(model, position, scale, tint)

    @always_inline
    fn draw_model_ex(
        self,
        model: UnsafePointer[Model],
        position: UnsafePointer[Vector3],
        rotation_axis: UnsafePointer[Vector3],
        rotation_angle: Float32,
        scale: UnsafePointer[Vector3],
        tint: UnsafePointer[Color],
    ):
        """Draws a model with extended parameters."""
        self._draw_model_ex(
            model, position, rotation_axis, rotation_angle, scale, tint
        )

    @always_inline
    fn draw_model_wires(
        self,
        model: UnsafePointer[Model],
        position: UnsafePointer[Vector3],
        scale: Float32,
        tint: UnsafePointer[Color],
    ):
        """Draws the wireframe of a model (with textures if set)."""
        self._draw_model_wires(model, position, scale, tint)

    @always_inline
    fn draw_model_wires_ex(
        self,
        model: UnsafePointer[Model],
        position: UnsafePointer[Vector3],
        rotation_axis: UnsafePointer[Vector3],
        rotation_angle: Float32,
        scale: UnsafePointer[Vector3],
        tint: UnsafePointer[Color],
    ):
        """Draws the wireframe of a model with extended parameters."""
        self._draw_model_wires_ex(
            model, position, rotation_axis, rotation_angle, scale, tint
        )

    @always_inline
    fn draw_bounding_box(
        self, box: UnsafePointer[BoundingBox], color: UnsafePointer[Color]
    ):
        """Draws a bounding box (wires)."""
        self._draw_bounding_box(box, color)

    @always_inline
    fn draw_billboard(
        self,
        camera: UnsafePointer[Camera],
        texture: UnsafePointer[Texture2D],
        position: UnsafePointer[Vector3],
        size: Float32,
        tint: UnsafePointer[Color],
    ):
        """Draws a billboard (texture)."""
        self._draw_billboard(camera, texture, position, size, tint)

    @always_inline
    fn draw_billboard_rec(
        self,
        camera: UnsafePointer[Camera],
        texture: UnsafePointer[Texture2D],
        source: UnsafePointer[Rectangle],
        position: UnsafePointer[Vector3],
        size: UnsafePointer[Vector2],
        tint: UnsafePointer[Color],
    ):
        """Draws a billboard with a source rectangle."""
        self._draw_billboard_rec(camera, texture, source, position, size, tint)

    @always_inline
    fn draw_billboard_pro(
        self,
        camera: UnsafePointer[Camera],
        texture: UnsafePointer[Texture2D],
        source: UnsafePointer[Rectangle],
        position: UnsafePointer[Vector3],
        up: UnsafePointer[Vector3],
        size: UnsafePointer[Vector2],
        origin: UnsafePointer[Vector2],
        rotation: Float32,
        tint: UnsafePointer[Color],
    ):
        """Draws a billboard with extended parameters."""
        self._draw_billboard_pro(
            camera, texture, source, position, up, size, origin, rotation, tint
        )

    @always_inline
    fn upload_mesh(self, mesh: UnsafePointer[Mesh], dynamic: Bool):
        """Uploads mesh data to GPU memory."""
        self._upload_mesh(mesh, dynamic)

    @always_inline
    fn update_mesh_buffer(
        self,
        owned mesh: Mesh,
        index: Int32,
        data: UnsafePointer[NoneType],
        data_size: Int32,
        offset: Int32,
    ):
        """Updates a mesh buffer with new data."""
        self._update_mesh_buffer(
            UnsafePointer.address_of(mesh), index, data, data_size, offset
        )

    @always_inline
    fn unload_mesh(self, owned mesh: Mesh):
        """Unloads a mesh."""
        self._unload_mesh(UnsafePointer.address_of(mesh))

    @always_inline
    fn draw_mesh(
        self,
        owned mesh: Mesh,
        owned material: Material,
        owned transform: Matrix,
    ):
        """Draws a mesh."""
        self._draw_mesh(
            UnsafePointer.address_of(mesh),
            UnsafePointer.address_of(material),
            UnsafePointer.address_of(transform),
        )

    @always_inline
    fn draw_mesh_instanced(
        self,
        owned mesh: Mesh,
        owned material: Material,
        transforms: UnsafePointer[Matrix],
        instances: Int32,
    ):
        """Draws multiple instances of a mesh."""
        self._draw_mesh_instanced(
            UnsafePointer.address_of(mesh),
            UnsafePointer.address_of(material),
            transforms,
            instances,
        )

    @always_inline
    fn export_mesh(self, owned mesh: Mesh, file_name: String) -> Bool:
        """Exports a mesh to a file."""
        return self._export_mesh(
            UnsafePointer.address_of(mesh), file_name.unsafe_ptr()
        )

    @always_inline
    fn get_mesh_bounding_box(self, owned mesh: Mesh) -> BoundingBox:
        """Gets the bounding box of a mesh."""
        return self._get_mesh_bounding_box(UnsafePointer.address_of(mesh))

    @always_inline
    fn gen_mesh_tangents(self, mesh: UnsafePointer[Mesh]):
        """Generates mesh tangents."""
        self._gen_mesh_tangents(mesh)

    @always_inline
    fn gen_mesh_poly(self, sides: Int32, radius: Float32) -> Mesh:
        """Generates a polygon mesh."""
        return self._gen_mesh_poly(sides, radius)

    @always_inline
    fn gen_mesh_plane(
        self, width: Float32, length: Float32, res_x: Int32, res_z: Int32
    ) -> Mesh:
        """Generates a plane mesh."""
        return self._gen_mesh_plane(width, length, res_x, res_z)

    @always_inline
    fn gen_mesh_cube(
        self, width: Float32, height: Float32, length: Float32
    ) -> Mesh:
        """Generates a cube mesh."""
        return self._gen_mesh_cube(width, height, length)

    @always_inline
    fn gen_mesh_sphere(
        self, radius: Float32, rings: Int32, slices: Int32
    ) -> Mesh:
        """Generates a sphere mesh."""
        return self._gen_mesh_sphere(radius, rings, slices)

    @always_inline
    fn gen_mesh_hemi_sphere(
        self, radius: Float32, rings: Int32, slices: Int32
    ) -> Mesh:
        """Generates a hemisphere sphere mesh."""
        return self._gen_mesh_hemi_sphere(radius, rings, slices)

    @always_inline
    fn gen_mesh_cylinder(
        self, radius: Float32, height: Float32, slices: Int32
    ) -> Mesh:
        """Generates a cylinder mesh."""
        return self._gen_mesh_cylinder(radius, height, slices)

    @always_inline
    fn gen_mesh_cone(
        self, radius: Float32, height: Float32, slices: Int32
    ) -> Mesh:
        """Generates a cone mesh."""
        return self._gen_mesh_cone(radius, height, slices)

    @always_inline
    fn gen_mesh_torus(
        self, radius: Float32, size: Float32, rad_seg: Int32, sides: Int32
    ) -> Mesh:
        """Generates a torus mesh."""
        return self._gen_mesh_torus(radius, size, rad_seg, sides)

    @always_inline
    fn gen_mesh_knot(
        self, radius: Float32, size: Float32, rad_seg: Int32, sides: Int32
    ) -> Mesh:
        """Generates a knot mesh."""
        return self._gen_mesh_knot(radius, size, rad_seg, sides)

    @always_inline
    fn gen_mesh_heightmap(
        self, heightmap: UnsafePointer[Image], size: UnsafePointer[Vector3]
    ) -> Mesh:
        """Generates a mesh from a heightmap image."""
        return self._gen_mesh_heightmap(heightmap, size)

    @always_inline
    fn gen_mesh_cubicmap(
        self, cubicmap: UnsafePointer[Image], cube_size: UnsafePointer[Vector3]
    ) -> Mesh:
        """Generates a mesh from a cubicmap image."""
        return self._gen_mesh_cubicmap(cubicmap, cube_size)

    @always_inline
    fn load_materials(
        self,
        file_name: String,
        material_count: UnsafePointer[Int32],
    ) -> UnsafePointer[Material]:
        """Loads materials from a file."""
        return self._load_materials(file_name.unsafe_ptr(), material_count)

    @always_inline
    fn load_material_default(self) -> Material:
        """Loads the default material."""
        return self._load_material_default()

    @always_inline
    fn is_material_ready(self, owned material: Material) -> Bool:
        """Checks if a material is ready to be used."""
        return self._is_material_ready(UnsafePointer.address_of(material))

    @always_inline
    fn unload_material(self, owned material: Material):
        """Unloads a material."""
        self._unload_material(UnsafePointer.address_of(material))

    @always_inline
    fn set_material_texture(
        self,
        material: UnsafePointer[Material],
        map_type: Int32,
        owned texture: Texture2D,
    ):
        """Sets a texture for a material."""
        self._set_material_texture(
            material, map_type, UnsafePointer.address_of(texture)
        )

    @always_inline
    fn set_model_mesh_material(
        self, model: UnsafePointer[Model], mesh_id: Int32, material_id: Int32
    ):
        """Sets the material for a model mesh."""
        self._set_model_mesh_material(model, mesh_id, material_id)

    @always_inline
    fn load_model_animations(
        self, file_name: String, anim_count: UnsafePointer[Int32]
    ) -> UnsafePointer[ModelAnimation]:
        """Loads model animations from a file."""
        return self._load_model_animations(file_name.unsafe_ptr(), anim_count)

    @always_inline
    fn update_model_animation(
        self, owned model: Model, owned anim: ModelAnimation, frame: Int32
    ):
        """Updates a model animation."""
        self._update_model_animation(
            UnsafePointer.address_of(model),
            UnsafePointer.address_of(anim),
            frame,
        )

    @always_inline
    fn unload_model_animation(self, owned anim: ModelAnimation):
        """Unloads a model animation."""
        self._unload_model_animation(UnsafePointer.address_of(anim))

    @always_inline
    fn unload_model_animations(
        self, animations: UnsafePointer[ModelAnimation], anim_count: Int32
    ):
        """Unloads multiple model animations."""
        self._unload_model_animations(animations, anim_count)

    @always_inline
    fn is_model_animation_valid(
        self, owned model: Model, owned anim: ModelAnimation
    ) -> Bool:
        """Checks if a model animation is valid."""
        return self._is_model_animation_valid(
            UnsafePointer.address_of(model), UnsafePointer.address_of(anim)
        )

    @always_inline
    fn check_collision_spheres(
        self,
        owned center1: Vector3,
        radius1: Float32,
        owned center2: Vector3,
        radius2: Float32,
    ) -> Bool:
        """Checks collision between two spheres."""
        return self._check_collision_spheres(
            UnsafePointer.address_of(center1),
            radius1,
            UnsafePointer.address_of(center2),
            radius2,
        )

    @always_inline
    fn check_collision_boxes(
        self, owned box1: BoundingBox, owned box2: BoundingBox
    ) -> Bool:
        """Checks collision between two boxes."""
        return self._check_collision_boxes(
            UnsafePointer.address_of(box1), UnsafePointer.address_of(box2)
        )

    @always_inline
    fn check_collision_box_sphere(
        self,
        owned box: BoundingBox,
        owned center: Vector3,
        radius: Float32,
    ) -> Bool:
        """Checks collision between a box and a sphere."""
        return self._check_collision_box_sphere(
            UnsafePointer.address_of(box),
            UnsafePointer.address_of(center),
            radius,
        )

    @always_inline
    fn get_ray_collision_sphere(
        self, owned ray: Ray, owned center: Vector3, radius: Float32
    ) -> RayCollision:
        """Gets the collision between a ray and a sphere."""
        return self._get_ray_collision_sphere(
            UnsafePointer.address_of(ray),
            UnsafePointer.address_of(center),
            radius,
        )

    @always_inline
    fn get_ray_collision_box(
        self, owned ray: Ray, owned box: BoundingBox
    ) -> RayCollision:
        """Gets the collision between a ray and a box."""
        return self._get_ray_collision_box(
            UnsafePointer.address_of(ray), UnsafePointer.address_of(box)
        )

    @always_inline
    fn get_ray_collision_mesh(
        self, owned ray: Ray, owned mesh: Mesh, owned transform: Matrix
    ) -> RayCollision:
        """Gets the collision between a ray and a mesh."""
        return self._get_ray_collision_mesh(
            UnsafePointer.address_of(ray),
            UnsafePointer.address_of(mesh),
            UnsafePointer.address_of(transform),
        )

    @always_inline
    fn get_ray_collision_triangle(
        self,
        owned ray: Ray,
        owned p1: Vector3,
        owned p2: Vector3,
        owned p3: Vector3,
    ) -> RayCollision:
        """Gets the collision between a ray and a triangle."""
        return self._get_ray_collision_triangle(
            UnsafePointer.address_of(ray),
            UnsafePointer.address_of(p1),
            UnsafePointer.address_of(p2),
            UnsafePointer.address_of(p3),
        )

    @always_inline
    fn get_ray_collision_quad(
        self,
        owned ray: Ray,
        owned p1: Vector3,
        owned p2: Vector3,
        owned p3: Vector3,
        owned p4: Vector3,
    ) -> RayCollision:
        """Gets the collision between a ray and a quad."""
        return self._get_ray_collision_quad(
            UnsafePointer.address_of(ray),
            UnsafePointer.address_of(p1),
            UnsafePointer.address_of(p2),
            UnsafePointer.address_of(p3),
            UnsafePointer.address_of(p4),
        )
