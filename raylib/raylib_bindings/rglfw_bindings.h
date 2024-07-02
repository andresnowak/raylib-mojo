#include "raylib.h"
#include "rlgl.h"

// Render Batch management
void _rlUnloadRenderBatch(rlRenderBatch *batch);

// Shader management
void _rlSetUniformMatrix(int locIndex, Matrix *mat);

// Matrix state management
void _rlSetMatrixProjection(Matrix *proj);
void _rlSetMatrixModelview(Matrix *view);
void _rlSetMatrixProjectionStereo(Matrix *left, Matrix *right);
void _rlSetMatrixViewOffsetStereo(Matrix *left, Matrix *right);