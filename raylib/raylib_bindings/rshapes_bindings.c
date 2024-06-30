#include "rshapes_bindings.h"

void _SetShapesTexture(Texture2D *texture, Rectangle *source)
{
    SetShapesTexture(*texture, *source);
}

void _DrawPixel(int posX, int posY, Color *color)
{
    DrawPixel(posX, posY, *color);
}

void _DrawPixelV(Vector2 *position, Color *color)
{
    DrawPixelV(*position, *color);
}

void _DrawLine(int startPosX, int startPosY, int endPosX, int endPosY, Color *color)
{
    DrawLine(startPosX, startPosY, endPosX, endPosY, *color);
}

void _DrawLineV(Vector2 *startPos, Vector2 *endPos, Color *color)
{
    DrawLineV(*startPos, *endPos, *color);
}

void _DrawLineEx(Vector2 *startPos, Vector2 *endPos, float thick, Color *color)
{
    DrawLineEx(*startPos, *endPos, thick, *color);
}

void _DrawLineStrip(Vector2 *points, int pointCount, Color *color)
{
    DrawLineStrip(points, pointCount, *color);
}

void _DrawLineBezier(Vector2 *startPos, Vector2 *endPos, float thick, Color *color)
{
    DrawLineBezier(*startPos, *endPos, thick, *color);
}

void _DrawCircle(int centerX, int centerY, float radius, Color *color)
{
    DrawCircle(centerX, centerY, radius, *color);
}

void _DrawCircleSector(Vector2 *center, float radius, float startAngle, float endAngle, int segments, Color *color)
{
    DrawCircleSector(*center, radius, startAngle, endAngle, segments, *color);
}

void _DrawCircleSectorLines(Vector2 *center, float radius, float startAngle, float endAngle, int segments, Color *color)
{
    DrawCircleSectorLines(*center, radius, startAngle, endAngle, segments, *color);
}

void _DrawCircleGradient(int centerX, int centerY, float radius, Color *color1, Color *color2)
{
    DrawCircleGradient(centerX, centerY, radius, *color1, *color2);
}

void _DrawCircleV(Vector2 *center, float radius, Color *color)
{
    DrawCircleV(*center, radius, *color);
}

void _DrawCircleLines(int centerX, int centerY, float radius, Color *color)
{
    DrawCircleLines(centerX, centerY, radius, *color);
}

void _DrawCircleLinesV(Vector2 *center, float radius, Color *color)
{
    DrawCircleLinesV(*center, radius, *color);
}

void _DrawEllipse(int centerX, int centerY, float radiusH, float radiusV, Color *color)
{
    DrawEllipse(centerX, centerY, radiusH, radiusV, *color);
}

void _DrawEllipseLines(int centerX, int centerY, float radiusH, float radiusV, Color *color)
{
    DrawEllipseLines(centerX, centerY, radiusH, radiusV, *color);
}

void _DrawRing(Vector2 *center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color *color)
{
    DrawRing(*center, innerRadius, outerRadius, startAngle, endAngle, segments, *color);
}

void _DrawRingLines(Vector2 *center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color *color)
{
    DrawRingLines(*center, innerRadius, outerRadius, startAngle, endAngle, segments, *color);
}

void _DrawRectangle(int posX, int posY, int width, int height, Color *color)
{
    DrawRectangle(posX, posY, width, height, *color);
}

void _DrawRectangleV(Vector2 *position, Vector2 *size, Color *color)
{
    DrawRectangleV(*position, *size, *color);
}

void _DrawRectangleRec(Rectangle *rec, Color *color)
{
    DrawRectangleRec(*rec, *color);
}

void _DrawRectanglePro(Rectangle *rec, Vector2 *origin, float rotation, Color *color)
{
    DrawRectanglePro(*rec, *origin, rotation, *color);
}

void _DrawRectangleGradientV(int posX, int posY, int width, int height, Color *color1, Color *color2)
{
    DrawRectangleGradientV(posX, posY, width, height, *color1, *color2);
}

void _DrawRectangleGradientH(int posX, int posY, int width, int height, Color *color1, Color *color2)
{
    DrawRectangleGradientH(posX, posY, width, height, *color1, *color2);
}

void _DrawRectangleGradientEx(Rectangle *rec, Color *col1, Color *col2, Color *col3, Color *col4)
{
    DrawRectangleGradientEx(*rec, *col1, *col2, *col3, *col4);
}

void _DrawRectangleLines(int posX, int posY, int width, int height, Color *color)
{
    DrawRectangleLines(posX, posY, width, height, *color);
}

void _DrawRectangleLinesEx(Rectangle *rec, float lineThick, Color *color)
{
    DrawRectangleLinesEx(*rec, lineThick, *color);
}

void _DrawRectangleRounded(Rectangle *rec, float roundness, int segments, Color *color)
{
    DrawRectangleRounded(*rec, roundness, segments, *color);
}

void _DrawRectangleRoundedLines(Rectangle *rec, float roundness, int segments, float lineThick, Color *color)
{
    DrawRectangleRoundedLines(*rec, roundness, segments, lineThick, *color);
}

void _DrawTriangle(Vector2 *v1, Vector2 *v2, Vector2 *v3, Color *color)
{
    DrawTriangle(*v1, *v2, *v3, *color);
}

void _DrawTriangleLines(Vector2 *v1, Vector2 *v2, Vector2 *v3, Color *color)
{
    DrawTriangleLines(*v1, *v2, *v3, *color);
}

void _DrawTriangleFan(Vector2 *points, int pointCount, Color *color)
{
    DrawTriangleFan(points, pointCount, *color);
}

void _DrawTriangleStrip(Vector2 *points, int pointCount, Color *color)
{
    DrawTriangleStrip(points, pointCount, *color);
}

void _DrawPoly(Vector2 *center, int sides, float radius, float rotation, Color *color)
{
    DrawPoly(*center, sides, radius, rotation, *color);
}

void _DrawPolyLines(Vector2 *center, int sides, float radius, float rotation, Color *color)
{
    DrawPolyLines(*center, sides, radius, rotation, *color);
}

void _DrawPolyLinesEx(Vector2 *center, int sides, float radius, float rotation, float lineThick, Color *color)
{
    DrawPolyLinesEx(*center, sides, radius, rotation, lineThick, *color);
}

void _DrawSplineLinear(Vector2 *points, int pointCount, float thick, Color *color)
{
    DrawSplineLinear(points, pointCount, thick, *color);
}

void _DrawSplineBasis(Vector2 *points, int pointCount, float thick, Color *color)
{
    DrawSplineBasis(points, pointCount, thick, *color);
}

void _DrawSplineCatmullRom(Vector2 *points, int pointCount, float thick, Color *color)
{
    DrawSplineCatmullRom(points, pointCount, thick, *color);
}

void _DrawSplineBezierQuadratic(Vector2 *points, int pointCount, float thick, Color *color)
{
    DrawSplineBezierQuadratic(points, pointCount, thick, *color);
}

void _DrawSplineBezierCubic(Vector2 *points, int pointCount, float thick, Color *color)
{
    DrawSplineBezierCubic(points, pointCount, thick, *color);
}

void _DrawSplineSegmentLinear(Vector2 *p1, Vector2 *p2, float thick, Color *color)
{
    DrawSplineSegmentLinear(*p1, *p2, thick, *color);
}

void _DrawSplineSegmentBasis(Vector2 *p1, Vector2 *p2, Vector2 *p3, Vector2 *p4, float thick, Color *color)
{
    DrawSplineSegmentBasis(*p1, *p2, *p3, *p4, thick, *color);
}

void _DrawSplineSegmentCatmullRom(Vector2 *p1, Vector2 *p2, Vector2 *p3, Vector2 *p4, float thick, Color *color)
{
    DrawSplineSegmentCatmullRom(*p1, *p2, *p3, *p4, thick, *color);
}

void _DrawSplineSegmentBezierQuadratic(Vector2 *p1, Vector2 *c2, Vector2 *p3, float thick, Color *color)
{
    DrawSplineSegmentBezierQuadratic(*p1, *c2, *p3, thick, *color);
}

void _DrawSplineSegmentBezierCubic(Vector2 *p1, Vector2 *c2, Vector2 *c3, Vector2 *p4, float thick, Color *color)
{
    DrawSplineSegmentBezierCubic(*p1, *c2, *c3, *p4, thick, *color);
}

Vector2 _GetSplinePointLinear(Vector2 *startPos, Vector2 *endPos, float t)
{
    return GetSplinePointLinear(*startPos, *endPos, t);
}

Vector2 _GetSplinePointBasis(Vector2 *p1, Vector2 *p2, Vector2 *p3, Vector2 *p4, float t)
{
    return GetSplinePointBasis(*p1, *p2, *p3, *p4, t);
}

Vector2 _GetSplinePointCatmullRom(Vector2 *p1, Vector2 *p2, Vector2 *p3, Vector2 *p4, float t)
{
    return GetSplinePointCatmullRom(*p1, *p2, *p3, *p4, t);
}

Vector2 _GetSplinePointBezierQuad(Vector2 *p1, Vector2 *c2, Vector2 *p3, float t)
{
    return GetSplinePointBezierQuad(*p1, *c2, *p3, t);
}

Vector2 _GetSplinePointBezierCubic(Vector2 *p1, Vector2 *c2, Vector2 *c3, Vector2 *p4, float t)
{
    return GetSplinePointBezierCubic(*p1, *c2, *c3, *p4, t);
}

bool _CheckCollisionRecs(Rectangle *rec1, Rectangle *rec2)
{
    return CheckCollisionRecs(*rec1, *rec2);
}

bool _CheckCollisionCircles(Vector2 *center1, float radius1, Vector2 *center2, float radius2)
{
    return CheckCollisionCircles(*center1, radius1, *center2, radius2);
}

bool _CheckCollisionCircleRec(Vector2 *center, float radius, Rectangle *rec)
{
    return CheckCollisionCircleRec(*center, radius, *rec);
}

bool _CheckCollisionPointRec(Vector2 *point, Rectangle *rec)
{
    return CheckCollisionPointRec(*point, *rec);
}

bool _CheckCollisionPointCircle(Vector2 *point, Vector2 *center, float radius)
{
    return CheckCollisionPointCircle(*point, *center, radius);
}

bool _CheckCollisionPointTriangle(Vector2 *point, Vector2 *p1, Vector2 *p2, Vector2 *p3)
{
    return CheckCollisionPointTriangle(*point, *p1, *p2, *p3);
}

bool _CheckCollisionPointPoly(Vector2 *point, Vector2 *points, int pointCount)
{
    return CheckCollisionPointPoly(*point, points, pointCount);
}

bool _CheckCollisionLines(Vector2 *startPos1, Vector2 *endPos1, Vector2 *startPos2, Vector2 *endPos2, Vector2 *collisionPoint)
{
    return CheckCollisionLines(*startPos1, *endPos1, *startPos2, *endPos2, collisionPoint);
}

bool _CheckCollisionPointLine(Vector2 *point, Vector2 *p1, Vector2 *p2, int threshold)
{
    return CheckCollisionPointLine(*point, *p1, *p2, threshold);
}

Rectangle _GetCollisionRec(Rectangle *rec1, Rectangle *rec2)
{
    return GetCollisionRec(*rec1, *rec2);
}