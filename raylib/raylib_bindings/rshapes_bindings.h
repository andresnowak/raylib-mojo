#include "raylib.h"


// rshapes ------

// NOTE: It can be useful when using basic shapes and one single font,
// defining a font char white rectangle would allow drawing everything in a single draw call
void _SetShapesTexture(Texture2D *texture, Rectangle *source);

// Basic shapes drawing functions
void _DrawPixel(int posX, int posY, Color *color);
void _DrawPixelV(Vector2 *position, Color *color);
void _DrawLine(int startPosX, int startPosY, int endPosX, int endPosY, Color *color);
void _DrawLineV(Vector2 *startPos, Vector2 *endPos, Color *color);
void _DrawLineEx(Vector2 *startPos, Vector2 *endPos, float thick, Color *color);
void _DrawLineStrip(Vector2 *points, int pointCount, Color *color);
void _DrawLineBezier(Vector2 *startPos, Vector2 *endPos, float thick, Color *color);
void _DrawCircle(int centerX, int centerY, float radius, Color *color);
void _DrawCircleSector(Vector2 *center, float radius, float startAngle, float endAngle, int segments, Color *color);
void _DrawCircleSectorLines(Vector2 *center, float radius, float startAngle, float endAngle, int segments, Color *color);
void _DrawCircleGradient(int centerX, int centerY, float radius, Color *color1, Color *color2);
void _DrawCircleV(Vector2 *center, float radius, Color *color);
void _DrawCircleLines(int centerX, int centerY, float radius, Color *color);
void _DrawCircleLinesV(Vector2 *center, float radius, Color *color);
void _DrawEllipse(int centerX, int centerY, float radiusH, float radiusV, Color *color);
void _DrawEllipseLines(int centerX, int centerY, float radiusH, float radiusV, Color *color);
void _DrawRing(Vector2 *center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color *color);
void _DrawRingLines(Vector2 *center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color *color);
void _DrawRectangle(int posX, int posY, int width, int height, Color *color);
void _DrawRectangleV(Vector2 *position, Vector2 *size, Color *color);
void _DrawRectangleRec(Rectangle *rec, Color *color);
void _DrawRectanglePro(Rectangle *rec, Vector2 *origin, float rotation, Color *color);
void _DrawRectangleGradientV(int posX, int posY, int width, int height, Color *color1, Color *color2);
void _DrawRectangleGradientH(int posX, int posY, int width, int height, Color *color1, Color *color2);
void _DrawRectangleGradientEx(Rectangle *rec, Color *col1, Color *col2, Color *col3, Color *col4);
void _DrawRectangleLines(int posX, int posY, int width, int height, Color *color);
void _DrawRectangleLinesEx(Rectangle *rec, float lineThick, Color *color);
void _DrawRectangleRounded(Rectangle *rec, float roundness, int segments, Color *color);
void _DrawRectangleRoundedLines(Rectangle *rec, float roundness, int segments, float lineThick, Color *color);
void _DrawTriangle(Vector2 *v1, Vector2 *v2, Vector2 *v3, Color *color);
void _DrawTriangleLines(Vector2 *v1, Vector2 *v2, Vector2 *v3, Color *color);
void _DrawTriangleFan(Vector2 *points, int pointCount, Color *color);
void _DrawTriangleStrip(Vector2 *points, int pointCount, Color *color);
void _DrawPoly(Vector2 *center, int sides, float radius, float rotation, Color *color);
void _DrawPolyLines(Vector2 *center, int sides, float radius, float rotation, Color *color);
void _DrawPolyLinesEx(Vector2 *center, int sides, float radius, float rotation, float lineThick, Color *color);

// Splines drawing functions
void _DrawSplineLinear(Vector2 *points, int pointCount, float thick, Color *color);
void _DrawSplineBasis(Vector2 *points, int pointCount, float thick, Color *color);
void _DrawSplineCatmullRom(Vector2 *points, int pointCount, float thick, Color *color);
void _DrawSplineBezierQuadratic(Vector2 *points, int pointCount, float thick, Color *color);
void _DrawSplineBezierCubic(Vector2 *points, int pointCount, float thick, Color *color);
void _DrawSplineSegmentLinear(Vector2 *p1, Vector2 *p2, float thick, Color *color);
void _DrawSplineSegmentBasis(Vector2 *p1, Vector2 *p2, Vector2 *p3, Vector2 *p4, float thick, Color *color);
void _DrawSplineSegmentCatmullRom(Vector2 *p1, Vector2 *p2, Vector2 *p3, Vector2 *p4, float thick, Color *color);
void _DrawSplineSegmentBezierQuadratic(Vector2 *p1, Vector2 *c2, Vector2 *p3, float thick, Color *color);
void _DrawSplineSegmentBezierCubic(Vector2 *p1, Vector2 *c2, Vector2 *c3, Vector2 *p4, float thick, Color *color);

// Spline segment point evaluation functions, for a given t [0.0f .. 1.0f]
Vector2 _GetSplinePointLinear(Vector2 *startPos, Vector2 *endPos, float t);
Vector2 _GetSplinePointBasis(Vector2 *p1, Vector2 *p2, Vector2 *p3, Vector2 *p4, float t);
Vector2 _GetSplinePointCatmullRom(Vector2 *p1, Vector2 *p2, Vector2 *p3, Vector2 *p4, float t);
Vector2 _GetSplinePointBezierQuad(Vector2 *p1, Vector2 *c2, Vector2 *p3, float t);
Vector2 _GetSplinePointBezierCubic(Vector2 *p1, Vector2 *c2, Vector2 *c3, Vector2 *p4, float t);

// Basic shapes collision detection functions
bool _CheckCollisionRecs(Rectangle *rec1, Rectangle *rec2);
bool _CheckCollisionCircles(Vector2 *center1, float radius1, Vector2 *center2, float radius2);
bool _CheckCollisionCircleRec(Vector2 *center, float radius, Rectangle *rec);
bool _CheckCollisionPointRec(Vector2 *point, Rectangle *rec);
bool _CheckCollisionPointCircle(Vector2 *point, Vector2 *center, float radius);
bool _CheckCollisionPointTriangle(Vector2 *point, Vector2 *p1, Vector2 *p2, Vector2 *p3);
bool _CheckCollisionPointPoly(Vector2 *point, Vector2 *points, int pointCount);
bool _CheckCollisionLines(Vector2 *startPos1, Vector2 *endPos1, Vector2 *startPos2, Vector2 *endPos2, Vector2 *collisionPoint);
bool _CheckCollisionPointLine(Vector2 *point, Vector2 *p1, Vector2 *p2, int threshold);
Rectangle _GetCollisionRec(Rectangle *rec1, Rectangle *rec2);