from sys.ffi import DLHandle

from .misc_types import *
from .shapes import *

# Matrix operations
alias c_raylib_rlMatrixMode = fn (mode: Int32) -> None
alias c_raylib_rlPushMatrix = fn () -> None
alias c_raylib_rlPopMatrix = fn () -> None
alias c_raylib_rlLoadIdentity = fn () -> None
alias c_raylib_rlTranslatef = fn (x: Float32, y: Float32, z: Float32) -> None
alias c_raylib_rlRotatef = fn (
    angle: Float32, x: Float32, y: Float32, z: Float32
) -> None
alias c_raylib_rlScalef = fn (x: Float32, y: Float32, z: Float32) -> None
alias c_raylib_rlMultMatrixf = fn (matf: UnsafePointer[Float32]) -> None
alias c_raylib_rlFrustum = fn (
    left: Float64,
    right: Float64,
    bottom: Float64,
    top: Float64,
    znear: Float64,
    zfar: Float64,
) -> None
alias c_raylib_rlOrtho = fn (
    left: Float64,
    right: Float64,
    bottom: Float64,
    top: Float64,
    znear: Float64,
    zfar: Float64,
) -> None
alias c_raylib_rlViewport = fn (
    x: Int32, y: Int32, width: Int32, height: Int32
) -> None
alias c_raylib_rlSetClipPlanes = fn (
    nearPlane: Float64, farPlane: Float64
) -> None
alias c_raylib_rlGetCullDistanceNear = fn () -> Float64
alias c_raylib_rlGetCullDistanceFar = fn () -> Float64

# Vertex level operations
alias c_raylib_rlBegin = fn (mode: Int32) -> None
alias c_raylib_rlEnd = fn () -> None
alias c_raylib_rlVertex2i = fn (x: Int32, y: Int32) -> None
alias c_raylib_rlVertex2f = fn (x: Float32, y: Float32) -> None
alias c_raylib_rlVertex3f = fn (x: Float32, y: Float32, z: Float32) -> None
alias c_raylib_rlTexCoord2f = fn (x: Float32, y: Float32) -> None
alias c_raylib_rlNormal3f = fn (x: Float32, y: Float32, z: Float32) -> None
alias c_raylib_rlColor4ub = fn (r: UInt8, g: UInt8, b: UInt8, a: UInt8) -> None
alias c_raylib_rlColor3f = fn (x: Float32, y: Float32, z: Float32) -> None
alias c_raylib_rlColor4f = fn (
    x: Float32, y: Float32, z: Float32, w: Float32
) -> None

# Functions Declaration - OpenGL style functions (common to 1.1, 3.3+, ES2)
# NOTE: This functions are used to completely abstract raylib code from OpenGL layer,
# some of them are direct wrappers over OpenGL calls, some others are custom

# Vertex buffers state
alias c_raylib_rlEnableVertexArray = fn (vaoId: UInt32) -> Bool
alias c_raylib_rlDisableVertexArray = fn () -> None
alias c_raylib_rlEnableVertexBuffer = fn (id: UInt32) -> None
alias c_raylib_rlDisableVertexBuffer = fn () -> None
alias c_raylib_rlEnableVertexBufferElement = fn (id: UInt32) -> None
alias c_raylib_rlDisableVertexBufferElement = fn () -> None
alias c_raylib_rlEnableVertexAttribute = fn (index: UInt32) -> None
alias c_raylib_rlDisableVertexAttribute = fn (index: UInt32) -> None
alias c_raylib_rlEnableStatePointer = fn (
    vertextAttribType: Int32, buffer: UnsafePointer[NoneType]
) -> None
alias c_raylib_rlDisableStatePointer = fn (vertextAttribType: Int32) -> None

# Textures state
alias c_raylib_rlActiveTextureSlot = fn (slot: Int32) -> None
alias c_raylib_rlEnableTexture = fn (id: UInt32) -> None
alias c_raylib_rlDisableTexture = fn () -> None
alias c_raylib_rlEnableTextureCubemap = fn (id: UInt32) -> None
alias c_raylib_rlDisableTextureCubemap = fn () -> None
alias c_raylib_rlTextureParameters = fn (
    id: UInt32, param: Int32, value: Int32
) -> None
alias c_raylib_rlCubemapParameters = fn (
    id: UInt32, param: Int32, value: Int32
) -> None

# Shader state
alias c_raylib_rlEnableShader = fn (id: UInt32) -> None
alias c_raylib_rlDisableShader = fn () -> None

# Framebuffer state
alias c_raylib_rlEnableFramebuffer = fn (id: UInt32) -> None
alias c_raylib_rlDisableFramebuffer = fn () -> None
alias c_raylib_rlGetActiveFramebuffer = fn () -> UInt32
alias c_raylib_rlActiveDrawBuffers = fn (count: Int32) -> None
alias c_raylib_rlBlitFramebuffer = fn (
    srcX: Int32,
    srcY: Int32,
    srcWidth: Int32,
    srcHeight: Int32,
    dstX: Int32,
    dstY: Int32,
    dstWidth: Int32,
    dstHeight: Int32,
    bufferMask: Int32,
) -> None
alias c_raylib_rlBindFramebuffer = fn (
    target: UInt32, frameBuffer: UInt32
) -> None

# General render state
alias c_raylib_rlEnableColorBlend = fn () -> None
alias c_raylib_rlDisableColorBlend = fn () -> None
alias c_raylib_rlEnableDepthTest = fn () -> None
alias c_raylib_rlDisableDepthTest = fn () -> None
alias c_raylib_rlEnableDepthMask = fn () -> None
alias c_raylib_rlDisableDepthMask = fn () -> None
alias c_raylib_rlEnableBackfaceCulling = fn () -> None
alias c_raylib_rlDisableBackfaceCulling = fn () -> None
alias c_raylib_rlColorMask = fn (r: Bool, g: Bool, b: Bool, a: Bool) -> None
alias c_raylib_rlSetCullFace = fn (mode: Int32) -> None
alias c_raylib_rlEnableScissorTest = fn () -> None
alias c_raylib_rlDisableScissorTest = fn () -> None
alias c_raylib_rlScissor = fn (x: Int32, y: Int32, height: Int32) -> None
alias c_raylib_rlEnableWireMode = fn () -> None
alias c_raylib_rlEnablePointMode = fn () -> None
alias c_raylib_rlDisableWireMode = fn () -> None
alias c_raylib_rlSetLineWidth = fn (width: Float32) -> None
alias c_raylib_rlGetLineWidth = fn () -> Float32
alias c_raylib_rlEnableSmoothLines = fn () -> None
alias c_raylib_rlDisableSmoothLines = fn () -> None
alias c_raylib_rlEnableStereoRender = fn () -> None
alias c_raylib_rlDisableStereoRender = fn () -> None
alias c_raylib_rlIsStereoRenderEnabled = fn () -> Bool
alias c_raylib_rlClearColor = fn (
    r: UInt8, g: UInt8, b: UInt8, a: UInt8
) -> None
alias c_raylib_rlClearScreenBuffers = fn () -> None
alias c_raylib_rlCheckErrors = fn () -> None
alias c_raylib_rlSetBlendMode = fn (mode: Int32) -> None
alias c_raylib_rlSetBlendFactors = fn (
    glSrcFactor: Int32, glDstFactor: Int32, glEquation: Int32
) -> None
alias c_raylib_rlSetBlendFactorsSeparate = fn (
    glSrcFactorRGB: Int32,
    glDstFactorRGB: Int32,
    glSrcAlpha: Int32,
    glDstAlpha: Int32,
    glEqRGB: Int32,
    glEqAlpha: Int32,
) -> None

# rlgl functionality

# rlgl initialization functions
alias c_raylib_rlglInit = fn (width: Int32, height: Int32) -> None
alias c_raylib_rlglClose = fn () -> None
alias c_raylib_rlLoadExtensions = fn (UnsafePointer[NoneType]) -> None
alias c_raylib_rlGetVersion = fn () -> Int32
alias c_raylib_rlSetFramebufferWidth = fn (width: Int32) -> None
alias c_raylib_rlGetFramebufferWidth = fn () -> Int32
alias c_raylib_rlSetFramebufferHeight = fn (height: Int32) -> None
alias c_raylib_rlGetFramebufferHeight = fn () -> Int32
alias c_raylib_rlGetTextureIdDefault = fn () -> UInt32
alias c_raylib_rlGetShaderIdDefault = fn () -> UInt32
alias c_raylib_rlGetShaderLocsDefault = fn () -> UnsafePointer[Int32]


# Render batch management
# NOTE: rlgl provides a default render batch to behave like OpenGL 1.1 immediate mode
# but this render batch API is exposed in case of custom batches are required
alias c_raylib_rlLoadRenderBatch = fn (
    numBuffers: Int32, bufferElements: Int32
) -> rlRenderBatch
alias c_raylib_rlUnloadRenderBatch = fn (
    batch: UnsafePointer[rlRenderBatch]
) -> None
alias c_raylib_rlDrawRenderBatch = fn (
    batch: UnsafePointer[rlRenderBatch]
) -> None
alias c_raylib_rlSetRenderBatchActive = fn (
    UnsafePointer[rlRenderBatch]
) -> None
alias c_raylib_rlDrawRenderBatchActive = fn () -> None
alias c_raylib_rlCheckRenderBatchLimit = fn (vCount: Int32) -> Bool
alias c_raylib_rlSetTexture = fn (id: UInt32) -> None

# Vertex buffers management
alias c_raylib_rlLoadVertexArray = fn () -> UInt32
alias c_raylib_rlLoadVertexBuffer = fn (
    buffer: UnsafePointer[NoneType], size: Int32, dynamic: Bool
) -> UInt32
alias c_raylib_rlLoadVertexBufferElement = fn (
    data: UnsafePointer[NoneType], size: Int32, dynamic: Bool
) -> UInt32
alias c_raylib_rlUpdateVertexBuffer = fn (
    bufferId: UInt32,
    data: UnsafePointer[NoneType],
    dataSize: Int32,
    offset: Int32,
) -> None
alias c_raylib_rlUpdateVertexBufferElements = fn (
    id: UInt32, data: UnsafePointer[NoneType], dataSize: Int32, offset: Int32
) -> None
alias c_raylib_rlUnloadVertexArray = fn (vaoId: UInt32) -> None
alias c_raylib_rlUnloadVertexBuffer = fn (vboId: UInt32) -> None
alias c_raylib_rlSetVertexAttribute = fn (
    index: UInt32,
    compSize: Int32,
    type: Int32,
    normalized: Bool,
    stride: Int32,
    offset: Int32,
) -> None
alias c_raylib_rlSetVertexAttributeDivisor = fn (
    index: UInt32, divisor: Int32
) -> None
alias c_raylib_rlSetVertexAttributeDefault = fn (
    locIndex: Int32,
    value: UnsafePointer[NoneType],
    attribType: Int32,
    count: Int32,
) -> None
alias c_raylib_rlDrawVertexArray = fn (offset: Int32, count: Int32) -> None
alias c_raylib_rlDrawVertexArrayElements = fn (
    offset: Int32, count: Int32, buffer: UnsafePointer[NoneType]
) -> None
alias c_raylib_rlDrawVertexArrayInstanced = fn (
    offset: Int32, count: Int32, instances: Int32
) -> None
alias c_raylib_rlDrawVertexArrayElementsInstanced = fn (
    offset: Int32,
    count: Int32,
    buffer: UnsafePointer[NoneType],
    instances: Int32,
) -> None

# Textures management
alias c_raylib_rlLoadTexture = fn (
    data: UnsafePointer[NoneType],
    width: Int32,
    height: Int32,
    format: Int32,
    mipmapCount: Int32,
) -> UInt32
alias c_raylib_rlLoadTextureDepth = fn (
    width: Int32, height: Int32, useRenderBuffer: Bool
) -> UInt32
alias c_raylib_rlLoadTextureCubemap = fn (
    data: UnsafePointer[NoneType], size: Int32, format: Int32
) -> UInt32
alias c_raylib_rlUpdateTexture = fn (
    id: UInt32,
    offsetX: Int32,
    offsetY: Int32,
    width: Int32,
    height: Int32,
    format: Int32,
    data: UnsafePointer[NoneType],
) -> None
alias c_raylib_rlGetGlTextureFormats = fn (
    format: UInt32,
    glInternalFormat: UnsafePointer[Int32],
    glFormat: UnsafePointer[UInt32],
    glType: UnsafePointer[UInt32],
) -> None
alias c_raylib_rlGetPixelFormatName = fn (format: UInt32) -> UnsafePointer[Int8]
alias c_raylib_rlUnloadTexture = fn (id: UInt32) -> None
alias c_raylib_rlGenTextureMipmaps = fn (
    id: UInt32,
    width: Int32,
    height: Int32,
    format: Int32,
    mipmaps: UnsafePointer[Int32],
) -> None
alias c_raylib_rlReadTexturePixels = fn (
    id: UInt32, width: Int32, height: Int32, format: Int32
) -> UnsafePointer[NoneType]
alias c_raylib_rlReadScreenPixels = fn (
    width: Int32, height: Int32
) -> UnsafePointer[UInt8]

# Framebuffer management (fbo)
alias c_raylib_rlLoadFramebuffer = fn () -> UInt32
alias c_raylib_rlFramebufferAttach = fn (
    fboId: UInt32,
    texId: UInt32,
    attachType: Int32,
    texType: Int32,
    mipLevel: Int32,
) -> None
alias c_raylib_rlFramebufferComplete = fn (id: UInt32) -> Bool
alias c_raylib_rlUnloadFramebuffer = fn (id: UInt32) -> None

# Shaders management
alias c_raylib_rlLoadShaderCode = fn (
    vsCode: UnsafePointer[Int8], fsCode: UnsafePointer[Int8]
) -> UInt32
alias c_raylib_rlCompileShader = fn (
    shaderCode: UnsafePointer[Int8], type: Int32
) -> UInt32
alias c_raylib_rlLoadShaderProgram = fn (
    vsShaderId: UInt32, fsShaderId: UInt32
) -> UInt32
alias c_raylib_rlUnloadShaderProgram = fn (id: UInt32) -> None
alias c_raylib_rlGetLocationUniform = fn (
    shaderId: UInt32, uniformName: UnsafePointer[Int8]
) -> Int32
alias c_raylib_rlGetLocationAttrib = fn (
    shaderId: UInt32, attribName: UnsafePointer[Int8]
) -> Int32
alias c_raylib_rlSetUniform = fn (
    locIndex: Int32,
    value: UnsafePointer[NoneType],
    uniformType: Int32,
    count: Int32,
) -> None
alias c_raylib_rlSetUniformMatrix = fn (
    locIndex: Int32, mat: UnsafePointer[Matrix]
) -> None
alias c_raylib_rlSetUniformSampler = fn (
    locIndex: Int32, textureId: UInt32
) -> None
alias c_raylib_rlSetShader = fn (id: UInt32, locs: UnsafePointer[Int32]) -> None

# Compute shaders management
alias c_raylib_rlLoadComputeShaderProgram = fn (shaderId: UInt32) -> UInt32
alias c_raylib_rlComputeShaderDispatch = fn (
    groupX: UInt32, groupY: UInt32, groupZ: UInt32
) -> None

# Shader buffer storage management object (SSBO)
alias c_raylib_rlLoadShaderBuffer = fn (
    size: UInt32, data: UnsafePointer[NoneType], usageHint: Int32
) -> UInt32
alias c_raylib_rlUnloadShaderBuffer = fn (ssboId: UInt32) -> None
alias c_raylib_rlUpdateShaderBuffer = fn (
    id: UInt32, data: UnsafePointer[NoneType], dataSize: UInt32, offset: UInt32
) -> None
alias c_raylib_rlBindShaderBuffer = fn (id: UInt32, index: UInt32) -> None
alias c_raylib_rlReadShaderBuffer = fn (
    id: UInt32, dest: UnsafePointer[NoneType], count: UInt32, offset: UInt32
) -> None
alias c_raylib_rlCopyShaderBuffer = fn (
    destId: UInt32,
    srcId: UInt32,
    destOffset: UInt32,
    srcOffset: UInt32,
    count: UInt32,
) -> None
alias c_raylib_rlGetShaderBufferSize = fn (id: UInt32) -> UInt32

# Buffer management
alias c_raylib_rlBindImageTexture = fn (
    id: UInt32, index: UInt32, format: Int32, readOnly: Bool
) -> None

# Matrix state management
alias c_raylib_rlGetMatrixModelview = fn () -> Matrix
alias c_raylib_rlGetMatrixProjection = fn () -> Matrix
alias c_raylib_rlGetMatrixTransform = fn () -> Matrix
alias c_raylib_rlGetMatrixProjectionStereo = fn (eye: Int32) -> Matrix
alias c_raylib_rlGetMatrixViewOffsetStereo = fn (eye: Int32) -> Matrix
alias c_raylib_rlSetMatrixProjection = fn (proj: UnsafePointer[Matrix]) -> None
alias c_raylib_rlSetMatrixModelview = fn (view: UnsafePointer[Matrix]) -> None
alias c_raylib_rlSetMatrixProjectionStereo = fn (
    right: UnsafePointer[Matrix], left: UnsafePointer[Matrix]
) -> None
alias c_raylib_rlSetMatrixViewOffsetStereo = fn (
    right: UnsafePointer[Matrix], left: UnsafePointer[Matrix]
) -> None

# Quick and dirty cube/quad buffers load->draw->unload
alias c_raylib_rlLoadDrawCube = fn () -> None
alias c_raylib_rlLoadDrawQuad = fn () -> None


@value
struct RaylibGLFW:
    var _rl_matrix_mode: c_raylib_rlMatrixMode
    var _rl_push_matrix: c_raylib_rlPushMatrix
    var _rl_pop_matrix: c_raylib_rlPopMatrix
    var _rl_load_identity: c_raylib_rlLoadIdentity
    var _rl_translatef: c_raylib_rlTranslatef
    var _rl_rotatef: c_raylib_rlRotatef
    var _rl_scalef: c_raylib_rlScalef
    var _rl_mult_matrixf: c_raylib_rlMultMatrixf
    var _rl_frustum: c_raylib_rlFrustum
    var _rl_ortho: c_raylib_rlOrtho
    var _rl_viewport: c_raylib_rlViewport
    var _rl_set_clip_planes: c_raylib_rlSetClipPlanes
    var _rl_get_cull_distance_near: c_raylib_rlGetCullDistanceNear
    var _rl_get_cull_distance_far: c_raylib_rlGetCullDistanceFar

    var _rl_begin: c_raylib_rlBegin
    var _rl_end: c_raylib_rlEnd
    var _rl_vertex2i: c_raylib_rlVertex2i
    var _rl_vertex2f: c_raylib_rlVertex2f
    var _rl_vertex3f: c_raylib_rlVertex3f
    var _rl_tex_coord2f: c_raylib_rlTexCoord2f
    var _rl_normal3f: c_raylib_rlNormal3f
    var _rl_color4ub: c_raylib_rlColor4ub
    var _rl_color3f: c_raylib_rlColor3f
    var _rl_color4f: c_raylib_rlColor4f

    var _rl_enable_vertex_array: c_raylib_rlEnableVertexArray
    var _rl_disable_vertex_array: c_raylib_rlDisableVertexArray
    var _rl_enable_vertex_buffer: c_raylib_rlEnableVertexBuffer
    var _rl_disable_vertex_buffer: c_raylib_rlDisableVertexBuffer
    var _rl_enable_vertex_buffer_element: c_raylib_rlEnableVertexBufferElement
    var _rl_disable_vertex_buffer_element: c_raylib_rlDisableVertexBufferElement
    var _rl_enable_vertex_attribute: c_raylib_rlEnableVertexAttribute
    var _rl_disable_vertex_attribute: c_raylib_rlDisableVertexAttribute
    var _rl_enable_state_pointer: c_raylib_rlEnableStatePointer
    var _rl_disable_state_pointer: c_raylib_rlDisableStatePointer

    var _rl_active_texture_slot: c_raylib_rlActiveTextureSlot
    var _rl_enable_texture: c_raylib_rlEnableTexture
    var _rl_disable_texture: c_raylib_rlDisableTexture
    var _rl_enable_texture_cubemap: c_raylib_rlEnableTextureCubemap
    var _rl_disable_texture_cubemap: c_raylib_rlDisableTextureCubemap
    var _rl_texture_parameters: c_raylib_rlTextureParameters
    var _rl_cubemap_parameters: c_raylib_rlCubemapParameters

    var _rl_enable_shader: c_raylib_rlEnableShader
    var _rl_disable_shader: c_raylib_rlDisableShader

    var _rl_enable_framebuffer: c_raylib_rlEnableFramebuffer
    var _rl_disable_framebuffer: c_raylib_rlDisableFramebuffer
    var _rl_get_active_framebuffer: c_raylib_rlGetActiveFramebuffer
    var _rl_active_draw_buffers: c_raylib_rlActiveDrawBuffers
    var _rl_blit_framebuffer: c_raylib_rlBlitFramebuffer
    var _rl_bind_framebuffer: c_raylib_rlBindFramebuffer

    var _rl_enable_color_blend: c_raylib_rlEnableColorBlend
    var _rl_disable_color_blend: c_raylib_rlDisableColorBlend
    var _rl_enable_depth_test: c_raylib_rlEnableDepthTest
    var _rl_disable_depth_test: c_raylib_rlDisableDepthTest
    var _rl_enable_depth_mask: c_raylib_rlEnableDepthMask
    var _rl_disable_depth_mask: c_raylib_rlDisableDepthMask
    var _rl_enable_backface_culling: c_raylib_rlEnableBackfaceCulling
    var _rl_disable_backface_culling: c_raylib_rlDisableBackfaceCulling
    var _rl_color_mask: c_raylib_rlColorMask
    var _rl_set_cull_face: c_raylib_rlSetCullFace
    var _rl_enable_scissor_test: c_raylib_rlEnableScissorTest
    var _rl_disable_scissor_test: c_raylib_rlDisableScissorTest
    var _rl_scissor: c_raylib_rlScissor
    var _rl_enable_wire_mode: c_raylib_rlEnableWireMode
    var _rl_enable_point_mode: c_raylib_rlEnablePointMode
    var _rl_disable_wire_mode: c_raylib_rlDisableWireMode
    var _rl_set_line_width: c_raylib_rlSetLineWidth
    var _rl_get_line_width: c_raylib_rlGetLineWidth
    var _rl_enable_smooth_lines: c_raylib_rlEnableSmoothLines
    var _rl_disable_smooth_lines: c_raylib_rlDisableSmoothLines
    var _rl_enable_stereo_render: c_raylib_rlEnableStereoRender
    var _rl_disable_stereo_render: c_raylib_rlDisableStereoRender
    var _rl_is_stereo_render_enabled: c_raylib_rlIsStereoRenderEnabled
    var _rl_clear_color: c_raylib_rlClearColor
    var _rl_clear_screen_buffers: c_raylib_rlClearScreenBuffers
    var _rl_check_errors: c_raylib_rlCheckErrors
    var _rl_set_blend_mode: c_raylib_rlSetBlendMode
    var _rl_set_blend_factors: c_raylib_rlSetBlendFactors
    var _rl_set_blend_factors_separate: c_raylib_rlSetBlendFactorsSeparate

    var _rlgl_init: c_raylib_rlglInit
    var _rlgl_close: c_raylib_rlglClose
    var _rl_load_extensions: c_raylib_rlLoadExtensions
    var _rl_get_version: c_raylib_rlGetVersion
    var _rl_set_framebuffer_width: c_raylib_rlSetFramebufferWidth
    var _rl_get_framebuffer_width: c_raylib_rlGetFramebufferWidth
    var _rl_set_framebuffer_height: c_raylib_rlSetFramebufferHeight

    var _rl_get_framebuffer_height: c_raylib_rlGetFramebufferHeight
    var _rl_get_texture_id_default: c_raylib_rlGetTextureIdDefault
    var _rl_get_shader_id_default: c_raylib_rlGetShaderIdDefault
    var _rl_get_shader_locs_default: c_raylib_rlGetShaderLocsDefault

    var _rl_load_render_batch: c_raylib_rlLoadRenderBatch
    var _rl_unload_render_batch: c_raylib_rlUnloadRenderBatch
    var _rl_draw_render_batch: c_raylib_rlDrawRenderBatch
    var _rl_set_render_batch_active: c_raylib_rlSetRenderBatchActive
    var _rl_draw_render_batch_active: c_raylib_rlDrawRenderBatchActive
    var _rl_check_render_batch_limit: c_raylib_rlCheckRenderBatchLimit
    var _rl_set_texture: c_raylib_rlSetTexture

    var _rl_load_vertex_array: c_raylib_rlLoadVertexArray
    var _rl_load_vertex_buffer: c_raylib_rlLoadVertexBuffer
    var _rl_load_vertex_buffer_element: c_raylib_rlLoadVertexBufferElement
    var _rl_update_vertex_buffer: c_raylib_rlUpdateVertexBuffer
    var _rl_update_vertex_buffer_elements: c_raylib_rlUpdateVertexBufferElements
    var _rl_unload_vertex_array: c_raylib_rlUnloadVertexArray
    var _rl_unload_vertex_buffer: c_raylib_rlUnloadVertexBuffer
    var _rl_set_vertex_attribute: c_raylib_rlSetVertexAttribute
    var _rl_set_vertex_attribute_divisor: c_raylib_rlSetVertexAttributeDivisor

    var _rl_set_vertex_attribute_default: c_raylib_rlSetVertexAttributeDefault
    var _rl_draw_vertex_array: c_raylib_rlDrawVertexArray
    var _rl_draw_vertex_array_elements: c_raylib_rlDrawVertexArrayElements
    var _rl_draw_vertex_array_instanced: c_raylib_rlDrawVertexArrayInstanced
    var _rl_draw_vertex_array_elements_instanced: c_raylib_rlDrawVertexArrayElementsInstanced

    var _rl_load_texture: c_raylib_rlLoadTexture
    var _rl_load_texture_depth: c_raylib_rlLoadTextureDepth
    var _rl_load_texture_cubemap: c_raylib_rlLoadTextureCubemap
    var _rl_update_texture: c_raylib_rlUpdateTexture
    var _rl_get_gl_texture_formats: c_raylib_rlGetGlTextureFormats
    var _rl_get_pixel_format_name: c_raylib_rlGetPixelFormatName
    var _rl_unload_texture: c_raylib_rlUnloadTexture
    var _rl_gen_texture_mipmaps: c_raylib_rlGenTextureMipmaps
    var _rl_read_texture_pixels: c_raylib_rlReadTexturePixels
    var _rl_read_screen_pixels: c_raylib_rlReadScreenPixels

    var _rl_load_framebuffer: c_raylib_rlLoadFramebuffer
    var _rl_framebuffer_attach: c_raylib_rlFramebufferAttach
    var _rl_framebuffer_complete: c_raylib_rlFramebufferComplete
    var _rl_unload_framebuffer: c_raylib_rlUnloadFramebuffer

    var _rl_load_shader_code: c_raylib_rlLoadShaderCode
    var _rl_compile_shader: c_raylib_rlCompileShader
    var _rl_load_shader_program: c_raylib_rlLoadShaderProgram
    var _rl_unload_shader_program: c_raylib_rlUnloadShaderProgram
    var _rl_get_location_uniform: c_raylib_rlGetLocationUniform
    var _rl_get_location_attrib: c_raylib_rlGetLocationAttrib
    var _rl_set_uniform: c_raylib_rlSetUniform
    var _rl_set_uniform_matrix: c_raylib_rlSetUniformMatrix
    var _rl_set_uniform_sampler: c_raylib_rlSetUniformSampler
    var _rl_set_shader: c_raylib_rlSetShader

    var _rl_load_compute_shader_program: c_raylib_rlLoadComputeShaderProgram
    var _rl_compute_shader_dispatch: c_raylib_rlComputeShaderDispatch

    var _rl_load_shader_buffer: c_raylib_rlLoadShaderBuffer
    var _rl_unload_shader_buffer: c_raylib_rlUnloadShaderBuffer
    var _rl_update_shader_buffer: c_raylib_rlUpdateShaderBuffer
    var _rl_bind_shader_buffer: c_raylib_rlBindShaderBuffer
    var _rl_read_shader_buffer: c_raylib_rlReadShaderBuffer
    var _rl_copy_shader_buffer: c_raylib_rlCopyShaderBuffer
    var _rl_get_shader_buffer_size: c_raylib_rlGetShaderBufferSize

    var _rl_bind_image_texture: c_raylib_rlBindImageTexture

    var _rl_get_matrix_modelview: c_raylib_rlGetMatrixModelview
    var _rl_get_matrix_projection: c_raylib_rlGetMatrixProjection
    var _rl_get_matrix_transform: c_raylib_rlGetMatrixTransform
    var _rl_get_matrix_projection_stereo: c_raylib_rlGetMatrixProjectionStereo
    var _rl_get_matrix_view_offset_stereo: c_raylib_rlGetMatrixViewOffsetStereo
    var _rl_set_matrix_projection: c_raylib_rlSetMatrixProjection
    var _rl_set_matrix_modelview: c_raylib_rlSetMatrixModelview
    var _rl_set_matrix_projection_stereo: c_raylib_rlSetMatrixProjectionStereo
    var _rl_set_matrix_view_offset_stereo: c_raylib_rlSetMatrixViewOffsetStereo

    var _rl_load_draw_cube: c_raylib_rlLoadDrawCube
    var _rl_load_draw_quad: c_raylib_rlLoadDrawQuad

    fn __init__(
        inout self,
        raylib_bindings: DLHandle,
        raylib_bindings_internal: DLHandle,
    ):
        # Matrix operations
        self._rl_matrix_mode = raylib_bindings.get_function[
            c_raylib_rlMatrixMode
        ]("rlMatrixMode")
        self._rl_push_matrix = raylib_bindings.get_function[
            c_raylib_rlPushMatrix
        ]("rlPushMatrix")
        self._rl_pop_matrix = raylib_bindings.get_function[
            c_raylib_rlPopMatrix
        ]("rlPopMatrix")
        self._rl_load_identity = raylib_bindings.get_function[
            c_raylib_rlLoadIdentity
        ]("rlLoadIdentity")
        self._rl_translatef = raylib_bindings.get_function[
            c_raylib_rlTranslatef
        ]("rlTranslatef")
        self._rl_rotatef = raylib_bindings.get_function[c_raylib_rlRotatef](
            "rlRotatef"
        )
        self._rl_scalef = raylib_bindings.get_function[c_raylib_rlScalef](
            "rlScalef"
        )
        self._rl_mult_matrixf = raylib_bindings.get_function[
            c_raylib_rlMultMatrixf
        ]("rlMultMatrixf")
        self._rl_frustum = raylib_bindings.get_function[c_raylib_rlFrustum](
            "rlFrustum"
        )
        self._rl_ortho = raylib_bindings.get_function[c_raylib_rlOrtho](
            "rlOrtho"
        )
        self._rl_viewport = raylib_bindings.get_function[c_raylib_rlViewport](
            "rlViewport"
        )
        self._rl_set_clip_planes = raylib_bindings.get_function[
            c_raylib_rlSetClipPlanes
        ]("rlSetClipPlanes")
        self._rl_get_cull_distance_near = raylib_bindings.get_function[
            c_raylib_rlGetCullDistanceNear
        ]("rlGetCullDistanceNear")
        self._rl_get_cull_distance_far = raylib_bindings.get_function[
            c_raylib_rlGetCullDistanceFar
        ]("rlGetCullDistanceFar")

        # Vertex level operations
        self._rl_begin = raylib_bindings.get_function[c_raylib_rlBegin](
            "rlBegin"
        )
        self._rl_end = raylib_bindings.get_function[c_raylib_rlEnd]("rlEnd")
        self._rl_vertex2i = raylib_bindings.get_function[c_raylib_rlVertex2i](
            "rlVertex2i"
        )
        self._rl_vertex2f = raylib_bindings.get_function[c_raylib_rlVertex2f](
            "rlVertex2f"
        )
        self._rl_vertex3f = raylib_bindings.get_function[c_raylib_rlVertex3f](
            "rlVertex3f"
        )
        self._rl_tex_coord2f = raylib_bindings.get_function[
            c_raylib_rlTexCoord2f
        ]("rlTexCoord2f")
        self._rl_normal3f = raylib_bindings.get_function[c_raylib_rlNormal3f](
            "rlNormal3f"
        )
        self._rl_color4ub = raylib_bindings.get_function[c_raylib_rlColor4ub](
            "rlColor4ub"
        )
        self._rl_color3f = raylib_bindings.get_function[c_raylib_rlColor3f](
            "rlColor3f"
        )
        self._rl_color4f = raylib_bindings.get_function[c_raylib_rlColor4f](
            "rlColor4f"
        )

        # Vertex buffers state
        self._rl_enable_vertex_array = raylib_bindings.get_function[
            c_raylib_rlEnableVertexArray
        ]("rlEnableVertexArray")
        self._rl_disable_vertex_array = raylib_bindings.get_function[
            c_raylib_rlDisableVertexArray
        ]("rlDisableVertexArray")
        self._rl_enable_vertex_buffer = raylib_bindings.get_function[
            c_raylib_rlEnableVertexBuffer
        ]("rlEnableVertexBuffer")
        self._rl_disable_vertex_buffer = raylib_bindings.get_function[
            c_raylib_rlDisableVertexBuffer
        ]("rlDisableVertexBuffer")
        self._rl_enable_vertex_buffer_element = raylib_bindings.get_function[
            c_raylib_rlEnableVertexBufferElement
        ]("rlEnableVertexBufferElement")
        self._rl_disable_vertex_buffer_element = raylib_bindings.get_function[
            c_raylib_rlDisableVertexBufferElement
        ]("rlDisableVertexBufferElement")
        self._rl_enable_vertex_attribute = raylib_bindings.get_function[
            c_raylib_rlEnableVertexAttribute
        ]("rlEnableVertexAttribute")
        self._rl_disable_vertex_attribute = raylib_bindings.get_function[
            c_raylib_rlDisableVertexAttribute
        ]("rlDisableVertexAttribute")
        self._rl_enable_state_pointer = raylib_bindings.get_function[
            c_raylib_rlEnableStatePointer
        ]("rlEnableStatePointer")
        self._rl_disable_state_pointer = raylib_bindings.get_function[
            c_raylib_rlDisableStatePointer
        ]("rlDisableStatePointer")

        # Textures state
        self._rl_active_texture_slot = raylib_bindings.get_function[
            c_raylib_rlActiveTextureSlot
        ]("rlActiveTextureSlot")
        self._rl_enable_texture = raylib_bindings.get_function[
            c_raylib_rlEnableTexture
        ]("rlEnableTexture")
        self._rl_disable_texture = raylib_bindings.get_function[
            c_raylib_rlDisableTexture
        ]("rlDisableTexture")
        self._rl_enable_texture_cubemap = raylib_bindings.get_function[
            c_raylib_rlEnableTextureCubemap
        ]("rlEnableTextureCubemap")
        self._rl_disable_texture_cubemap = raylib_bindings.get_function[
            c_raylib_rlDisableTextureCubemap
        ]("rlDisableTextureCubemap")
        self._rl_texture_parameters = raylib_bindings.get_function[
            c_raylib_rlTextureParameters
        ]("rlTextureParameters")
        self._rl_cubemap_parameters = raylib_bindings.get_function[
            c_raylib_rlCubemapParameters
        ]("rlCubeParameter")

        # Shader state
        self._rl_enable_shader = raylib_bindings.get_function[
            c_raylib_rlEnableShader
        ]("rlEnableShader")
        self._rl_disable_shader = raylib_bindings.get_function[
            c_raylib_rlDisableShader
        ]("rlDisableShader")

        # Framebuffer state
        self._rl_enable_framebuffer = raylib_bindings.get_function[
            c_raylib_rlEnableFramebuffer
        ]("rlEnableFramebuffer")
        self._rl_disable_framebuffer = raylib_bindings.get_function[
            c_raylib_rlDisableFramebuffer
        ]("rlDisableFramebuffer")
        self._rl_get_active_framebuffer = raylib_bindings.get_function[
            c_raylib_rlGetActiveFramebuffer
        ]("rlGetActiveFramebuffer")
        self._rl_active_draw_buffers = raylib_bindings.get_function[
            c_raylib_rlActiveDrawBuffers
        ]("rlActiveDrawBuffers")
        self._rl_blit_framebuffer = raylib_bindings.get_function[
            c_raylib_rlBlitFramebuffer
        ]("rlBlitFramebuffer")
        self._rl_bind_framebuffer = raylib_bindings.get_function[
            c_raylib_rlBindFramebuffer
        ]("rlBlindFramebuffer")

        # General render state
        self._rl_enable_color_blend = raylib_bindings.get_function[
            c_raylib_rlEnableColorBlend
        ]("rlEnableColorBlend")
        self._rl_disable_color_blend = raylib_bindings.get_function[
            c_raylib_rlDisableColorBlend
        ]("rlDisableColorBlend")
        self._rl_enable_depth_test = raylib_bindings.get_function[
            c_raylib_rlEnableDepthTest
        ]("rlEnableDepthTest")
        self._rl_disable_depth_test = raylib_bindings.get_function[
            c_raylib_rlDisableDepthTest
        ]("rlDisableDepthTest")
        self._rl_enable_depth_mask = raylib_bindings.get_function[
            c_raylib_rlEnableDepthMask
        ]("rlEnableDepthMask")
        self._rl_disable_depth_mask = raylib_bindings.get_function[
            c_raylib_rlDisableDepthMask
        ]("rlDisableDepthMask")
        self._rl_enable_backface_culling = raylib_bindings.get_function[
            c_raylib_rlEnableBackfaceCulling
        ]("rlEnableBackfaceCulling")
        self._rl_disable_backface_culling = raylib_bindings.get_function[
            c_raylib_rlDisableBackfaceCulling
        ]("rlDisableBackfaceCulling")
        self._rl_color_mask = raylib_bindings.get_function[
            c_raylib_rlColorMask
        ]("rlColorMask")
        self._rl_set_cull_face = raylib_bindings.get_function[
            c_raylib_rlSetCullFace
        ]("rlSetCullFace")
        self._rl_enable_scissor_test = raylib_bindings.get_function[
            c_raylib_rlEnableScissorTest
        ]("rlEnableScissorTest")
        self._rl_disable_scissor_test = raylib_bindings.get_function[
            c_raylib_rlDisableScissorTest
        ]("rlDisableScissorTest")
        self._rl_scissor = raylib_bindings.get_function[c_raylib_rlScissor](
            "rlScissor"
        )
        self._rl_enable_wire_mode = raylib_bindings.get_function[
            c_raylib_rlEnableWireMode
        ]("rlEnableWireMode")
        self._rl_enable_point_mode = raylib_bindings.get_function[
            c_raylib_rlEnablePointMode
        ]("rlEnablePointMode")
        self._rl_disable_wire_mode = raylib_bindings.get_function[
            c_raylib_rlDisableWireMode
        ]("rlDisableWireMode")
        self._rl_set_line_width = raylib_bindings.get_function[
            c_raylib_rlSetLineWidth
        ]("rlSetLineWidth")
        self._rl_get_line_width = raylib_bindings.get_function[
            c_raylib_rlGetLineWidth
        ]("rlGetLineWidth")
        self._rl_enable_smooth_lines = raylib_bindings.get_function[
            c_raylib_rlEnableSmoothLines
        ]("rlEnableSmoothLines")
        self._rl_disable_smooth_lines = raylib_bindings.get_function[
            c_raylib_rlDisableSmoothLines
        ]("rlDisableSmoothLines")
        self._rl_enable_stereo_render = raylib_bindings.get_function[
            c_raylib_rlEnableStereoRender
        ]("rlEnableStereoRender")
        self._rl_disable_stereo_render = raylib_bindings.get_function[
            c_raylib_rlDisableStereoRender
        ]("rlDisableStereoRender")
        self._rl_is_stereo_render_enabled = raylib_bindings.get_function[
            c_raylib_rlIsStereoRenderEnabled
        ]("rlIsStereoRenderEnabled")
        self._rl_clear_color = raylib_bindings.get_function[
            c_raylib_rlClearColor
        ]("rlClearColor")
        self._rl_clear_screen_buffers = raylib_bindings.get_function[
            c_raylib_rlClearScreenBuffers
        ]("rlClearScreenBuffers")
        self._rl_check_errors = raylib_bindings.get_function[
            c_raylib_rlCheckErrors
        ]("rlCheckErrors")
        self._rl_set_blend_mode = raylib_bindings.get_function[
            c_raylib_rlSetBlendMode
        ]("rlSetBlendMode")
        self._rl_set_blend_factors = raylib_bindings.get_function[
            c_raylib_rlSetBlendFactors
        ]("rlSetBlendFactors")
        self._rl_set_blend_factors_separate = raylib_bindings.get_function[
            c_raylib_rlSetBlendFactorsSeparate
        ]("rlSetFactorsSeparate")

        # rlgl functionality
        self._rlgl_init = raylib_bindings.get_function[c_raylib_rlglInit](
            "rlglInit"
        )
        self._rlgl_close = raylib_bindings.get_function[c_raylib_rlglClose](
            "rlglClose"
        )
        self._rl_load_extensions = raylib_bindings.get_function[
            c_raylib_rlLoadExtensions
        ]("rlLoadExtensions")
        self._rl_get_version = raylib_bindings.get_function[
            c_raylib_rlGetVersion
        ]("rlGetVersion")
        self._rl_set_framebuffer_width = raylib_bindings.get_function[
            c_raylib_rlSetFramebufferWidth
        ]("rlSetFrameBufferWidth")
        self._rl_get_framebuffer_width = raylib_bindings.get_function[
            c_raylib_rlGetFramebufferWidth
        ]("rlGetFrameBufferWidth")
        self._rl_set_framebuffer_height = raylib_bindings.get_function[
            c_raylib_rlSetFramebufferHeight
        ]("rlSetFrameBufferHeight")
        self._rl_get_framebuffer_height = raylib_bindings.get_function[
            c_raylib_rlGetFramebufferHeight
        ]("rlGetFrameBufferHeight")
        self._rl_get_texture_id_default = raylib_bindings.get_function[
            c_raylib_rlGetTextureIdDefault
        ]("rlGetTextureIdDefault")
        self._rl_get_shader_id_default = raylib_bindings.get_function[
            c_raylib_rlGetShaderIdDefault
        ]("rlGetShaderIdDefault")
        self._rl_get_shader_locs_default = raylib_bindings.get_function[
            c_raylib_rlGetShaderLocsDefault
        ]("rlGetShaderLocsDefault")

        # Render batch management
        self._rl_load_render_batch = raylib_bindings.get_function[
            c_raylib_rlLoadRenderBatch
        ]("rlLoadRenderBatch")
        self._rl_unload_render_batch = raylib_bindings_internal.get_function[
            c_raylib_rlUnloadRenderBatch
        ]("_rlUnloadRenderBatch")
        self._rl_draw_render_batch = raylib_bindings.get_function[
            c_raylib_rlDrawRenderBatch
        ]("rlDrawRenderBatch")
        self._rl_set_render_batch_active = raylib_bindings.get_function[
            c_raylib_rlSetRenderBatchActive
        ]("rlSetRenderBatchActive")
        self._rl_draw_render_batch_active = raylib_bindings.get_function[
            c_raylib_rlDrawRenderBatchActive
        ]("rlDrawRenderBatchActive")
        self._rl_check_render_batch_limit = raylib_bindings.get_function[
            c_raylib_rlCheckRenderBatchLimit
        ]("rlCheckRenderBatchLimit")
        self._rl_set_texture = raylib_bindings.get_function[
            c_raylib_rlSetTexture
        ]("rlSetTexture")

        # Vertex buffers management
        self._rl_load_vertex_array = raylib_bindings.get_function[
            c_raylib_rlLoadVertexArray
        ]("rlLoadVertexArray")
        self._rl_load_vertex_buffer = raylib_bindings.get_function[
            c_raylib_rlLoadVertexBuffer
        ]("rlLoadVertexBuffer")
        self._rl_load_vertex_buffer_element = raylib_bindings.get_function[
            c_raylib_rlLoadVertexBufferElement
        ]("rlLoadVertexBufferElement")
        self._rl_update_vertex_buffer = raylib_bindings.get_function[
            c_raylib_rlUpdateVertexBuffer
        ]("rlUpdateVertexBuffer")
        self._rl_update_vertex_buffer_elements = raylib_bindings.get_function[
            c_raylib_rlUpdateVertexBufferElements
        ]("rlUpdateVertexBufferElements")
        self._rl_unload_vertex_array = raylib_bindings.get_function[
            c_raylib_rlUnloadVertexArray
        ]("rlUnloadVertexArray")
        self._rl_unload_vertex_buffer = raylib_bindings.get_function[
            c_raylib_rlUnloadVertexBuffer
        ]("rlUnloadVertexBuffer")
        self._rl_set_vertex_attribute = raylib_bindings.get_function[
            c_raylib_rlSetVertexAttribute
        ]("rlSetVertexAttribute")
        self._rl_set_vertex_attribute_divisor = raylib_bindings.get_function[
            c_raylib_rlSetVertexAttributeDivisor
        ]("rlSetVertexAttributeDivisor")
        self._rl_set_vertex_attribute_default = raylib_bindings.get_function[
            c_raylib_rlSetVertexAttributeDefault
        ]("rlSetVertexAttributeDefault")
        self._rl_draw_vertex_array = raylib_bindings.get_function[
            c_raylib_rlDrawVertexArray
        ]("rlDrawVertexArray")
        self._rl_draw_vertex_array_elements = raylib_bindings.get_function[
            c_raylib_rlDrawVertexArrayElements
        ]("rlDrawVertexArrayElements")
        self._rl_draw_vertex_array_instanced = raylib_bindings.get_function[
            c_raylib_rlDrawVertexArrayInstanced
        ]("rlDrawVertexArrayInstanced")
        self._rl_draw_vertex_array_elements_instanced = (
            raylib_bindings.get_function[
                c_raylib_rlDrawVertexArrayElementsInstanced
            ]("rlDrawVertexArrayElementsInstanced")
        )

        # Textures management
        self._rl_load_texture = raylib_bindings.get_function[
            c_raylib_rlLoadTexture
        ]("rlLoadTexture")
        self._rl_load_texture_depth = raylib_bindings.get_function[
            c_raylib_rlLoadTextureDepth
        ]("rlLoadTextureDepth")
        self._rl_load_texture_cubemap = raylib_bindings.get_function[
            c_raylib_rlLoadTextureCubemap
        ]("rlLoadTextureCubemap")
        self._rl_update_texture = raylib_bindings.get_function[
            c_raylib_rlUpdateTexture
        ]("rlUpdateTexture")
        self._rl_get_gl_texture_formats = raylib_bindings.get_function[
            c_raylib_rlGetGlTextureFormats
        ]("rlGetGlTextureFormats")
        self._rl_get_pixel_format_name = raylib_bindings.get_function[
            c_raylib_rlGetPixelFormatName
        ]("rlGetGLPixelFormatName")
        self._rl_unload_texture = raylib_bindings.get_function[
            c_raylib_rlUnloadTexture
        ]("rlUnloadTexture")
        self._rl_gen_texture_mipmaps = raylib_bindings.get_function[
            c_raylib_rlGenTextureMipmaps
        ]("rlGenerateTextureMipmaps")
        self._rl_read_texture_pixels = raylib_bindings.get_function[
            c_raylib_rlReadTexturePixels
        ]("rlReadTexturePixels")
        self._rl_read_screen_pixels = raylib_bindings.get_function[
            c_raylib_rlReadScreenPixels
        ]("rlReadScreenPixels")

        # Framebuffer management (fbo)
        self._rl_load_framebuffer = raylib_bindings.get_function[
            c_raylib_rlLoadFramebuffer
        ]("rlLoadFramebuffer")
        self._rl_framebuffer_attach = raylib_bindings.get_function[
            c_raylib_rlFramebufferAttach
        ]("rlFramebufferAttach")
        self._rl_framebuffer_complete = raylib_bindings.get_function[
            c_raylib_rlFramebufferComplete
        ]("rlFramebufferComplete")
        self._rl_unload_framebuffer = raylib_bindings.get_function[
            c_raylib_rlUnloadFramebuffer
        ]("rlUnloadFramebuffer")

        # Shaders management
        self._rl_load_shader_code = raylib_bindings.get_function[
            c_raylib_rlLoadShaderCode
        ]("rlLoadShaderCode")
        self._rl_compile_shader = raylib_bindings.get_function[
            c_raylib_rlCompileShader
        ]("rlCompileShader")
        self._rl_load_shader_program = raylib_bindings.get_function[
            c_raylib_rlLoadShaderProgram
        ]("rlLoadShaderProgram")
        self._rl_unload_shader_program = raylib_bindings.get_function[
            c_raylib_rlUnloadShaderProgram
        ]("rlUnloadShaderProgram")
        self._rl_get_location_uniform = raylib_bindings.get_function[
            c_raylib_rlGetLocationUniform
        ]("rlGetLocationUniform")
        self._rl_get_location_attrib = raylib_bindings.get_function[
            c_raylib_rlGetLocationAttrib
        ]("rlGetLocationAttrib")
        self._rl_set_uniform = raylib_bindings.get_function[
            c_raylib_rlSetUniform
        ]("rlSetUniform")
        self._rl_set_uniform_matrix = raylib_bindings_internal.get_function[
            c_raylib_rlSetUniformMatrix
        ]("_rlSetUniformMatrix")
        self._rl_set_uniform_sampler = raylib_bindings.get_function[
            c_raylib_rlSetUniformSampler
        ]("rlSetUniformSampler")
        self._rl_set_shader = raylib_bindings.get_function[
            c_raylib_rlSetShader
        ]("rlSetShader")

        # Compute shaders management
        self._rl_load_compute_shader_program = raylib_bindings.get_function[
            c_raylib_rlLoadComputeShaderProgram
        ]("rlLoadComputeShaderProgram")
        self._rl_compute_shader_dispatch = raylib_bindings.get_function[
            c_raylib_rlComputeShaderDispatch
        ]("rlLoadComputeShaderDispatch")

        # Shader buffer storage management object (SSBO)
        self._rl_load_shader_buffer = raylib_bindings.get_function[
            c_raylib_rlLoadShaderBuffer
        ]("rlLoadShaderBuffer")
        self._rl_unload_shader_buffer = raylib_bindings.get_function[
            c_raylib_rlUnloadShaderBuffer
        ]("rlUnloadShaderBuffer")
        self._rl_update_shader_buffer = raylib_bindings.get_function[
            c_raylib_rlUpdateShaderBuffer
        ]("rlUpdateShaderBuffer")
        self._rl_bind_shader_buffer = raylib_bindings.get_function[
            c_raylib_rlBindShaderBuffer
        ]("rlBindShaderBuffer")
        self._rl_read_shader_buffer = raylib_bindings.get_function[
            c_raylib_rlReadShaderBuffer
        ]("rlReadShaderBuffer")
        self._rl_copy_shader_buffer = raylib_bindings.get_function[
            c_raylib_rlCopyShaderBuffer
        ]("rlCopyShaderBuffer")
        self._rl_get_shader_buffer_size = raylib_bindings.get_function[
            c_raylib_rlGetShaderBufferSize
        ]("rlGetShaderBufferSize")

        # Buffer management
        self._rl_bind_image_texture = raylib_bindings.get_function[
            c_raylib_rlBindImageTexture
        ]("rlBindImageTexture")

        # Matrix state management
        self._rl_get_matrix_modelview = raylib_bindings.get_function[
            c_raylib_rlGetMatrixModelview
        ]("rlGetMatrixModelview")
        self._rl_get_matrix_projection = raylib_bindings.get_function[
            c_raylib_rlGetMatrixProjection
        ]("rlGetMatrixProjection")
        self._rl_get_matrix_transform = raylib_bindings.get_function[
            c_raylib_rlGetMatrixTransform
        ]("rlGetMatrixTransform")
        self._rl_get_matrix_projection_stereo = raylib_bindings.get_function[
            c_raylib_rlGetMatrixProjectionStereo
        ]("rlGetMatrixProjectionStereo")
        self._rl_get_matrix_view_offset_stereo = raylib_bindings.get_function[
            c_raylib_rlGetMatrixViewOffsetStereo
        ]("rlGetMatrixViewOffsetStereo")
        self._rl_set_matrix_projection = raylib_bindings_internal.get_function[
            c_raylib_rlSetMatrixProjection
        ]("_rlSetMatrixProjection")
        self._rl_set_matrix_modelview = raylib_bindings_internal.get_function[
            c_raylib_rlSetMatrixModelview
        ]("_rlSetMatrixModelview")
        self._rl_set_matrix_projection_stereo = raylib_bindings_internal.get_function[
            c_raylib_rlSetMatrixProjectionStereo
        ]("_rlSetMatrixProjectionStereo")
        self._rl_set_matrix_view_offset_stereo = raylib_bindings_internal.get_function[
            c_raylib_rlSetMatrixViewOffsetStereo
        ]("_rlSetMatrixViewOffsetStereo")

        # Quick and dirty cube/quad buffers load->draw->unload
        self._rl_load_draw_cube = raylib_bindings.get_function[
            c_raylib_rlLoadDrawCube
        ]("rlLoadDrawCube")
        self._rl_load_draw_quad = raylib_bindings.get_function[
            c_raylib_rlLoadDrawQuad
        ]("rlLoadDrawQuad")

    @always_inline
    fn rl_matrix_mode(self, mode: Int32) -> None:
        """ "Choose the current matrix to be transformed."""
        self._rl_matrix_mode(mode)

    @always_inline
    fn rl_push_matrix(self) -> None:
        """ "Push the current matrix to stack."""
        self._rl_push_matrix()

    @always_inline
    fn rl_pop_matrix(self) -> None:
        """ "Pop lattest inserted matrix from stack."""
        self._rl_pop_matrix()

    @always_inline
    fn rl_load_identity(self) -> None:
        """ "Reset current matrix to identity matrix."""
        self._rl_load_identity()

    @always_inline
    fn rl_translatef(self, x: Float32, y: Float32, z: Float32) -> None:
        """ "Multiply the current matrix by a translation matrix."""
        self._rl_translatef(x, y, z)

    @always_inline
    fn rl_rotatef(
        self, angle: Float32, x: Float32, y: Float32, z: Float32
    ) -> None:
        """ "Multiply the current matrix by a rotation matrix."""
        self._rl_rotatef(angle, x, y, z)

    @always_inline
    fn rl_scale_f(self, x: Float32, y: Float32, z: Float32) -> None:
        """ "Multiply the current matrix by a scaling matrix."""
        self._rl_scalef(x, y, z)

    @always_inline
    fn rl_mult_matrixf(self, matf: UnsafePointer[Float32]) -> None:
        """ "Multiply the current matrix by another matrix."""
        self._rl_mult_matrixf(matf)

    @always_inline
    fn rl_frustum(
        self,
        left: Float64,
        right: Float64,
        bottom: Float64,
        top: Float64,
        near: Float64,
        far: Float64,
    ) -> None:
        """ "Multiply the current matrix by a perspective matrix."""
        self._rl_frustum(left, right, bottom, top, near, far)

    @always_inline
    fn rl_ortho(
        self,
        left: Float64,
        right: Float64,
        bottom: Float64,
        top: Float64,
        near: Float64,
        far: Float64,
    ) -> None:
        """ "Multiply the current matrix by an orthographic matrix."""
        self._rl_ortho(left, right, bottom, top, near, far)

    @always_inline
    fn rl_viewport(
        self, x: Int32, y: Int32, width: Int32, height: Int32
    ) -> None:
        """Set the viewport area."""
        self._rl_viewport(x, y, width, height)

    @always_inline
    fn rl_set_clip_planes(
        self, near_plane: Float64, far_plane: Float64
    ) -> None:
        """Set clip planes distances."""
        self._rl_set_clip_planes(near_plane, far_plane)

    @always_inline
    fn rl_get_cull_distance_near(self) -> Float64:
        """Get cull plane distance near."""
        return self._rl_get_cull_distance_near()

    @always_inline
    fn rl_get_cull_distance_far(self) -> Float64:
        """Get cull plane distance far."""
        return self._rl_get_cull_distance_far()

    @always_inline
    fn rl_begin(self, mode: Int32) -> None:
        """Initialize drawing mode (how to organize vertex)."""
        self._rl_begin(mode)

    @always_inline
    fn rl_end(self) -> None:
        """Finish vertex providing."""
        self._rl_end()

    @always_inline
    fn rl_vertex2i(self, x: Int32, y: Int32) -> None:
        """Define one vertex (position) - 2 int."""
        self._rl_vertex2i(x, y)

    @always_inline
    fn rl_vertex2f(self, x: Float32, y: Float32) -> None:
        """Define one vertex (position) - 2 float."""
        self._rl_vertex2f(x, y)

    @always_inline
    fn rl_vertex3f(self, x: Float32, y: Float32, z: Float32) -> None:
        """Define one vertex (position) - 3 float."""
        self._rl_vertex3f(x, y, z)

    @always_inline
    fn rl_tex_coord2f(self, x: Float32, y: Float32) -> None:
        """Define one vertex (texture coordinate) - 2 float."""
        self._rl_tex_coord2f(x, y)

    @always_inline
    fn rl_normal3f(self, x: Float32, y: Float32, z: Float32) -> None:
        """Define one vertex (normal) - 3 float."""
        self._rl_normal3f(x, y, z)

    @always_inline
    fn rl_color4ub(self, r: UInt8, g: UInt8, b: UInt8, a: UInt8) -> None:
        """Define one vertex (color) - 4 byte."""
        self._rl_color4ub(r, g, b, a)

    @always_inline
    fn rl_color3f(self, r: Float32, g: Float32, b: Float32) -> None:
        """Define one vertex (color) - 3 float."""
        self._rl_color3f(r, g, b)

    @always_inline
    fn rl_color4f(self, r: Float32, g: Float32, b: Float32, a: Float32) -> None:
        """Define one vertex (color) - 4 float."""
        self._rl_color4f(r, g, b, a)

    @always_inline
    fn rl_enable_vertex_array(self, vao_id: UInt32) -> Bool:
        """Enable vertex array (VAO, if supported)."""
        return self._rl_enable_vertex_array(vao_id)

    @always_inline
    fn rl_disable_vertex_array(self) -> None:
        """Disable vertex array (VAO, if supported)."""
        self._rl_disable_vertex_array()

    @always_inline
    fn rl_enable_vertex_buffer(self, id: UInt32) -> None:
        """Enable vertex buffer (VBO)."""
        self._rl_enable_vertex_buffer(id)

    @always_inline
    fn rl_disable_vertex_buffer(self) -> None:
        """Disable vertex buffer (VBO)."""
        self._rl_disable_vertex_buffer()

    @always_inline
    fn rl_enable_vertex_buffer_element(self, id: UInt32) -> None:
        """Enable vertex buffer element (VBO element)."""
        self._rl_enable_vertex_buffer_element(id)

    @always_inline
    fn rl_disable_vertex_buffer_element(self) -> None:
        """Disable vertex buffer element (VBO element)."""
        self._rl_disable_vertex_buffer_element()

    @always_inline
    fn rl_enable_vertex_attribute(self, index: UInt32) -> None:
        """Enable vertex attribute index."""
        self._rl_enable_vertex_attribute(index)

    @always_inline
    fn rl_disable_vertex_attribute(self, index: UInt32) -> None:
        """Disable vertex attribute index."""
        self._rl_disable_vertex_attribute(index)

    @always_inline
    fn rl_enable_state_pointer(
        self, vertex_attrib_type: Int32, buffer: UnsafePointer[NoneType]
    ) -> None:
        """Enable attribute state pointer."""
        self._rl_enable_state_pointer(vertex_attrib_type, buffer)

    @always_inline
    fn rl_disable_state_pointer(self, vertex_attrib_type: Int32) -> None:
        """Disable attribute state pointer."""
        self._rl_disable_state_pointer(vertex_attrib_type)

    @always_inline
    fn rl_active_texture_slot(self, slot: Int32) -> None:
        """Select and activate a texture slot."""
        self._rl_active_texture_slot(slot)

    @always_inline
    fn rl_enable_texture(self, id: UInt32) -> None:
        """Enable texture."""
        self._rl_enable_texture(id)

    @always_inline
    fn rl_disable_texture(self) -> None:
        """Disable texture."""
        self._rl_disable_texture()

    @always_inline
    fn rl_enable_texture_cubemap(self, id: UInt32) -> None:
        """Enable texture cubemap."""
        self._rl_enable_texture_cubemap(id)

    @always_inline
    fn rl_disable_texture_cubemap(self) -> None:
        """Disable texture cubemap."""
        self._rl_disable_texture_cubemap()

    @always_inline
    fn rl_texture_parameters(
        self, id: UInt32, param: Int32, value: Int32
    ) -> None:
        """Set texture parameters (filter, wrap)."""
        self._rl_texture_parameters(id, param, value)

    @always_inline
    fn rl_cubemap_parameters(
        self, id: UInt32, param: Int32, value: Int32
    ) -> None:
        """Set cubemap parameters (filter, wrap)."""
        self._rl_cubemap_parameters(id, param, value)

    @always_inline
    fn rl_enable_shader(self, id: UInt32) -> None:
        """Enable shader program."""
        self._rl_enable_shader(id)

    @always_inline
    fn rl_disable_shader(self) -> None:
        """Disable shader program."""
        self._rl_disable_shader()

    @always_inline
    fn rl_enable_framebuffer(self, id: UInt32) -> None:
        """Enable render texture (fbo)."""
        self._rl_enable_framebuffer(id)

    @always_inline
    fn rl_disable_framebuffer(self) -> None:
        """Disable render texture (fbo), return to default framebuffer."""
        self._rl_disable_framebuffer()

    @always_inline
    fn rl_get_active_framebuffer(self) -> UInt32:
        """Get the currently active render texture (fbo), 0 for default framebuffer.
        """
        return self._rl_get_active_framebuffer()

    @always_inline
    fn rl_active_draw_buffers(self, count: Int32) -> None:
        """Activate multiple draw color buffers."""
        self._rl_active_draw_buffers(count)

    @always_inline
    fn rl_blit_framebuffer(
        self,
        src_x: Int32,
        src_y: Int32,
        src_width: Int32,
        src_height: Int32,
        dst_x: Int32,
        dst_y: Int32,
        dst_width: Int32,
        dst_height: Int32,
        buffer_mask: Int32,
    ) -> None:
        """Blit active framebuffer to main framebuffer."""
        self._rl_blit_framebuffer(
            src_x,
            src_y,
            src_width,
            src_height,
            dst_x,
            dst_y,
            dst_width,
            dst_height,
            buffer_mask,
        )

    @always_inline
    fn rl_bind_framebuffer(self, target: UInt32, framebuffer: UInt32) -> None:
        """Bind framebuffer (FBO)."""
        self._rl_bind_framebuffer(target, framebuffer)

    @always_inline
    fn rl_enable_color_blend(self) -> None:
        """Enable color blending."""
        self._rl_enable_color_blend()

    @always_inline
    fn rl_disable_color_blend(self) -> None:
        """Disable color blending."""
        self._rl_disable_color_blend()

    @always_inline
    fn rl_enable_depth_test(self) -> None:
        """Enable depth test."""
        self._rl_enable_depth_test()

    @always_inline
    fn rl_disable_depth_test(self) -> None:
        """Disable depth test."""
        self._rl_disable_depth_test()

    @always_inline
    fn rl_enable_depth_mask(self) -> None:
        """Enable depth write."""
        self._rl_enable_depth_mask()

    @always_inline
    fn rl_disable_depth_mask(self) -> None:
        """Disable depth write."""
        self._rl_disable_depth_mask()

    @always_inline
    fn rl_enable_backface_culling(self) -> None:
        """Enable backface culling."""
        self._rl_enable_backface_culling()

    @always_inline
    fn rl_disable_backface_culling(self) -> None:
        """Disable backface culling."""
        self._rl_disable_backface_culling()

    @always_inline
    fn rl_color_mask(self, r: Bool, g: Bool, b: Bool, a: Bool) -> None:
        """Color mask control."""
        self._rl_color_mask(r, g, b, a)

    @always_inline
    fn rl_set_cull_face(self, mode: Int32) -> None:
        """Set face culling mode."""
        self._rl_set_cull_face(mode)

    @always_inline
    fn rl_enable_scissor_test(self) -> None:
        """Enable scissor test."""
        self._rl_enable_scissor_test()

    @always_inline
    fn rl_disable_scissor_test(self) -> None:
        """Disable scissor test."""
        self._rl_disable_scissor_test()

    @always_inline
    fn rl_scissor(self, x: Int32, y: Int32, height: Int32) -> None:
        """Scissor test."""
        self._rl_scissor(x, y, height)

    @always_inline
    fn rl_enable_wire_mode(self) -> None:
        """Enable wire mode."""
        self._rl_enable_wire_mode()

    @always_inline
    fn rl_enable_point_mode(self) -> None:
        """Enable point mode."""
        self._rl_enable_point_mode()

    @always_inline
    fn rl_disable_wire_mode(self) -> None:
        """Disable wire mode (and point)."""
        self._rl_disable_wire_mode()

    @always_inline
    fn rl_set_line_width(self, width: Float32) -> None:
        """Set the line drawing width."""
        self._rl_set_line_width(width)

    @always_inline
    fn rl_get_line_width(self) -> Float32:
        """Get the line drawing width."""
        return self._rl_get_line_width()

    @always_inline
    fn rl_enable_smooth_lines(self) -> None:
        """Enable line aliasing."""
        self._rl_enable_smooth_lines()

    @always_inline
    fn rl_disable_smooth_lines(self) -> None:
        """Disable line aliasing."""
        self._rl_disable_smooth_lines()

    @always_inline
    fn rl_enable_stereo_render(self) -> None:
        """Enable stereo rendering."""
        self._rl_enable_stereo_render()

    @always_inline
    fn rl_disable_stereo_render(self) -> None:
        """Disable stereo rendering."""
        self._rl_disable_stereo_render()

    @always_inline
    fn rl_is_stereo_render_enabled(self) -> Bool:
        """Check if stereo render is enabled."""
        return self._rl_is_stereo_render_enabled()

    @always_inline
    fn rl_clear_color(self, r: UInt8, g: UInt8, b: UInt8, a: UInt8) -> None:
        """Clear color buffer with color."""
        self._rl_clear_color(r, g, b, a)

    @always_inline
    fn rl_clear_screen_buffers(self) -> None:
        """Clear used screen buffers (color and depth)."""
        self._rl_clear_screen_buffers()

    @always_inline
    fn rl_check_errors(self) -> None:
        """Check and log OpenGL error codes."""
        self._rl_check_errors()

    @always_inline
    fn rl_set_blend_mode(self, mode: Int32) -> None:
        """Set blending mode."""
        self._rl_set_blend_mode(mode)

    @always_inline
    fn rl_set_blend_factors(
        self, gl_src_factor: Int32, gl_dst_factor: Int32, gl_equation: Int32
    ) -> None:
        """Set blending mode factor and equation (using OpenGL factors)."""
        self._rl_set_blend_factors(gl_src_factor, gl_dst_factor, gl_equation)

    @always_inline
    fn rl_set_blend_factors_separate(
        self,
        gl_src_rgb: Int32,
        gl_dst_rgb: Int32,
        gl_src_alpha: Int32,
        gl_dst_alpha: Int32,
        gl_eq_rgb: Int32,
        gl_eq_alpha: Int32,
    ) -> None:
        """Set blending mode factors and equations separately (using OpenGL factors).
        """
        self._rl_set_blend_factors_separate(
            gl_src_rgb,
            gl_dst_rgb,
            gl_src_alpha,
            gl_dst_alpha,
            gl_eq_rgb,
            gl_eq_alpha,
        )

    @always_inline
    fn rlgl_init(self, width: Int32, height: Int32) -> None:
        """Initialize rlgl (buffers, shaders, textures, states)."""
        self._rlgl_init(width, height)

    @always_inline
    fn rlgl_close(self) -> None:
        """De-initialize rlgl (buffers, shaders, textures)."""
        self._rlgl_close()

    @always_inline
    fn rl_load_extensions(self, loader: UnsafePointer[NoneType]) -> None:
        """Load OpenGL extensions (loader function required)."""
        self._rl_load_extensions(loader)

    @always_inline
    fn rl_get_version(self) -> Int32:
        """Get current OpenGL version."""
        return self._rl_get_version()

    @always_inline
    fn rl_set_framebuffer_width(self, width: Int32) -> None:
        """Set current framebuffer width."""
        self._rl_set_framebuffer_width(width)

    @always_inline
    fn rl_get_framebuffer_width(self) -> Int32:
        """Get default framebuffer width."""
        return self._rl_get_framebuffer_width()

    @always_inline
    fn rl_set_framebuffer_height(self, height: Int32) -> None:
        """Set current framebuffer height."""
        self._rl_set_framebuffer_height(height)

    @always_inline
    fn rl_get_framebuffer_height(self) -> Int32:
        """Get default framebuffer height."""
        return self._rl_get_framebuffer_height()

    @always_inline
    fn rl_get_texture_id_default(self) -> UInt32:
        """Get default texture id."""
        return self._rl_get_texture_id_default()

    @always_inline
    fn rl_get_shader_id_default(self) -> UInt32:
        """Get default shader id."""
        return self._rl_get_shader_id_default()

    @always_inline
    fn rl_get_shader_locs_default(self) -> UnsafePointer[Int32]:
        """Get default shader locations."""
        return self._rl_get_shader_locs_default()

    @always_inline
    fn rl_load_render_batch(
        self, num_buffers: Int32, buffer_elements: Int32
    ) -> rlRenderBatch:
        """Load a render batch system."""
        return self._rl_load_render_batch(num_buffers, buffer_elements)

    @always_inline
    fn rl_unload_render_batch(self, owned batch: rlRenderBatch) -> None:
        """Unload render batch system."""
        self._rl_unload_render_batch(UnsafePointer.address_of(batch))

    @always_inline
    fn rl_draw_render_batch(self, batch: UnsafePointer[rlRenderBatch]) -> None:
        """Draw render batch data (Update->Draw->Reset)."""
        self._rl_draw_render_batch(batch)

    @always_inline
    fn rl_set_render_batch_active(
        self, batch: UnsafePointer[rlRenderBatch]
    ) -> None:
        """Set the active render batch for rlgl (NULL for default internal)."""
        self._rl_set_render_batch_active(batch)

    @always_inline
    fn rl_draw_render_batch_active(self) -> None:
        """Update and draw internal render batch."""
        self._rl_draw_render_batch_active()

    @always_inline
    fn rl_check_render_batch_limit(self, v_count: Int32) -> Bool:
        """Check internal buffer overflow for a given number of vertex."""
        return self._rl_check_render_batch_limit(v_count)

    @always_inline
    fn rl_set_texture(self, id: UInt32) -> None:
        """Set current texture for render batch and check buffers limits."""
        self._rl_set_texture(id)

    @always_inline
    fn rl_load_vertex_array(self) -> UInt32:
        """Load vertex array (vao) if supported."""
        return self._rl_load_vertex_array()

    @always_inline
    fn rl_load_vertex_buffer(
        self, buffer: UnsafePointer[NoneType], size: Int32, dynamic: Bool
    ) -> UInt32:
        """Load a vertex buffer object."""
        return self._rl_load_vertex_buffer(buffer, size, dynamic)

    @always_inline
    fn rl_load_vertex_buffer_element(
        self, buffer: UnsafePointer[NoneType], size: Int32, dynamic: Bool
    ) -> UInt32:
        """Load vertex buffer elements object."""
        return self._rl_load_vertex_buffer_element(buffer, size, dynamic)

    @always_inline
    fn rl_update_vertex_buffer(
        self,
        buffer_id: UInt32,
        data: UnsafePointer[NoneType],
        data_size: Int32,
        offset: Int32,
    ) -> None:
        """Update vertex buffer object data on GPU buffer."""
        self._rl_update_vertex_buffer(buffer_id, data, data_size, offset)

    @always_inline
    fn rl_update_vertex_buffer_elements(
        self,
        id: UInt32,
        data: UnsafePointer[NoneType],
        data_size: Int32,
        offset: Int32,
    ) -> None:
        """Update vertex buffer elements data on GPU buffer."""
        self._rl_update_vertex_buffer_elements(id, data, data_size, offset)

    @always_inline
    fn rl_unload_vertex_array(self, vao_id: UInt32) -> None:
        """Unload vertex array (vao)."""
        self._rl_unload_vertex_array(vao_id)

    @always_inline
    fn rl_unload_vertex_buffer(self, vbo_id: UInt32) -> None:
        """Unload vertex buffer object."""
        self._rl_unload_vertex_buffer(vbo_id)

    @always_inline
    fn rl_set_vertex_attribute(
        self,
        index: UInt32,
        comp_size: Int32,
        type_: Int32,
        normalized: Bool,
        stride: Int32,
        offset: Int32,
    ) -> None:
        """Set vertex attribute data configuration."""
        self._rl_set_vertex_attribute(
            index, comp_size, type_, normalized, stride, offset
        )

    @always_inline
    fn rl_set_vertex_attribute_divisor(
        self, index: UInt32, divisor: Int32
    ) -> None:
        """Set vertex attribute data divisor."""
        self._rl_set_vertex_attribute_divisor(index, divisor)

    @always_inline
    fn rl_set_vertex_attribute_default(
        self,
        loc_index: Int32,
        value: UnsafePointer[NoneType],
        attrib_type: Int32,
        count: Int32,
    ) -> None:
        """Set vertex attribute default value, when attribute to provided."""
        self._rl_set_vertex_attribute_default(
            loc_index, value, attrib_type, count
        )

    @always_inline
    fn rl_draw_vertex_array(self, offset: Int32, count: Int32) -> None:
        """Draw vertex array (currently active vao)."""
        self._rl_draw_vertex_array(offset, count)

    @always_inline
    fn rl_draw_vertex_array_elements(
        self, offset: Int32, count: Int32, buffer: UnsafePointer[NoneType]
    ) -> None:
        """Draw vertex array elements."""
        self._rl_draw_vertex_array_elements(offset, count, buffer)

    @always_inline
    fn rl_draw_vertex_array_instanced(
        self, offset: Int32, count: Int32, instances: Int32
    ) -> None:
        """Draw vertex array (currently active vao) with instancing."""
        self._rl_draw_vertex_array_instanced(offset, count, instances)

    @always_inline
    fn rl_draw_vertex_array_elements_instanced(
        self,
        offset: Int32,
        count: Int32,
        buffer: UnsafePointer[NoneType],
        instances: Int32,
    ) -> None:
        """Draw vertex array elements with instancing."""
        self._rl_draw_vertex_array_elements_instanced(
            offset, count, buffer, instances
        )

    @always_inline
    fn rl_load_texture(
        self,
        data: UnsafePointer[NoneType],
        width: Int32,
        height: Int32,
        format: Int32,
        mipmap_count: Int32,
    ) -> UInt32:
        """Load texture data."""
        return self._rl_load_texture(data, width, height, format, mipmap_count)

    @always_inline
    fn rl_load_texture_depth(
        self, width: Int32, height: Int32, use_render_buffer: Bool
    ) -> UInt32:
        """Load depth texture/renderbuffer (to be attached to fbo)."""
        return self._rl_load_texture_depth(width, height, use_render_buffer)

    @always_inline
    fn rl_load_texture_cubemap(
        self, data: UnsafePointer[NoneType], size: Int32, format: Int32
    ) -> UInt32:
        """Load texture cubemap data."""
        return self._rl_load_texture_cubemap(data, size, format)

    @always_inline
    fn rl_update_texture(
        self,
        id: UInt32,
        offset_x: Int32,
        offset_y: Int32,
        width: Int32,
        height: Int32,
        format: Int32,
        data: UnsafePointer[NoneType],
    ) -> None:
        """Update texture with new data on GPU."""
        return self._rl_update_texture(
            id, offset_x, offset_y, width, height, format, data
        )

    @always_inline
    fn rl_get_gl_texture_formats(
        self,
        format: UInt32,
        gl_internal_format: UnsafePointer[Int32],
        gl_format: UnsafePointer[UInt32],
        gl_type: UnsafePointer[UInt32],
    ) -> None:
        """Get OpenGL internal formats."""
        self._rl_get_gl_texture_formats(
            format, gl_internal_format, gl_format, gl_type
        )

    @always_inline
    fn rl_get_pixel_format_name(self, format: UInt32) -> UnsafePointer[Int8]:
        """Get name string for pixel format."""
        return self._rl_get_pixel_format_name(format)

    @always_inline
    fn rl_unload_texture(self, id: UInt32) -> None:
        """Unload texture from GPU memory."""
        self._rl_unload_texture(id)

    @always_inline
    fn rl_gen_texture_mipmaps(
        self,
        id: UInt32,
        width: Int32,
        height: Int32,
        format: Int32,
        mipmaps: UnsafePointer[Int32],
    ) -> None:
        """Generate mipmap data for selected texture."""
        self._rl_gen_texture_mipmaps(id, width, height, format, mipmaps)

    @always_inline
    fn rl_read_texture_pixels(
        self, id: UInt32, width: Int32, height: Int32, format: Int32
    ) -> UnsafePointer[NoneType]:
        """Read texture pixel data."""
        return self._rl_read_texture_pixels(id, width, height, format)

    @always_inline
    fn rl_read_screen_pixels(
        self, width: Int32, height: Int32
    ) -> UnsafePointer[UInt8]:
        """Read screen pixel data (color buffer)."""
        return self._rl_read_screen_pixels(width, height)

    @always_inline
    fn rl_load_framebuffer(self) -> UInt32:
        """Load an empty framebuffer."""
        return self._rl_load_framebuffer()

    @always_inline
    fn rl_framebuffer_attach(
        self,
        fbo_id: UInt32,
        tex_id: UInt32,
        attach_type: Int32,
        tex_type: Int32,
        mip_level: Int32,
    ) -> None:
        """Attach texture/renderbuffer to a framebuffer."""
        self._rl_framebuffer_attach(
            fbo_id, tex_id, attach_type, tex_type, mip_level
        )

    @always_inline
    fn rl_framebuffer_complete(self, id: UInt32) -> Bool:
        """Verify framebuffer is complete."""
        return self._rl_framebuffer_complete(id)

    @always_inline
    fn rl_unload_framebuffer(self, id: UInt32) -> None:
        """Delete framebuffer from GPU."""
        self._rl_unload_framebuffer(id)

    @always_inline
    fn rl_load_shader_code(
        self, vs_code: UnsafePointer[Int8], fs_code: UnsafePointer[Int8]
    ) -> UInt32:
        """Load shader from code strings."""
        return self._rl_load_shader_code(vs_code, fs_code)

    @always_inline
    fn rl_compile_shader(
        self, shader_code: UnsafePointer[Int8], shader_type: Int32
    ) -> UInt32:
        """Compile custom shader and return shader id."""
        return self._rl_compile_shader(shader_code, shader_type)

    @always_inline
    fn rl_load_shader_program(
        self, v_shader_id: UInt32, f_shader_id: UInt32
    ) -> UInt32:
        """Load custom shader program."""
        return self._rl_load_shader_program(v_shader_id, f_shader_id)

    @always_inline
    fn rl_unload_shader_program(self, id: UInt32) -> None:
        """Unload shader program."""
        self._rl_unload_shader_program(id)

    @always_inline
    fn rl_get_location_uniform(
        self, shader_id: UInt32, uniform_name: String
    ) -> Int32:
        """Get shader location uniform."""
        return self._rl_get_location_uniform(
            shader_id, uniform_name.unsafe_cstr_ptr()
        )

    @always_inline
    fn rl_get_location_attrib(
        self, shader_id: UInt32, attrib_name: String
    ) -> Int32:
        """Get shader location attribute."""
        return self._rl_get_location_attrib(shader_id, attrib_name.unsafe_cstr_ptr())

    @always_inline
    fn rl_set_uniform(
        self,
        loc_index: Int32,
        value: UnsafePointer[NoneType],
        uniform_type: Int32,
        count: Int32,
    ) -> None:
        """Set shader value uniform."""
        self._rl_set_uniform(loc_index, value, uniform_type, count)

    @always_inline
    fn rl_set_uniform_matrix(self, loc_index: Int32, owned mat: Matrix) -> None:
        """Set shader value matrix."""
        self._rl_set_uniform_matrix(loc_index, UnsafePointer.address_of(mat))

    @always_inline
    fn rl_set_uniform_sampler(
        self, loc_index: Int32, texture_id: UInt32
    ) -> None:
        """Set shader value sampler."""
        self._rl_set_uniform_sampler(loc_index, texture_id)

    @always_inline
    fn rl_set_shader(self, id: UInt32, locs: UnsafePointer[Int32]) -> None:
        """Set shader currently active (id and locations)."""
        self._rl_set_shader(id, locs)

    @always_inline
    fn rl_load_compute_shader_program(self, shader_id: UInt32) -> UInt32:
        """Load compute shader program."""
        return self._rl_load_compute_shader_program(shader_id)

    @always_inline
    fn rl_compute_shader_dispatch(
        self, group_x: UInt32, group_y: UInt32, group_z: UInt32
    ) -> None:
        """Dispatch compute shader (equivalent to *draw* for graphics pipeline).
        """
        self._rl_compute_shader_dispatch(group_x, group_y, group_z)

    @always_inline
    fn rl_load_shader_buffer(
        self, size: UInt32, data: UnsafePointer[NoneType], usage_hint: Int32
    ) -> UInt32:
        """Load shader storage buffer object (SSBO)."""
        return self._rl_load_shader_buffer(size, data, usage_hint)

    @always_inline
    fn rl_unload_shader_buffer(self, ssbo_id: UInt32) -> None:
        """Unload shader storage buffer object (SSBO)."""
        self._rl_unload_shader_buffer(ssbo_id)

    @always_inline
    fn rl_update_shader_buffer(
        self,
        id: UInt32,
        data: UnsafePointer[NoneType],
        data_size: UInt32,
        offset: UInt32,
    ) -> None:
        """Update SSBO buffer data."""
        self._rl_update_shader_buffer(id, data, data_size, offset)

    @always_inline
    fn rl_bind_shader_buffer(self, id: UInt32, index: UInt32) -> None:
        """Bind SSBO buffer."""
        self._rl_bind_shader_buffer(id, index)

    @always_inline
    fn rl_read_shader_buffer(
        self,
        id: UInt32,
        dest: UnsafePointer[NoneType],
        count: UInt32,
        offset: UInt32,
    ) -> None:
        """Read SSBO buffer data (GPU->CPU)."""
        self._rl_read_shader_buffer(id, dest, count, offset)

    @always_inline
    fn rl_copy_shader_buffer(
        self,
        dest_id: UInt32,
        src_id: UInt32,
        dest_offset: UInt32,
        src_offset: UInt32,
        count: UInt32,
    ) -> None:
        """Copy SSBO data between buffers."""
        self._rl_copy_shader_buffer(
            dest_id, src_id, dest_offset, src_offset, count
        )

    @always_inline
    fn rl_get_shader_buffer_size(self, id: UInt32) -> UInt32:
        """Get SSBO buffer size."""
        return self._rl_get_shader_buffer_size(id)

    @always_inline
    fn rl_bind_image_texture(
        self, id: UInt32, index: UInt32, format: Int32, readonly: Bool
    ) -> None:
        """Bind image texture."""
        self._rl_bind_image_texture(id, index, format, readonly)

    @always_inline
    fn rl_get_matrix_modelview(self) -> Matrix:
        """Get internal modelview matrix."""
        return self._rl_get_matrix_modelview()

    @always_inline
    fn rl_get_matrix_projection(self) -> Matrix:
        """Get internal projection matrix."""
        return self._rl_get_matrix_projection()

    @always_inline
    fn rl_get_matrix_transform(self) -> Matrix:
        """Get internal accumulated transform matrix."""
        return self._rl_get_matrix_transform()

    @always_inline
    fn rl_get_matrix_projection_stereo(self, eye: Int32) -> Matrix:
        """Get internal projection matrix for stereo render (selected eye)."""
        return self._rl_get_matrix_projection_stereo(eye)

    @always_inline
    fn rl_get_matrix_view_offset_stereo(self, eye: Int32) -> Matrix:
        """Get internal view offset matrix for stereo render (selected eye)."""
        return self._rl_get_matrix_view_offset_stereo(eye)

    @always_inline
    fn rl_set_matrix_projection(self, owned proj: Matrix) -> None:
        """Set a custom projection matrix (replaces internal projection matrix).
        """
        self._rl_set_matrix_projection(UnsafePointer.address_of(proj))

    @always_inline
    fn rl_set_matrix_modelview(self, owned view: Matrix) -> None:
        """Set a custom modelview matrix (replaces internal modelview matrix).
        """
        self._rl_set_matrix_modelview(UnsafePointer.address_of(view))

    @always_inline
    fn rl_set_matrix_projection_stereo(
        self, owned right: Matrix, owned left: Matrix
    ) -> None:
        """Set eyes projection matrices for stereo rendering."""
        self._rl_set_matrix_projection_stereo(
            UnsafePointer.address_of(right), UnsafePointer.address_of(left)
        )

    @always_inline
    fn rl_set_matrix_view_offset_stereo(
        self, owned right: Matrix, owned left: Matrix
    ) -> None:
        """Set eyes view offsets matrices for stereo rendering."""
        self._rl_set_matrix_view_offset_stereo(
            UnsafePointer.address_of(right), UnsafePointer.address_of(left)
        )

    @always_inline
    fn rl_load_draw_cube(self) -> None:
        """Load and draw a cube."""
        self._rl_load_draw_cube()

    @always_inline
    fn rl_load_draw_quad(self) -> None:
        """Load and draw a quad."""
        self._rl_load_draw_quad()
