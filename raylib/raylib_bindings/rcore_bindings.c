#include "rcore_bindings.h"

// Window-related functions
void _SetWindowIcon(Image *image) {
    SetWindowIcon(*image);
}

// Drawing-related functions
void _ClearBackground(Color *color) {
    ClearBackground(*color);
}

void _BeginMode2D(Camera2D *camera) {
    BeginMode2D(*camera);
}

void _BeginMode3D(Camera3D *camera) {
    BeginMode3D(*camera);
}

void _BeginTextureMode(RenderTexture2D *target) {
    BeginTextureMode(*target);
}

void _BeginShaderMode(Shader *shader) {
    BeginShaderMode(*shader);
}

void _BeginVrStereoMode(VrStereoConfig *config) {
    BeginVrStereoMode(*config);
}

// VR stereo config functions for VR simulator
VrStereoConfig _LoadVrStereoConfig(VrDeviceInfo *device) {
    return LoadVrStereoConfig(*device);
}

void _UnloadVrStereoConfig(VrStereoConfig *config) {
    UnloadVrStereoConfig(*config);
}

// Shader management functions
bool _IsShaderReady(Shader *shader) {
    return IsShaderReady(*shader);
}

int _GetShaderLocation(Shader *shader, const char *uniformName) {
    return GetShaderLocation(*shader, uniformName);
}

int _GetShaderLocationAttrib(Shader *shader, const char *attribName) {
    return GetShaderLocationAttrib(*shader, attribName);
}

void _SetShaderValue(Shader *shader, int uniformLoc, const void *value, int uniformType) {
    SetShaderValue(*shader, uniformLoc, value, uniformType);
}

void _SetShaderValueV(Shader *shader, int uniformLoc, const void *value, int uniformType, int count) {
    SetShaderValueV(*shader, uniformLoc, value, uniformType, count);
}

void _SetShaderValueMatrix(Shader *shader, int uniformLoc, Matrix *mat) {
    SetShaderValueMatrix(*shader, uniformLoc, *mat);
}

void _SetShaderValueTexture(Shader *shader, int uniformLoc, Texture2D *texture) {
    SetShaderValueTexture(*shader, uniformLoc, *texture);
}

void _UnloadShader(Shader *shader) {
    UnloadShader(*shader);
}

// Screen-space-related functions
Ray _GetMouseRay(Vector2 *mousePosition, Camera *camera) {
    return GetMouseRay(*mousePosition, *camera);
}

Matrix _GetCameraMatrix(Camera *camera) {
    return GetCameraMatrix(*camera);
}

Matrix _GetCameraMatrix2D(Camera2D *camera) {
    return GetCameraMatrix2D(*camera);
}

Vector2 _GetWorldToScreen(Vector3 *position, Camera *camera) {
    return GetWorldToScreen(*position, *camera);
}

Vector2 _GetScreenToWorld2D(Vector2 *position, Camera2D *camera) {
    return GetScreenToWorld2D(*position, *camera);
}

Vector2 _GetWorldToScreenEx(Vector3 *position, Camera *camera, int width, int height) {
    return GetWorldToScreenEx(*position, *camera, width, height);
}

Vector2 _GetWorldToScreen2D(Vector2 *position, Camera2D *camera) {
    return GetWorldToScreen2D(*position, *camera);
}

// Set custom callbacks
// WARNING: Callbacks setup is intended for advanced users
void _SetTraceLogCallback(TraceLogCallback *callback) {
    SetTraceLogCallback(*callback);
}

void _SetLoadFileDataCallback(LoadFileDataCallback *callback) {
    SetLoadFileDataCallback(*callback);
}

void _SetSaveFileDataCallback(SaveFileDataCallback *callback) {
    SetSaveFileDataCallback(*callback);
}

void _SetLoadFileTextCallback(LoadFileTextCallback *callback) {
    SetLoadFileTextCallback(*callback);
}

void _SetSaveFileTextCallback(SaveFileTextCallback *callback) {
    SetSaveFileTextCallback(*callback);
}

// File system functions
void _UnloadDirectoryFiles(FilePathList *files) {
    UnloadDirectoryFiles(*files);
}

void _UnloadDroppedFiles(FilePathList *files) {
    UnloadDroppedFiles(*files);
}

// Automation events functionality
bool _ExportAutomationEventList(AutomationEventList *list, const char *fileName) {
    return ExportAutomationEventList(*list, fileName);
}

void _PlayAutomationEvent(AutomationEvent *automationEvent) {
    PlayAutomationEvent(*automationEvent);
}

// Camera System Functions (Module: rcamera)
void _UpdateCameraPro(Camera *camera, Vector3 *movement, Vector3 *rotation, float zoom) {
    UpdateCameraPro(camera, *movement, *rotation, zoom);
}
