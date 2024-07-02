#include "rglfw_bindings.h"

// Render Batch management
void _rlUnloadRenderBatch(rlRenderBatch *batch) {
    rlUnloadRenderBatch(*batch);
}

// Shader management
void _rlSetUniformMatrix(int locIndex, Matrix *mat) {
    rlSetUniformMatrix(locIndex, *mat);
}

// Matrix state management
void _rlSetMatrixProjection(Matrix *proj) {
    rlSetMatrixProjection(*proj);
}

void _rlSetMatrixModelview(Matrix *view) {
    rlSetMatrixModelview(*view);
}

void _rlSetMatrixProjectionStereo(Matrix *left, Matrix *right) {
    rlSetMatrixProjectionStereo(*left, *right);
}

void _rlSetMatrixViewOffsetStereo(Matrix *left, Matrix *right) {
    rlSetMatrixViewOffsetStereo(*left, *right);
}