from sys.ffi import DLHandle

from .texture import Rectangle, Texture2D
from .shapes import Color, Vector2

alias c_raylib_SetShapesTexture = fn (
    texture: UnsafePointer[Texture2D], source: UnsafePointer[Rectangle]
) -> None

# Basic shapes drawing functions
alias c_raylib_DrawPixel = fn (
    posX: Int32, posY: Int32, color: UnsafePointer[Color]
) -> None
alias c_raylib_DrawPixelV = fn (
    position: UnsafePointer[Vector2], color: UnsafePointer[Color]
) -> None
alias c_raylib_DrawLine = fn (
    startPosX: Int32,
    startPosY: Int32,
    endPosX: Int32,
    endPosY: Int32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawLineV = fn (
    startPos: UnsafePointer[Vector2],
    endPos: UnsafePointer[Vector2],
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawLineEx = fn (
    startPos: UnsafePointer[Vector2],
    endPos: UnsafePointer[Vector2],
    thick: Float32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawLineStrip = fn (
    points: UnsafePointer[Vector2],
    pointCount: Int32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawLineBezier = fn (
    startPos: UnsafePointer[Vector2],
    endPos: UnsafePointer[Vector2],
    thick: Float32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawCircle = fn (
    centerX: Int32, centerY: Int32, radius: Float32, color: UnsafePointer[Color]
) -> None
alias c_raylib_DrawCircleSector = fn (
    center: UnsafePointer[Vector2],
    radius: Float32,
    startAngle: Float32,
    endAngle: Float32,
    segments: Int32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawCircleSectorLines = fn (
    center: UnsafePointer[Vector2],
    radius: Float32,
    startAngle: Float32,
    endAngle: Float32,
    segments: Int32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawCircleGradient = fn (
    centerX: Int32,
    centerY: Int32,
    radius: Float32,
    color1: UnsafePointer[Color],
    color2: UnsafePointer[Color],
) -> None
alias c_raylib_DrawCircleV = fn (
    center: UnsafePointer[Vector2], radius: Float32, color: UnsafePointer[Color]
) -> None
alias c_raylib_DrawCircleLines = fn (
    centerX: Int32, centerY: Int32, radius: Float32, color: UnsafePointer[Color]
) -> None
alias c_raylib_DrawCircleLinesV = fn (
    center: UnsafePointer[Vector2], radius: Float32, color: UnsafePointer[Color]
) -> None
alias c_raylib_DrawEllipse = fn (
    centerX: Int32,
    centerY: Int32,
    radiusH: Float32,
    radiusV: Float32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawEllipseLines = fn (
    centerX: Int32,
    centerY: Int32,
    radiusH: Float32,
    radiusV: Float32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawRing = fn (
    center: UnsafePointer[Vector2],
    innerRadius: Float32,
    outerRadius: Float32,
    startAngle: Float32,
    endAngle: Float32,
    segments: Int32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawRingLines = fn (
    center: UnsafePointer[Vector2],
    innerRadius: Float32,
    outerRadius: Float32,
    startAngle: Float32,
    endAngle: Float32,
    segments: Int32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawRectangle = fn (
    posX: Int32,
    posY: Int32,
    width: Int32,
    height: Int32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawRectangleV = fn (
    position: UnsafePointer[Vector2],
    size: UnsafePointer[Vector2],
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawRectangleRec = fn (
    rec: UnsafePointer[Rectangle], color: UnsafePointer[Color]
) -> None
alias c_raylib_DrawRectanglePro = fn (
    rec: UnsafePointer[Rectangle],
    origin: UnsafePointer[Vector2],
    rotation: Float32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawRectangleGradientV = fn (
    posX: Int32,
    posY: Int32,
    width: Int32,
    height: Int32,
    color1: UnsafePointer[Color],
    color2: UnsafePointer[Color],
) -> None
alias c_raylib_DrawRectangleGradientH = fn (
    posX: Int32,
    posY: Int32,
    width: Int32,
    height: Int32,
    color1: UnsafePointer[Color],
    color2: UnsafePointer[Color],
) -> None
alias c_raylib_DrawRectangleGradientEx = fn (
    rec: UnsafePointer[Rectangle],
    col1: UnsafePointer[Color],
    col2: UnsafePointer[Color],
    col3: UnsafePointer[Color],
    col4: UnsafePointer[Color],
) -> None
alias c_raylib_DrawRectangleLines = fn (
    posX: Int32,
    posY: Int32,
    width: Int32,
    height: Int32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawRectangleLinesEx = fn (
    rec: UnsafePointer[Rectangle],
    lineThick: Float32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawRectangleRounded = fn (
    rec: UnsafePointer[Rectangle],
    roundness: Float32,
    segments: Int32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawRectangleRoundedLines = fn (
    rec: UnsafePointer[Rectangle],
    roundness: Float32,
    segments: Int32,
    lineThick: Float32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawTriangle = fn (
    v1: UnsafePointer[Vector2],
    v2: UnsafePointer[Vector2],
    v3: UnsafePointer[Vector2],
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawTriangleLines = fn (
    v1: UnsafePointer[Vector2],
    v2: UnsafePointer[Vector2],
    v3: UnsafePointer[Vector2],
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawTriangleFan = fn (
    points: UnsafePointer[Vector2],
    pointCount: Int32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawTriangleStrip = fn (
    points: UnsafePointer[Vector2],
    pointCount: Int32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawPoly = fn (
    center: UnsafePointer[Vector2],
    sides: Int32,
    radius: Float32,
    rotation: Float32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawPolyLines = fn (
    center: UnsafePointer[Vector2],
    sides: Int32,
    radius: Float32,
    rotation: Float32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawPolyLinesEx = fn (
    center: UnsafePointer[Vector2],
    sides: Int32,
    radius: Float32,
    rotation: Float32,
    lineThick: Float32,
    color: UnsafePointer[Color],
) -> None

# Splines drawing functions
alias c_raylib_DrawSplineLinear = fn (
    points: UnsafePointer[Vector2],
    pointCount: Int32,
    thick: Float32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawSplineBasis = fn (
    points: UnsafePointer[Vector2],
    pointCount: Int32,
    thick: Float32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawSplineCatmullRom = fn (
    points: UnsafePointer[Vector2],
    pointCount: Int32,
    thick: Float32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawSplineBezierQuadratic = fn (
    points: UnsafePointer[Vector2],
    pointCount: Int32,
    thick: Float32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawSplineBezierCubic = fn (
    points: UnsafePointer[Vector2],
    pointCount: Int32,
    thick: Float32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawSplineSegmentLinear = fn (
    p1: UnsafePointer[Vector2],
    p2: UnsafePointer[Vector2],
    thick: Float32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawSplineSegmentBasis = fn (
    p1: UnsafePointer[Vector2],
    p2: UnsafePointer[Vector2],
    p3: UnsafePointer[Vector2],
    p4: UnsafePointer[Vector2],
    thick: Float32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawSplineSegmentCatmullRom = fn (
    p1: UnsafePointer[Vector2],
    p2: UnsafePointer[Vector2],
    p3: UnsafePointer[Vector2],
    p4: UnsafePointer[Vector2],
    thick: Float32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawSplineSegmentBezierQuadratic = fn (
    p1: UnsafePointer[Vector2],
    c2: UnsafePointer[Vector2],
    p3: UnsafePointer[Vector2],
    thick: Float32,
    color: UnsafePointer[Color],
) -> None
alias c_raylib_DrawSplineSegmentBezierCubic = fn (
    p1: UnsafePointer[Vector2],
    c2: UnsafePointer[Vector2],
    c3: UnsafePointer[Vector2],
    p4: UnsafePointer[Vector2],
    thick: Float32,
    color: UnsafePointer[Color],
) -> None

# Spline segment point evaluation functions
alias c_raylib_GetSplinePointLinear = fn (
    startPos: UnsafePointer[Vector2], endPos: UnsafePointer[Vector2], t: Float32
) -> Vector2
alias c_raylib_GetSplinePointBasis = fn (
    p1: UnsafePointer[Vector2],
    p2: UnsafePointer[Vector2],
    p3: UnsafePointer[Vector2],
    p4: UnsafePointer[Vector2],
    t: Float32,
) -> Vector2
alias c_raylib_GetSplinePointCatmullRom = fn (
    p1: UnsafePointer[Vector2],
    p2: UnsafePointer[Vector2],
    p3: UnsafePointer[Vector2],
    p4: UnsafePointer[Vector2],
    t: Float32,
) -> Vector2
alias c_raylib_GetSplinePointBezierQuad = fn (
    p1: UnsafePointer[Vector2],
    c2: UnsafePointer[Vector2],
    p3: UnsafePointer[Vector2],
    t: Float32,
) -> Vector2
alias c_raylib_GetSplinePointBezierCubic = fn (
    p1: UnsafePointer[Vector2],
    c2: UnsafePointer[Vector2],
    c3: UnsafePointer[Vector2],
    p4: UnsafePointer[Vector2],
    t: Float32,
) -> Vector2

# Basic shapes collision detection functions
alias c_raylib_CheckCollisionRecs = fn (
    rec1: UnsafePointer[Rectangle], rec2: UnsafePointer[Rectangle]
) -> Bool
alias c_raylib_CheckCollisionCircles = fn (
    center1: UnsafePointer[Vector2],
    radius1: Float32,
    center2: UnsafePointer[Vector2],
    radius2: Float32,
) -> Bool
alias c_raylib_CheckCollisionCircleRec = fn (
    center: UnsafePointer[Vector2],
    radius: Float32,
    rec: UnsafePointer[Rectangle],
) -> Bool
alias c_raylib_CheckCollisionPointRec = fn (
    point: UnsafePointer[Vector2], rec: UnsafePointer[Rectangle]
) -> Bool
alias c_raylib_CheckCollisionPointCircle = fn (
    point: UnsafePointer[Vector2],
    center: UnsafePointer[Vector2],
    radius: Float32,
) -> Bool
alias c_raylib_CheckCollisionPointTriangle = fn (
    point: UnsafePointer[Vector2],
    p1: UnsafePointer[Vector2],
    p2: UnsafePointer[Vector2],
    p3: UnsafePointer[Vector2],
) -> Bool
alias c_raylib_CheckCollisionPointPoly = fn (
    point: UnsafePointer[Vector2],
    points: UnsafePointer[Vector2],
    pointCount: Int32,
) -> Bool
alias c_raylib_CheckCollisionLines = fn (
    startPos1: UnsafePointer[Vector2],
    endPos1: UnsafePointer[Vector2],
    startPos2: UnsafePointer[Vector2],
    endPos2: UnsafePointer[Vector2],
    collisionPoint: UnsafePointer[Vector2],
) -> Bool
alias c_raylib_CheckCollisionPointLine = fn (
    point: UnsafePointer[Vector2],
    p1: UnsafePointer[Vector2],
    p2: UnsafePointer[Vector2],
    threshold: Int32,
) -> Bool
alias c_raylib_GetCollisionRec = fn (
    rec1: UnsafePointer[Rectangle], rec2: UnsafePointer[Rectangle]
) -> Rectangle


@value
struct RaylibShapes:
    var _set_shapes_texture: c_raylib_SetShapesTexture

    var _draw_pixel: c_raylib_DrawPixel
    var _draw_pixel_v: c_raylib_DrawPixelV
    var _draw_line: c_raylib_DrawLine
    var _draw_line_v: c_raylib_DrawLineV
    var _draw_line_ex: c_raylib_DrawLineEx
    var _draw_line_strip: c_raylib_DrawLineStrip
    var _draw_line_bezier: c_raylib_DrawLineBezier
    var _draw_circle: c_raylib_DrawCircle
    var _draw_circle_sector: c_raylib_DrawCircleSector
    var _draw_circle_sector_lines: c_raylib_DrawCircleSectorLines
    var _draw_circle_gradient: c_raylib_DrawCircleGradient
    var _draw_circle_v: c_raylib_DrawCircleV
    var _draw_circle_lines: c_raylib_DrawCircleLines
    var _draw_circle_lines_v: c_raylib_DrawCircleLinesV
    var _draw_ellipse: c_raylib_DrawEllipse
    var _draw_ellipse_lines: c_raylib_DrawEllipseLines
    var _draw_ring: c_raylib_DrawRing
    var _draw_ring_lines: c_raylib_DrawRingLines
    var _draw_rectangle: c_raylib_DrawRectangle
    var _draw_rectangle_v: c_raylib_DrawRectangleV
    var _draw_rectangle_rec: c_raylib_DrawRectangleRec
    var _draw_rectangle_pro: c_raylib_DrawRectanglePro
    var _draw_rectangle_gradient_v: c_raylib_DrawRectangleGradientV
    var _draw_rectangle_gradient_h: c_raylib_DrawRectangleGradientH
    var _draw_rectangle_gradient_ex: c_raylib_DrawRectangleGradientEx
    var _draw_rectangle_lines: c_raylib_DrawRectangleLines
    var _draw_rectangle_lines_ex: c_raylib_DrawRectangleLinesEx
    var _draw_rectangle_rounded: c_raylib_DrawRectangleRounded
    var _draw_rectangle_rounded_lines: c_raylib_DrawRectangleRoundedLines
    var _draw_triangle: c_raylib_DrawTriangle
    var _draw_triangle_lines: c_raylib_DrawTriangleLines
    var _draw_triangle_fan: c_raylib_DrawTriangleFan
    var _draw_triangle_strip: c_raylib_DrawTriangleStrip
    var _draw_poly: c_raylib_DrawPoly
    var _draw_poly_lines: c_raylib_DrawPolyLines
    var _draw_poly_lines_ex: c_raylib_DrawPolyLinesEx

    var _draw_spline_linear: c_raylib_DrawSplineLinear
    var _draw_spline_basis: c_raylib_DrawSplineBasis
    var _draw_spline_catmull_rom: c_raylib_DrawSplineCatmullRom
    var _draw_spline_bezier_quadratic: c_raylib_DrawSplineBezierQuadratic
    var _draw_spline_bezier_cubic: c_raylib_DrawSplineBezierCubic
    var _draw_spline_segment_linear: c_raylib_DrawSplineSegmentLinear
    var _draw_spline_segment_basis: c_raylib_DrawSplineSegmentBasis
    var _draw_spline_segment_catmull_rom: c_raylib_DrawSplineSegmentCatmullRom
    var _draw_spline_segment_bezier_quadratic: c_raylib_DrawSplineSegmentBezierQuadratic
    var _draw_spline_segment_bezier_cubic: c_raylib_DrawSplineSegmentBezierCubic

    var _get_spline_point_linear: c_raylib_GetSplinePointLinear
    var _get_spline_point_basis: c_raylib_GetSplinePointBasis
    var _get_spline_point_catmull_rom: c_raylib_GetSplinePointCatmullRom
    var _get_spline_point_bezier_quad: c_raylib_GetSplinePointBezierQuad
    var _get_spline_point_bezier_cubic: c_raylib_GetSplinePointBezierCubic

    var _check_collision_recs: c_raylib_CheckCollisionRecs
    var _check_collision_circles: c_raylib_CheckCollisionCircles
    var _check_collision_circle_rec: c_raylib_CheckCollisionCircleRec
    var _check_collision_point_rec: c_raylib_CheckCollisionPointRec
    var _check_collision_point_circle: c_raylib_CheckCollisionPointCircle
    var _check_collision_point_triangle: c_raylib_CheckCollisionPointTriangle
    var _check_collision_point_poly: c_raylib_CheckCollisionPointPoly
    var _check_collision_lines: c_raylib_CheckCollisionLines
    var _check_collision_point_line: c_raylib_CheckCollisionPointLine
    var _get_collision_rec: c_raylib_GetCollisionRec

    fn __init__(inout self, raylib_bindings_internal: DLHandle):
        self._set_shapes_texture = raylib_bindings_internal.get_function[
            c_raylib_SetShapesTexture
        ]("_SetShapesTexture")

        # Basic shapes drawing functions
        self._draw_pixel = raylib_bindings_internal.get_function[
            c_raylib_DrawPixel
        ]("_DrawPixel")
        self._draw_pixel_v = raylib_bindings_internal.get_function[
            c_raylib_DrawPixelV
        ]("_DrawPixelV")
        self._draw_line = raylib_bindings_internal.get_function[
            c_raylib_DrawLine
        ]("_DrawLine")
        self._draw_line_v = raylib_bindings_internal.get_function[
            c_raylib_DrawLineV
        ]("_DrawLineV")
        self._draw_line_ex = raylib_bindings_internal.get_function[
            c_raylib_DrawLineEx
        ]("_DrawLineEx")
        self._draw_line_strip = raylib_bindings_internal.get_function[
            c_raylib_DrawLineStrip
        ]("_DrawLineStrip")
        self._draw_line_bezier = raylib_bindings_internal.get_function[
            c_raylib_DrawLineBezier
        ]("_DrawLineBezier")
        self._draw_circle = raylib_bindings_internal.get_function[
            c_raylib_DrawCircle
        ]("_DrawCircle")
        self._draw_circle_sector = raylib_bindings_internal.get_function[
            c_raylib_DrawCircleSector
        ]("_DrawCircleSector")
        self._draw_circle_sector_lines = raylib_bindings_internal.get_function[
            c_raylib_DrawCircleSectorLines
        ]("_DrawCircleSectorLines")
        self._draw_circle_gradient = raylib_bindings_internal.get_function[
            c_raylib_DrawCircleGradient
        ]("_DrawCircleGradient")
        self._draw_circle_v = raylib_bindings_internal.get_function[
            c_raylib_DrawCircleV
        ]("_DrawCircleV")
        self._draw_circle_lines = raylib_bindings_internal.get_function[
            c_raylib_DrawCircleLines
        ]("_DrawCircleLines")
        self._draw_circle_lines_v = raylib_bindings_internal.get_function[
            c_raylib_DrawCircleLinesV
        ]("_DrawCircleLinesV")
        self._draw_ellipse = raylib_bindings_internal.get_function[
            c_raylib_DrawEllipse
        ]("_DrawEllipse")
        self._draw_ellipse_lines = raylib_bindings_internal.get_function[
            c_raylib_DrawEllipseLines
        ]("_DrawEllipseLines")
        self._draw_ring = raylib_bindings_internal.get_function[
            c_raylib_DrawRing
        ]("_DrawRing")
        self._draw_ring_lines = raylib_bindings_internal.get_function[
            c_raylib_DrawRingLines
        ]("_DrawRingLines")
        self._draw_rectangle = raylib_bindings_internal.get_function[
            c_raylib_DrawRectangle
        ]("_DrawRectangle")
        self._draw_rectangle_v = raylib_bindings_internal.get_function[
            c_raylib_DrawRectangleV
        ]("_DrawRectangleV")
        self._draw_rectangle_rec = raylib_bindings_internal.get_function[
            c_raylib_DrawRectangleRec
        ]("_DrawRectangleRec")
        self._draw_rectangle_pro = raylib_bindings_internal.get_function[
            c_raylib_DrawRectanglePro
        ]("_DrawRectanglePro")
        self._draw_rectangle_gradient_v = raylib_bindings_internal.get_function[
            c_raylib_DrawRectangleGradientV
        ]("_DrawRectangleGradientV")
        self._draw_rectangle_gradient_h = raylib_bindings_internal.get_function[
            c_raylib_DrawRectangleGradientH
        ]("_DrawRectangleGradientH")
        self._draw_rectangle_gradient_ex = (
            raylib_bindings_internal.get_function[
                c_raylib_DrawRectangleGradientEx
            ]("_DrawRectangleGradientEx")
        )
        self._draw_rectangle_lines = raylib_bindings_internal.get_function[
            c_raylib_DrawRectangleLines
        ]("_DrawRectangleLines")
        self._draw_rectangle_lines_ex = raylib_bindings_internal.get_function[
            c_raylib_DrawRectangleLinesEx
        ]("_DrawRectangleLinesEx")
        self._draw_rectangle_rounded = raylib_bindings_internal.get_function[
            c_raylib_DrawRectangleRounded
        ]("_DrawRectangleRounded")
        self._draw_rectangle_rounded_lines = (
            raylib_bindings_internal.get_function[
                c_raylib_DrawRectangleRoundedLines
            ]("_DrawRectangleRoundedLines")
        )
        self._draw_triangle = raylib_bindings_internal.get_function[
            c_raylib_DrawTriangle
        ]("_DrawTriangle")
        self._draw_triangle_lines = raylib_bindings_internal.get_function[
            c_raylib_DrawTriangleLines
        ]("_DrawTriangleLines")
        self._draw_triangle_fan = raylib_bindings_internal.get_function[
            c_raylib_DrawTriangleFan
        ]("_DrawTriangleFan")
        self._draw_triangle_strip = raylib_bindings_internal.get_function[
            c_raylib_DrawTriangleStrip
        ]("_DrawTriangleStrip")
        self._draw_poly = raylib_bindings_internal.get_function[
            c_raylib_DrawPoly
        ]("_DrawPoly")
        self._draw_poly_lines = raylib_bindings_internal.get_function[
            c_raylib_DrawPolyLines
        ]("_DrawPolyLines")
        self._draw_poly_lines_ex = raylib_bindings_internal.get_function[
            c_raylib_DrawPolyLinesEx
        ]("_DrawPolyLinesEx")

        # Splines drawing functions
        self._draw_spline_linear = raylib_bindings_internal.get_function[
            c_raylib_DrawSplineLinear
        ]("_DrawSplineLinear")
        self._draw_spline_basis = raylib_bindings_internal.get_function[
            c_raylib_DrawSplineBasis
        ]("_DrawSplineBasis")
        self._draw_spline_catmull_rom = raylib_bindings_internal.get_function[
            c_raylib_DrawSplineCatmullRom
        ]("_DrawSplineCatmullRom")
        self._draw_spline_bezier_quadratic = (
            raylib_bindings_internal.get_function[
                c_raylib_DrawSplineBezierQuadratic
            ]("_DrawSplineBezierQuadratic")
        )
        self._draw_spline_bezier_cubic = raylib_bindings_internal.get_function[
            c_raylib_DrawSplineBezierCubic
        ]("_DrawSplineBezierCubic")
        self._draw_spline_segment_linear = (
            raylib_bindings_internal.get_function[
                c_raylib_DrawSplineSegmentLinear
            ]("_DrawSplineSegmentLinear")
        )
        self._draw_spline_segment_basis = raylib_bindings_internal.get_function[
            c_raylib_DrawSplineSegmentBasis
        ]("_DrawSplineSegmentBasis")
        self._draw_spline_segment_catmull_rom = (
            raylib_bindings_internal.get_function[
                c_raylib_DrawSplineSegmentCatmullRom
            ]("_DrawSplineSegmentCatmullRom")
        )
        self._draw_spline_segment_bezier_quadratic = (
            raylib_bindings_internal.get_function[
                c_raylib_DrawSplineSegmentBezierQuadratic
            ]("_DrawSplineSegmentBezierQuadratic")
        )
        self._draw_spline_segment_bezier_cubic = (
            raylib_bindings_internal.get_function[
                c_raylib_DrawSplineSegmentBezierCubic
            ]("_DrawSplineSegmentBezierCubic")
        )

        # Spline segment point evaluation functions
        self._get_spline_point_linear = raylib_bindings_internal.get_function[
            c_raylib_GetSplinePointLinear
        ]("_GetSplinePointLinear")
        self._get_spline_point_basis = raylib_bindings_internal.get_function[
            c_raylib_GetSplinePointBasis
        ]("_GetSplinePointBasis")
        self._get_spline_point_catmull_rom = (
            raylib_bindings_internal.get_function[
                c_raylib_GetSplinePointCatmullRom
            ]("_GetSplinePointCatmullRom")
        )
        self._get_spline_point_bezier_quad = (
            raylib_bindings_internal.get_function[
                c_raylib_GetSplinePointBezierQuad
            ]("_GetSplinePointBezierQuad")
        )
        self._get_spline_point_bezier_cubic = (
            raylib_bindings_internal.get_function[
                c_raylib_GetSplinePointBezierCubic
            ]("_GetSplinePointBezierCubic")
        )

        # Basic shapes collision detection functions
        self._check_collision_recs = raylib_bindings_internal.get_function[
            c_raylib_CheckCollisionRecs
        ]("_CheckCollisionRecs")
        self._check_collision_circles = raylib_bindings_internal.get_function[
            c_raylib_CheckCollisionCircles
        ]("_CheckCollisionCircles")
        self._check_collision_circle_rec = (
            raylib_bindings_internal.get_function[
                c_raylib_CheckCollisionCircleRec
            ]("_CheckCollisionCircleRec")
        )
        self._check_collision_point_rec = raylib_bindings_internal.get_function[
            c_raylib_CheckCollisionPointRec
        ]("_CheckCollisionPointRec")
        self._check_collision_point_circle = (
            raylib_bindings_internal.get_function[
                c_raylib_CheckCollisionPointCircle
            ]("_CheckCollisionPointCircle")
        )
        self._check_collision_point_triangle = (
            raylib_bindings_internal.get_function[
                c_raylib_CheckCollisionPointTriangle
            ]("_CheckCollisionPointTriangle")
        )
        self._check_collision_point_poly = (
            raylib_bindings_internal.get_function[
                c_raylib_CheckCollisionPointPoly
            ]("_CheckCollisionPointPoly")
        )
        self._check_collision_lines = raylib_bindings_internal.get_function[
            c_raylib_CheckCollisionLines
        ]("_CheckCollisionLines")
        self._check_collision_point_line = (
            raylib_bindings_internal.get_function[
                c_raylib_CheckCollisionPointLine
            ]("_CheckCollisionPointLine")
        )
        self._get_collision_rec = raylib_bindings_internal.get_function[
            c_raylib_GetCollisionRec
        ]("_GetCollisionRec")

    @always_inline
    fn set_shapes_texture(
        self, owned texture: Texture2D, owned source: Rectangle
    ):
        """Set texture and rectangle to be used on shapes drawing functions."""
        self._set_shapes_texture(
            UnsafePointer.address_of(texture), UnsafePointer.address_of(source)
        )

    @always_inline
    fn draw_pixel(self, posX: Int32, posY: Int32, owned color: Color):
        """Draw a pixel."""
        self._draw_pixel(posX, posY, UnsafePointer.address_of(color))

    @always_inline
    fn draw_pixel_v(self, owned position: Vector2, owned color: Color):
        """Draw a pixel (Vector version)."""
        self._draw_pixel_v(
            UnsafePointer.address_of(position), UnsafePointer.address_of(color)
        )

    @always_inline
    fn draw_line(
        self,
        startPosX: Int32,
        startPosY: Int32,
        endPosX: Int32,
        endPosY: Int32,
        owned color: Color,
    ):
        """Draw a line."""
        self._draw_line(
            startPosX,
            startPosY,
            endPosX,
            endPosY,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_line_v(
        self, owned startPos: Vector2, owned endPos: Vector2, owned color: Color
    ):
        """Draw a line (Vector version)."""
        self._draw_line_v(
            UnsafePointer.address_of(startPos),
            UnsafePointer.address_of(endPos),
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_line_ex(
        self,
        owned startPos: Vector2,
        owned endPos: Vector2,
        thick: Float32,
        owned color: Color,
    ):
        """Draw a line defining thickness."""
        self._draw_line_ex(
            UnsafePointer.address_of(startPos),
            UnsafePointer.address_of(endPos),
            thick,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_line_strip(
        self, owned points: Vector2, pointCount: Int32, owned color: Color
    ):
        """Draw a line strip defined by points."""
        self._draw_line_strip(
            UnsafePointer.address_of(points),
            pointCount,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_line_bezier(
        self,
        owned startPos: Vector2,
        owned endPos: Vector2,
        thick: Float32,
        owned color: Color,
    ):
        """Draw a line using cubic-bezier curves in-out."""
        self._draw_line_bezier(
            UnsafePointer.address_of(startPos),
            UnsafePointer.address_of(endPos),
            thick,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_circle(
        self,
        centerX: Int32,
        centerY: Int32,
        radius: Float32,
        owned color: Color,
    ):
        """Draw a color-filled circle."""
        self._draw_circle(
            centerX, centerY, radius, UnsafePointer.address_of(color)
        )

    @always_inline
    fn draw_circle_sector(
        self,
        owned center: Vector2,
        radius: Float32,
        startAngle: Float32,
        endAngle: Float32,
        segments: Int32,
        owned color: Color,
    ):
        """Draw a piece of a circle."""
        self._draw_circle_sector(
            UnsafePointer.address_of(center),
            radius,
            startAngle,
            endAngle,
            segments,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_circle_sector_lines(
        self,
        owned center: Vector2,
        radius: Float32,
        startAngle: Float32,
        endAngle: Float32,
        segments: Int32,
        owned color: Color,
    ):
        """Draw circle sector outline."""
        self._draw_circle_sector_lines(
            UnsafePointer.address_of(center),
            radius,
            startAngle,
            endAngle,
            segments,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_circle_gradient(
        self,
        centerX: Int32,
        centerY: Int32,
        radius: Float32,
        owned color1: Color,
        owned color2: Color,
    ):
        """Draw a gradient-filled circle."""
        self._draw_circle_gradient(
            centerX,
            centerY,
            radius,
            UnsafePointer.address_of(color1),
            UnsafePointer.address_of(color2),
        )

    @always_inline
    fn draw_circle_v(
        self, owned center: Vector2, radius: Float32, owned color: Color
    ):
        """Draw a color-filled circle (Vector version)."""
        self._draw_circle_v(
            UnsafePointer.address_of(center),
            radius,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_circle_lines(
        self,
        centerX: Int32,
        centerY: Int32,
        radius: Float32,
        owned color: Color,
    ):
        """Draw circle outline."""
        self._draw_circle_lines(
            centerX, centerY, radius, UnsafePointer.address_of(color)
        )

    @always_inline
    fn draw_circle_lines_v(
        self, owned center: Vector2, radius: Float32, owned color: Color
    ):
        """Draw circle outline (Vector version)."""
        self._draw_circle_lines_v(
            UnsafePointer.address_of(center),
            radius,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_ellipse(
        self,
        centerX: Int32,
        centerY: Int32,
        radiusH: Float32,
        radiusV: Float32,
        owned color: Color,
    ):
        """Draw ellipse."""
        self._draw_ellipse(
            centerX, centerY, radiusH, radiusV, UnsafePointer.address_of(color)
        )

    @always_inline
    fn draw_ellipse_lines(
        self,
        centerX: Int32,
        centerY: Int32,
        radiusH: Float32,
        radiusV: Float32,
        owned color: Color,
    ):
        """Draw ellipse outline."""
        self._draw_ellipse_lines(
            centerX, centerY, radiusH, radiusV, UnsafePointer.address_of(color)
        )

    @always_inline
    fn draw_ring(
        self,
        owned center: Vector2,
        innerRadius: Float32,
        outerRadius: Float32,
        startAngle: Float32,
        endAngle: Float32,
        segments: Int32,
        owned color: Color,
    ):
        """Draw ring."""
        self._draw_ring(
            UnsafePointer.address_of(center),
            innerRadius,
            outerRadius,
            startAngle,
            endAngle,
            segments,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_ring_lines(
        self,
        owned center: Vector2,
        innerRadius: Float32,
        outerRadius: Float32,
        startAngle: Float32,
        endAngle: Float32,
        segments: Int32,
        owned color: Color,
    ):
        """Draw ring outline."""
        self._draw_ring_lines(
            UnsafePointer.address_of(center),
            innerRadius,
            outerRadius,
            startAngle,
            endAngle,
            segments,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_rectangle(
        self,
        posX: Int32,
        posY: Int32,
        width: Int32,
        height: Int32,
        owned color: Color,
    ):
        """Draw a color-filled rectangle."""
        self._draw_rectangle(
            posX, posY, width, height, UnsafePointer.address_of(color)
        )

    @always_inline
    fn draw_rectangle_v(
        self, owned position: Vector2, owned size: Vector2, owned color: Color
    ):
        """Draw a color-filled rectangle (Vector version)."""
        self._draw_rectangle_v(
            UnsafePointer.address_of(position),
            UnsafePointer.address_of(size),
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_rectangle_rec(self, owned rec: Rectangle, owned color: Color):
        """Draw a color-filled rectangle."""
        self._draw_rectangle_rec(
            UnsafePointer.address_of(rec), UnsafePointer.address_of(color)
        )

    @always_inline
    fn draw_rectangle_pro(
        self,
        owned rec: Rectangle,
        owned origin: Vector2,
        rotation: Float32,
        owned color: Color,
    ):
        """Draw a color-filled rectangle with pro parameters."""
        self._draw_rectangle_pro(
            UnsafePointer.address_of(rec),
            UnsafePointer.address_of(origin),
            rotation,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_rectangle_gradient_v(
        self,
        posX: Int32,
        posY: Int32,
        width: Int32,
        height: Int32,
        owned color1: Color,
        owned color2: Color,
    ):
        """Draw a vertical-gradient-filled rectangle."""
        self._draw_rectangle_gradient_v(
            posX,
            posY,
            width,
            height,
            UnsafePointer.address_of(color1),
            UnsafePointer.address_of(color2),
        )

    @always_inline
    fn draw_rectangle_gradient_h(
        self,
        posX: Int32,
        posY: Int32,
        width: Int32,
        height: Int32,
        owned color1: Color,
        owned color2: Color,
    ):
        """Draw a horizontal-gradient-filled rectangle."""
        self._draw_rectangle_gradient_h(
            posX,
            posY,
            width,
            height,
            UnsafePointer.address_of(color1),
            UnsafePointer.address_of(color2),
        )

    @always_inline
    fn draw_rectangle_gradient_ex(
        self,
        owned rec: Rectangle,
        owned col1: Color,
        owned col2: Color,
        owned col3: Color,
        owned col4: Color,
    ):
        """Draw a gradient-filled rectangle with custom vertex colors."""
        self._draw_rectangle_gradient_ex(
            UnsafePointer.address_of(rec),
            UnsafePointer.address_of(col1),
            UnsafePointer.address_of(col2),
            UnsafePointer.address_of(col3),
            UnsafePointer.address_of(col4),
        )

    @always_inline
    fn draw_rectangle_lines(
        self,
        posX: Int32,
        posY: Int32,
        width: Int32,
        height: Int32,
        owned color: Color,
    ):
        """Draw rectangle outline."""
        self._draw_rectangle_lines(
            posX, posY, width, height, UnsafePointer.address_of(color)
        )

        _ = color

    @always_inline
    fn draw_rectangle_lines_ex(
        self, owned rec: Rectangle, lineThick: Float32, owned color: Color
    ):
        """Draw rectangle outline with extended parameters."""
        self._draw_rectangle_lines_ex(
            UnsafePointer.address_of(rec),
            lineThick,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_rectangle_rounded(
        self,
        owned rec: Rectangle,
        roundness: Float32,
        segments: Int32,
        owned color: Color,
    ):
        """Draw rectangle with rounded edges."""
        self._draw_rectangle_rounded(
            UnsafePointer.address_of(rec),
            roundness,
            segments,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_rectangle_rounded_lines(
        self,
        owned rec: Rectangle,
        roundness: Float32,
        segments: Int32,
        lineThick: Float32,
        owned color: Color,
    ):
        """Draw rectangle with rounded edges outline."""
        self._draw_rectangle_rounded_lines(
            UnsafePointer.address_of(rec),
            roundness,
            segments,
            lineThick,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_triangle(
        self,
        owned v1: Vector2,
        owned v2: Vector2,
        owned v3: Vector2,
        owned color: Color,
    ):
        """Draw a color-filled triangle."""
        self._draw_triangle(
            UnsafePointer.address_of(v1),
            UnsafePointer.address_of(v2),
            UnsafePointer.address_of(v3),
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_triangle_lines(
        self,
        owned v1: Vector2,
        owned v2: Vector2,
        owned v3: Vector2,
        owned color: Color,
    ):
        """Draw triangle outline."""
        self._draw_triangle_lines(
            UnsafePointer.address_of(v1),
            UnsafePointer.address_of(v2),
            UnsafePointer.address_of(v3),
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_triangle_fan(
        self, owned points: Vector2, pointCount: Int32, owned color: Color
    ):
        """Draw a triangle fan defined by points."""
        self._draw_triangle_fan(
            UnsafePointer.address_of(points),
            pointCount,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_triangle_strip(
        self, owned points: Vector2, pointCount: Int32, owned color: Color
    ):
        """Draw a triangle strip defined by points."""
        self._draw_triangle_strip(
            UnsafePointer.address_of(points),
            pointCount,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_poly(
        self,
        owned center: Vector2,
        sides: Int32,
        radius: Float32,
        rotation: Float32,
        owned color: Color,
    ):
        """Draw a regular polygon (Vector version)."""
        self._draw_poly(
            UnsafePointer.address_of(center),
            sides,
            radius,
            rotation,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_poly_lines(
        self,
        owned center: Vector2,
        sides: Int32,
        radius: Float32,
        rotation: Float32,
        owned color: Color,
    ):
        """Draw a polygon outline of n sides."""
        self._draw_poly_lines(
            UnsafePointer.address_of(center),
            sides,
            radius,
            rotation,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_poly_lines_ex(
        self,
        owned center: Vector2,
        sides: Int32,
        radius: Float32,
        rotation: Float32,
        lineThick: Float32,
        owned color: Color,
    ):
        """Draw a polygon outline of n sides with extended parameters."""
        self._draw_poly_lines_ex(
            UnsafePointer.address_of(center),
            sides,
            radius,
            rotation,
            lineThick,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_spline_linear(
        self,
        owned points: Vector2,
        pointCount: Int32,
        thick: Float32,
        owned color: Color,
    ):
        """Draw a cubic-bezier curve with a line."""
        self._draw_spline_linear(
            UnsafePointer.address_of(points),
            pointCount,
            thick,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_spline_basis(
        self,
        owned points: Vector2,
        pointCount: Int32,
        thick: Float32,
        owned color: Color,
    ):
        """Draw a cubic-bezier curve with a line."""
        self._draw_spline_basis(
            UnsafePointer.address_of(points),
            pointCount,
            thick,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_spline_catmull_rom(
        self,
        owned points: Vector2,
        pointCount: Int32,
        thick: Float32,
        owned color: Color,
    ):
        """Draw a cubic-bezier curve with a line."""
        self._draw_spline_catmull_rom(
            UnsafePointer.address_of(points),
            pointCount,
            thick,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_spline_bezier_quadratic(
        self,
        owned points: Vector2,
        pointCount: Int32,
        thick: Float32,
        owned color: Color,
    ):
        """Draw a cubic-bezier curve with a line."""
        self._draw_spline_bezier_quadratic(
            UnsafePointer.address_of(points),
            pointCount,
            thick,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_spline_bezier_cubic(
        self,
        owned points: Vector2,
        pointCount: Int32,
        thick: Float32,
        owned color: Color,
    ):
        """Draw a cubic-bezier curve with a line."""
        self._draw_spline_bezier_cubic(
            UnsafePointer.address_of(points),
            pointCount,
            thick,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_spline_segment_linear(
        self,
        owned p1: Vector2,
        owned p2: Vector2,
        thick: Float32,
        owned color: Color,
    ):
        """Draw a cubic-bezier curve with a line."""
        self._draw_spline_segment_linear(
            UnsafePointer.address_of(p1),
            UnsafePointer.address_of(p2),
            thick,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_spline_segment_basis(
        self,
        owned p1: Vector2,
        owned p2: Vector2,
        owned p3: Vector2,
        owned p4: Vector2,
        thick: Float32,
        owned color: Color,
    ):
        """Draw a cubic-bezier curve with a line."""
        self._draw_spline_segment_basis(
            UnsafePointer.address_of(p1),
            UnsafePointer.address_of(p2),
            UnsafePointer.address_of(p3),
            UnsafePointer.address_of(p4),
            thick,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_spline_segment_catmull_rom(
        self,
        owned p1: Vector2,
        owned p2: Vector2,
        owned p3: Vector2,
        owned p4: Vector2,
        thick: Float32,
        owned color: Color,
    ):
        """Draw a cubic-bezier curve with a line."""
        self._draw_spline_segment_catmull_rom(
            UnsafePointer.address_of(p1),
            UnsafePointer.address_of(p2),
            UnsafePointer.address_of(p3),
            UnsafePointer.address_of(p4),
            thick,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_spline_segment_bezier_quadratic(
        self,
        owned p1: Vector2,
        owned c2: Vector2,
        owned p3: Vector2,
        thick: Float32,
        owned color: Color,
    ):
        """Draw a cubic-bezier curve with a line."""
        self._draw_spline_segment_bezier_quadratic(
            UnsafePointer.address_of(p1),
            UnsafePointer.address_of(c2),
            UnsafePointer.address_of(p3),
            thick,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn draw_spline_segment_bezier_cubic(
        self,
        owned p1: Vector2,
        owned c2: Vector2,
        owned c3: Vector2,
        owned p4: Vector2,
        thick: Float32,
        owned color: Color,
    ):
        """Draw a cubic-bezier curve with a line."""
        self._draw_spline_segment_bezier_cubic(
            UnsafePointer.address_of(p1),
            UnsafePointer.address_of(c2),
            UnsafePointer.address_of(c3),
            UnsafePointer.address_of(p4),
            thick,
            UnsafePointer.address_of(color),
        )

    @always_inline
    fn get_spline_point_linear(
        self, owned startPos: Vector2, owned endPos: Vector2, t: Float32
    ) -> Vector2:
        """Get the cubic-bezier curve point at some t value."""
        return self._get_spline_point_linear(
            UnsafePointer.address_of(startPos),
            UnsafePointer.address_of(endPos),
            t,
        )

    @always_inline
    fn get_spline_point_basis(
        self,
        owned p1: Vector2,
        owned p2: Vector2,
        owned p3: Vector2,
        owned p4: Vector2,
        t: Float32,
    ) -> Vector2:
        """Get the cubic-bezier curve point at some t value."""
        return self._get_spline_point_basis(
            UnsafePointer.address_of(p1),
            UnsafePointer.address_of(p2),
            UnsafePointer.address_of(p3),
            UnsafePointer.address_of(p4),
            t,
        )

    @always_inline
    fn get_spline_point_catmull_rom(
        self,
        owned p1: Vector2,
        owned p2: Vector2,
        owned p3: Vector2,
        owned p4: Vector2,
        t: Float32,
    ) -> Vector2:
        """Get the cubic-bezier curve point at some t value."""
        return self._get_spline_point_catmull_rom(
            UnsafePointer.address_of(p1),
            UnsafePointer.address_of(p2),
            UnsafePointer.address_of(p3),
            UnsafePointer.address_of(p4),
            t,
        )

    @always_inline
    fn get_spline_point_bezier_quad(
        self,
        owned p1: Vector2,
        owned c2: Vector2,
        owned p3: Vector2,
        t: Float32,
    ) -> Vector2:
        """Get the cubic-bezier curve point at some t value."""
        return self._get_spline_point_bezier_quad(
            UnsafePointer.address_of(p1),
            UnsafePointer.address_of(c2),
            UnsafePointer.address_of(p3),
            t,
        )

    @always_inline
    fn get_spline_point_bezier_cubic(
        self,
        owned p1: Vector2,
        owned c2: Vector2,
        owned c3: Vector2,
        owned p4: Vector2,
        t: Float32,
    ) -> Vector2:
        """Get the cubic-bezier curve point at some t value."""
        return self._get_spline_point_bezier_cubic(
            UnsafePointer.address_of(p1),
            UnsafePointer.address_of(c2),
            UnsafePointer.address_of(c3),
            UnsafePointer.address_of(p4),
            t,
        )

    @always_inline
    fn check_collision_recs(
        self, owned rec1: Rectangle, owned rec2: Rectangle
    ) -> Bool:
        """Check collision between two rectangles."""
        return self._check_collision_recs(
            UnsafePointer.address_of(rec1), UnsafePointer.address_of(rec2)
        )

    @always_inline
    fn check_collision_circles(
        self,
        owned center1: Vector2,
        radius1: Float32,
        owned center2: Vector2,
        radius2: Float32,
    ) -> Bool:
        """Check collision between two circles."""
        return self._check_collision_circles(
            UnsafePointer.address_of(center1),
            radius1,
            UnsafePointer.address_of(center2),
            radius2,
        )

    @always_inline
    fn check_collision_circle_rec(
        self, owned center: Vector2, radius: Float32, owned rec: Rectangle
    ) -> Bool:
        """Check collision between circle and rectangle."""
        return self._check_collision_circle_rec(
            UnsafePointer.address_of(center),
            radius,
            UnsafePointer.address_of(rec),
        )

    @always_inline
    fn check_collision_point_rec(
        self, owned point: Vector2, owned rec: Rectangle
    ) -> Bool:
        """Check if point is inside rectangle."""
        return self._check_collision_point_rec(
            UnsafePointer.address_of(point), UnsafePointer.address_of(rec)
        )

    @always_inline
    fn check_collision_point_circle(
        self, owned point: Vector2, owned center: Vector2, radius: Float32
    ) -> Bool:
        """Check if point is inside circle."""
        return self._check_collision_point_circle(
            UnsafePointer.address_of(point),
            UnsafePointer.address_of(center),
            radius,
        )

    @always_inline
    fn check_collision_point_triangle(
        self,
        owned point: Vector2,
        owned p1: Vector2,
        owned p2: Vector2,
        owned p3: Vector2,
    ) -> Bool:
        """Check if point is inside a triangle."""
        return self._check_collision_point_triangle(
            UnsafePointer.address_of(point),
            UnsafePointer.address_of(p1),
            UnsafePointer.address_of(p2),
            UnsafePointer.address_of(p3),
        )

    @always_inline
    fn check_collision_point_poly(
        self, owned point: Vector2, owned points: Vector2, pointCount: Int32
    ) -> Bool:
        """Check if point is inside a polygon."""
        return self._check_collision_point_poly(
            UnsafePointer.address_of(point),
            UnsafePointer.address_of(points),
            pointCount,
        )

    @always_inline
    fn check_collision_lines(
        self,
        owned startPos1: Vector2,
        owned endPos1: Vector2,
        owned startPos2: Vector2,
        owned endPos2: Vector2,
        owned collisionPoint: Vector2,
    ) -> Bool:
        """Check the collision between two lines defined by two points each, returns collision point by reference.
        """
        return self._check_collision_lines(
            UnsafePointer.address_of(startPos1),
            UnsafePointer.address_of(endPos1),
            UnsafePointer.address_of(startPos2),
            UnsafePointer.address_of(endPos2),
            UnsafePointer.address_of(collisionPoint),
        )

    @always_inline
    fn check_collision_point_line(
        self,
        owned point: Vector2,
        owned p1: Vector2,
        owned p2: Vector2,
        threshold: Int32,
    ) -> Bool:
        """Check if point is inside a line."""
        return self._check_collision_point_line(
            UnsafePointer.address_of(point),
            UnsafePointer.address_of(p1),
            UnsafePointer.address_of(p2),
            threshold,
        )

    @always_inline
    fn get_collision_rec(
        self, owned rec1: Rectangle, owned rec2: Rectangle
    ) -> Rectangle:
        """Get the collision rectangle for two rectangles collision."""
        return self._get_collision_rec(
            UnsafePointer.address_of(rec1), UnsafePointer.address_of(rec2)
        )
