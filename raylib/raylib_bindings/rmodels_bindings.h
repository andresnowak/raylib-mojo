#include "raylib.h"

// Basic geometric 3D shapes drawing functions
void _DrawLine3D(Vector3 *startPos, Vector3 *endPos, Color *color);
void _DrawPoint3D(Vector3 *position, Color *color);
void _DrawCircle3D(Vector3 *center, float radius, Vector3 *rotationAxis, float rotationAngle, Color *color);
void _DrawTriangle3D(Vector3 *v1, Vector3 *v2, Vector3 *v3, Color *color);
void _DrawTriangleStrip3D(Vector3 *points, int pointCount, Color *color);
void _DrawCube(Vector3 *position, float width, float height, float length, Color *color);
void _DrawCubeV(Vector3 *position, Vector3 *size, Color *color);
void _DrawCubeWires(Vector3 *position, float width, float height, float length, Color *color);
void _DrawCubeWiresV(Vector3 *position, Vector3 *size, Color *color);
void _DrawSphere(Vector3 *centerPos, float radius, Color *color);
void _DrawSphereEx(Vector3 *centerPos, float radius, int rings, int slices, Color *color);
void _DrawSphereWires(Vector3 *centerPos, float radius, int rings, int slices, Color *color);
void _DrawCylinder(Vector3 *position, float radiusTop, float radiusBottom, float height, int slices, Color *color);
void _DrawCylinderEx(Vector3 *startPos, Vector3 *endPos, float startRadius, float endRadius, int sides, Color *color);
void _DrawCylinderWires(Vector3 *position, float radiusTop, float radiusBottom, float height, int slices, Color *color);
void _DrawCylinderWiresEx(Vector3 *startPos, Vector3 *endPos, float startRadius, float endRadius, int sides, Color *color);
void _DrawCapsule(Vector3 *startPos, Vector3 *endPos, float radius, int slices, int rings, Color *color);
void _DrawCapsuleWires(Vector3 *startPos, Vector3 *endPos, float radius, int slices, int rings, Color *color);
void _DrawPlane(Vector3 *centerPos, Vector2 *size, Color *color);
void _DrawRay(Ray *ray, Color *color);

// Model 3d loading and drawing functions (Module: models)

// Model management functions
Model _LoadModelFromMesh(Mesh *mesh);
void _UnloadModel(Model *model);
bool _IsModelReady(Model *model);
BoundingBox _GetModelBoundingBox(Model *model);

// Model drawing functions
void _DrawModel(Model *model, Vector3 *position, float scale, Color *tint);
void _DrawModelEx(Model *model, Vector3 *position, Vector3 *rotationAxis, float rotationAngle, Vector3 *scale, Color *tint);
void _DrawModelWires(Model *model, Vector3 *position, float scale, Color *tint);
void _DrawModelWiresEx(Model *model, Vector3 *position, Vector3 *rotationAxis, float rotationAngle, Vector3 *scale, Color *tint);
void _DrawBoundingBox(BoundingBox *box, Color *color);
void _DrawBillboard(Camera *camera, Texture2D *texture, Vector3 *position, float size, Color *tint);
void _DrawBillboardRec(Camera *camera, Texture2D *texture, Rectangle *source, Vector3 *position, Vector2 *size, Color *tint);
void _DrawBillboardPro(Camera *camera, Texture2D *texture, Rectangle *source, Vector3 *position, Vector3 *up, Vector2 *size, Vector2 *origin, float rotation, Color *tint);

// Mesh management functions
void _UpdateMeshBuffer(Mesh *mesh, int index, const void *data, int dataSize, int offset);
void _UnloadMesh(Mesh *mesh);
void _DrawMesh(Mesh *mesh, Material *material, Matrix *transform);
void _DrawMeshInstanced(Mesh *mesh, Material *material, const Matrix *transforms, int instances);
bool _ExportMesh(Mesh *mesh, const char *fileName);
BoundingBox _GetMeshBoundingBox(Mesh *mesh);
void _GenMeshTangents(Mesh *mesh);

// Mesh generation functions
Mesh _GenMeshHeightmap(Image *heightmap, Vector3 *size);
Mesh _GenMeshCubicmap(Image *cubicmap, Vector3 *cubeSize);

// Material loading/unloading functions
bool _IsMaterialReady(Material *material);
void _UnloadMaterial(Material *material);
void _SetMaterialTexture(Material *material, int mapType, Texture2D *texture);
void _SetModelMeshMaterial(Model *model, int meshId, int materialId);

// Model animations loading/unloading functions
void _UpdateModelAnimation(Model *model, ModelAnimation *anim, int frame);
void _UnloadModelAnimation(ModelAnimation *anim);
bool _IsModelAnimationValid(Model *model, ModelAnimation *anim);

// Collision detection functions
bool _CheckCollisionSpheres(Vector3 *center1, float radius1, Vector3 *center2, float radius2);
bool _CheckCollisionBoxes(BoundingBox *box1, BoundingBox *box2);
bool _CheckCollisionBoxSphere(BoundingBox *box, Vector3 *center, float radius);
RayCollision _GetRayCollisionSphere(Ray *ray, Vector3 *center, float radius);
RayCollision _GetRayCollisionBox(Ray *ray, BoundingBox *box);
RayCollision _GetRayCollisionMesh(Ray *ray, Mesh *mesh, Matrix *transform);
RayCollision _GetRayCollisionTriangle(Ray *ray, Vector3 *p1, Vector3 *p2, Vector3 *p3);
RayCollision _GetRayCollisionQuad(Ray *ray, Vector3 *p1, Vector3 *p2, Vector3 *p3, Vector3 *p4);
