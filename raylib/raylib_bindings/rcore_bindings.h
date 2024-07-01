#include "raylib.h"

// Window-related functions
void _SetWindowIcon(Image *image);

// Drawing-related functions
void _ClearBackground(Color *color);
void _BeginMode2D(Camera2D *camera);
void _BeginMode3D(Camera3D *camera);
void _BeginTextureMode(RenderTexture2D *target);
void _BeginShaderMode(Shader *shader);
void _BeginVrStereoMode(VrStereoConfig *config);

// VR stereo config functions for VR simulator
VrStereoConfig _LoadVrStereoConfig(VrDeviceInfo *device);
void _UnloadVrStereoConfig(VrStereoConfig *config);

// Shader management functions
bool _IsShaderReady(Shader *shader);
int _GetShaderLocation(Shader *shader, const char *uniformName);
int _GetShaderLocationAttrib(Shader *shader, const char *attribName);
void _SetShaderValue(Shader *shader, int uniformLoc, const void *value, int uniformType);
void _SetShaderValueV(Shader *shader, int uniformLoc, const void *value, int uniformType, int count);
void _SetShaderValueMatrix(Shader *shader, int uniformLoc, Matrix *mat);
void _SetShaderValueTexture(Shader *shader, int uniformLoc, Texture2D *texture);
void _UnloadShader(Shader *shader);

// Screen-space-related functions
Ray _GetMouseRay(Vector2 *mousePosition, Camera *camera);
Matrix _GetCameraMatrix(Camera *camera);
Matrix _GetCameraMatrix2D(Camera2D *camera);
Vector2 _GetWorldToScreen(Vector3 *position, Camera *camera);
Vector2 _GetScreenToWorld2D(Vector2 *position, Camera2D *camera);
Vector2 _GetWorldToScreenEx(Vector3 *position, Camera *camera, int width, int height);
Vector2 _GetWorldToScreen2D(Vector2 *position, Camera2D *camera);

// Set custom callbacks
// WARNING: Callbacks setup is intended for advance users
void _SetTraceLogCallback(TraceLogCallback *callback);
void _SetLoadFileDataCallback(LoadFileDataCallback *callback);
void _SetSaveFileDataCallback(SaveFileDataCallback *callback);
void _SetLoadFileTextCallback(LoadFileTextCallback *callback);
void _SetSaveFileTextCallback(SaveFileTextCallback *callback);

// File system functions
void _UnloadDirectoryFiles(FilePathList *files);
void _UnloadDroppedFiles(FilePathList *files);

// Automation events functionality
bool _ExportAutomationEventList(AutomationEventList *list, const char *fileName);
void _PlayAutomationEvent(AutomationEvent *automationEvent);

// Camera System Functions (Module: rcamera)
void _UpdateCameraPro(Camera *camera, Vector3 *movement, Vector3 *rotation, float zoom);