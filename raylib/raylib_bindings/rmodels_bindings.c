#include "rmodels_bindings.h"

// Basic geometric 3D shapes drawing functions
void _DrawLine3D(Vector3 *startPos, Vector3 *endPos, Color *color) {
    DrawLine3D(*startPos, *endPos, *color);
}

void _DrawPoint3D(Vector3 *position, Color *color) {
    DrawPoint3D(*position, *color);
}

void _DrawCircle3D(Vector3 *center, float radius, Vector3 *rotationAxis, float rotationAngle, Color *color) {
    DrawCircle3D(*center, radius, *rotationAxis, rotationAngle, *color);
}

void _DrawTriangle3D(Vector3 *v1, Vector3 *v2, Vector3 *v3, Color *color) {
    DrawTriangle3D(*v1, *v2, *v3, *color);
}

void _DrawTriangleStrip3D(Vector3 *points, int pointCount, Color *color) {
    DrawTriangleStrip3D(points, pointCount, *color);
}

void _DrawCube(Vector3 *position, float width, float height, float length, Color *color) {
    DrawCube(*position, width, height, length, *color);
}

void _DrawCubeV(Vector3 *position, Vector3 *size, Color *color) {
    DrawCubeV(*position, *size, *color);
}

void _DrawCubeWires(Vector3 *position, float width, float height, float length, Color *color) {
    DrawCubeWires(*position, width, height, length, *color);
}

void _DrawCubeWiresV(Vector3 *position, Vector3 *size, Color *color) {
    DrawCubeWiresV(*position, *size, *color);
}

void _DrawSphere(Vector3 *centerPos, float radius, Color *color) {
    DrawSphere(*centerPos, radius, *color);
}

void _DrawSphereEx(Vector3 *centerPos, float radius, int rings, int slices, Color *color) {
    DrawSphereEx(*centerPos, radius, rings, slices, *color);
}

void _DrawSphereWires(Vector3 *centerPos, float radius, int rings, int slices, Color *color) {
    DrawSphereWires(*centerPos, radius, rings, slices, *color);
}

void _DrawCylinder(Vector3 *position, float radiusTop, float radiusBottom, float height, int slices, Color *color) {
    DrawCylinder(*position, radiusTop, radiusBottom, height, slices, *color);
}

void _DrawCylinderEx(Vector3 *startPos, Vector3 *endPos, float startRadius, float endRadius, int sides, Color *color) {
    DrawCylinderEx(*startPos, *endPos, startRadius, endRadius, sides, *color);
}

void _DrawCylinderWires(Vector3 *position, float radiusTop, float radiusBottom, float height, int slices, Color *color) {
    DrawCylinderWires(*position, radiusTop, radiusBottom, height, slices, *color);
}

void _DrawCylinderWiresEx(Vector3 *startPos, Vector3 *endPos, float startRadius, float endRadius, int sides, Color *color) {
    DrawCylinderWiresEx(*startPos, *endPos, startRadius, endRadius, sides, *color);
}

void _DrawCapsule(Vector3 *startPos, Vector3 *endPos, float radius, int slices, int rings, Color *color) {
    DrawCapsule(*startPos, *endPos, radius, slices, rings, *color);
}

void _DrawCapsuleWires(Vector3 *startPos, Vector3 *endPos, float radius, int slices, int rings, Color *color) {
    DrawCapsuleWires(*startPos, *endPos, radius, slices, rings, *color);
}

void _DrawPlane(Vector3 *centerPos, Vector2 *size, Color *color) {
    DrawPlane(*centerPos, *size, *color);
}

void _DrawRay(Ray *ray, Color *color) {
    DrawRay(*ray, *color);
}

// Model 3d loading and drawing functions (Module: models)

// Model management functions
Model _LoadModelFromMesh(Mesh *mesh) {
    return LoadModelFromMesh(*mesh);
}

void _UnloadModel(Model *model) {
    UnloadModel(*model);
}

bool _IsModelReady(Model *model) {
    return IsModelReady(*model);
}

BoundingBox _GetModelBoundingBox(Model *model) {
    return GetModelBoundingBox(*model);
}

// Model drawing functions
void _DrawModel(Model *model, Vector3 *position, float scale, Color *tint) {
    DrawModel(*model, *position, scale, *tint);
}

void _DrawModelEx(Model *model, Vector3 *position, Vector3 *rotationAxis, float rotationAngle, Vector3 *scale, Color *tint) {
    DrawModelEx(*model, *position, *rotationAxis, rotationAngle, *scale, *tint);
}

void _DrawModelWires(Model *model, Vector3 *position, float scale, Color *tint) {
    DrawModelWires(*model, *position, scale, *tint);
}

void _DrawModelWiresEx(Model *model, Vector3 *position, Vector3 *rotationAxis, float rotationAngle, Vector3 *scale, Color *tint) {
    DrawModelWiresEx(*model, *position, *rotationAxis, rotationAngle, *scale, *tint);
}

void _DrawBoundingBox(BoundingBox *box, Color *color) {
    DrawBoundingBox(*box, *color);
}

void _DrawBillboard(Camera *camera, Texture2D *texture, Vector3 *position, float size, Color *tint) {
    DrawBillboard(*camera, *texture, *position, size, *tint);
}

void _DrawBillboardRec(Camera *camera, Texture2D *texture, Rectangle *source, Vector3 *position, Vector2 *size, Color *tint) {
    DrawBillboardRec(*camera, *texture, *source, *position, *size, *tint);
}

void _DrawBillboardPro(Camera *camera, Texture2D *texture, Rectangle *source, Vector3 *position, Vector3 *up, Vector2 *size, Vector2 *origin, float rotation, Color *tint) {
    DrawBillboardPro(*camera, *texture, *source, *position, *up, *size, *origin, rotation, *tint);
}

// Mesh management functions
void _UpdateMeshBuffer(Mesh *mesh, int index, const void *data, int dataSize, int offset) {
    UpdateMeshBuffer(*mesh, index, data, dataSize, offset);
}

void _UnloadMesh(Mesh *mesh) {
    UnloadMesh(*mesh);
}

void _DrawMesh(Mesh *mesh, Material *material, Matrix *transform) {
    DrawMesh(*mesh, *material, *transform);
}

void _DrawMeshInstanced(Mesh *mesh, Material *material, const Matrix *transforms, int instances) {
    DrawMeshInstanced(*mesh, *material, transforms, instances);
}

bool _ExportMesh(Mesh *mesh, const char *fileName) {
    return ExportMesh(*mesh, fileName);
}

BoundingBox _GetMeshBoundingBox(Mesh *mesh) {
    return GetMeshBoundingBox(*mesh);
}

void _GenMeshTangents(Mesh *mesh) {
    GenMeshTangents(mesh);
}

// Mesh generation functions
Mesh _GenMeshHeightmap(Image *heightmap, Vector3 *size) {
    return GenMeshHeightmap(*heightmap, *size);
}

Mesh _GenMeshCubicmap(Image *cubicmap, Vector3 *cubeSize) {
    return GenMeshCubicmap(*cubicmap, *cubeSize);
}

// Material loading/unloading functions
bool _IsMaterialReady(Material *material) {
    return IsMaterialReady(*material);
}

void _UnloadMaterial(Material *material) {
    UnloadMaterial(*material);
}

void _SetMaterialTexture(Material *material, int mapType, Texture2D *texture) {
    SetMaterialTexture(material, mapType, *texture);
}

void _SetModelMeshMaterial(Model *model, int meshId, int materialId) {
    SetModelMeshMaterial(model, meshId, materialId);
}

// Model animations loading/unloading functions
void _UpdateModelAnimation(Model *model, ModelAnimation *anim, int frame) {
    UpdateModelAnimation(*model, *anim, frame);
}

void _UnloadModelAnimation(ModelAnimation *anim) {
    UnloadModelAnimation(*anim);
}

bool _IsModelAnimationValid(Model *model, ModelAnimation *anim) {
    return IsModelAnimationValid(*model, *anim);
}

// Collision detection functions
bool _CheckCollisionSpheres(Vector3 *center1, float radius1, Vector3 *center2, float radius2) {
    return CheckCollisionSpheres(*center1, radius1, *center2, radius2);
}

bool _CheckCollisionBoxes(BoundingBox *box1, BoundingBox *box2) {
    return CheckCollisionBoxes(*box1, *box2);
}

bool _CheckCollisionBoxSphere(BoundingBox *box, Vector3 *center, float radius) {
    return CheckCollisionBoxSphere(*box, *center, radius);
}

RayCollision _GetRayCollisionSphere(Ray *ray, Vector3 *center, float radius) {
    return GetRayCollisionSphere(*ray, *center, radius);
}

RayCollision _GetRayCollisionBox(Ray *ray, BoundingBox *box) {
    return GetRayCollisionBox(*ray, *box);
}

RayCollision _GetRayCollisionMesh(Ray *ray, Mesh *mesh, Matrix *transform) {
    return GetRayCollisionMesh(*ray, *mesh, *transform);
}

RayCollision _GetRayCollisionTriangle(Ray *ray, Vector3 *p1, Vector3 *p2, Vector3 *p3) {
    return GetRayCollisionTriangle(*ray, *p1, *p2, *p3);
}

RayCollision _GetRayCollisionQuad(Ray *ray, Vector3 *p1, Vector3 *p2, Vector3 *p3, Vector3 *p4) {
    return GetRayCollisionQuad(*ray, *p1, *p2, *p3, *p4);
}
