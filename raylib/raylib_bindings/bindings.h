#include "raylib.h"

// rtext ----------
Font _LoadFontFromImage(Image *image, Color *key, int firstChar);
bool _IsFontReady(Font *font);
void _UnloadFont(Font *font);
bool _ExportFontAsCode(Font *font, const char *fileName);


// rtextures ----------

// Image loading functions
Image _LoadImageFromTexture(Texture2D *texture);
bool _IsImageReady(Image *image);
void _UnloadImage(Image *image);
bool _ExportImage(Image *image, const char *fileName);
unsigned char *_ExportImageToMemory(Image *image, const char *fileType, int *fileSize);
bool _ExportImageAsCode(Image *image, const char *fileName);


// Image generation functions
Image _GenImageColor(int width, int height, Color *color);
Image _GenImageGradientLinear(int width, int height, int direction, Color *start, Color *end);
Image _GenImageGradientRadial(int width, int height, float density, Color *inner, Color *outer);
Image _GenImageGradientSquare(int width, int height, float density, Color *inner, Color *outer);
Image _GenImageChecked(int width, int height, int checksX, int checksY, Color *col1, Color *col2);


// Image manipulation functions
Image _ImageCopy(Image *image);
Image _ImageFromImage(Image *image, Rectangle *rec);
Image _ImageText(const char *text, int fontSize, Color *color);
Image _ImageTextEx(Font *font, const char *text, float fontSize, float spacing, Color *tint);
void _ImageToPOT(Image *image, Color *fill);
void _ImageCrop(Image *image, Rectangle *crop);
void _ImageAlphaClear(Image *image, Color *color, float threshold);
void _ImageAlphaMask(Image *image, Image *alphaMask);
void _ImageBlurGaussian(Image *image, int blurSize);
void _ImageResizeCanvas(Image *image, int newWidth, int newHeight, int offsetX, int offsetY, Color *fill);
void _ImageColorTint(Image *image, Color *color);
void _ImageColorReplace(Image *image, Color *color, Color *replace);
Color *_LoadImageColors(Image *image);
Color *_LoadImagePalette(Image *image, int maxPaletteSize, int *colorsCount);
Rectangle _GetImageAlphaBorder(Image *image, float threshold);                              
Color _GetImageColor(Image *image, int x, int y);     


// Image drawing functions
void _ImageClearBackground(Image *dst, Color *color);
void _ImageDrawPixel(Image *dst, int posX, int posY, Color *color);
void _ImageDrawPixelV(Image *dst, Vector2 position, Color *color);
void _ImageDrawLine(Image *dst, int startPosX, int startPosY, int endPosX, int endPosY, Color *color);
void _ImageDrawLineV(Image *dst, Vector2 *start, Vector2 *end, Color *color);
void _ImageDrawCircle(Image *dst, int centerX, int centerY, int radius, Color *color);
void _ImageDrawCircleV(Image *dst, Vector2 *center, int radius, Color *color);
void _ImageDrawCircleLines(Image *dst, int centerX, int centerY, int radius, Color *color);
void _ImageDrawCircleLinesV(Image *dst, Vector2 *center, int radius, Color *color);
void _ImageDrawRectangle(Image *dst, int posX, int posY, int width, int height, Color *color);
void _ImageDrawRectangleV(Image *dst, Vector2 *position, Vector2 *size, Color *color);
void _ImageDrawRectangleRec(Image *dst, Rectangle *rec, Color *color);
void _ImageDrawRectangleLines(Image *dst, Rectangle *rec, int thick, Color *color);
void _ImageDraw(Image *dst, Image *src, Rectangle *srcRec, Rectangle *dstRec, Color *tint);
void _ImageDrawText(Image *dst, const char *text, int posX, int posY, int fontSize, Color *color);
void _ImageDrawTextEx(Image *dst, Font *font, const char *text, Vector2 *position, float fontSize, float spacing, Color *tint);

// Texture functions
Texture2D _LoadTextureFromImage(Image *image);
TextureCubemap _LoadTextureCubemap(Image *image, int layout); 
bool _IsTextureReady(Texture2D *texture);
void _UnloadTexture(Texture2D *texture);
bool _IsRenderTextureReady(RenderTexture2D *target);
void _UnloadRenderTexture(RenderTexture2D *target);
void _UpdateTexture(Texture2D *texture, const void *pixels);
void _UpdateTextureRec(Texture2D *texture, Rectangle *rec, const void *pixels);

// Texture configuration functions
void _SetTextureFilter(Texture2D *texture, int filter);
void _SetTextureWrap(Texture2D *texture, int wrap);

// Texture drawing functions
void _DrawTexture(Texture2D *texture, int posX, int posY, Color *tint);
void _DrawTextureV(Texture2D *texture, Vector2 *position, Color *tint);
void _DrawTextureEx(Texture2D *texture, Vector2 *position, float rotation, float scale, Color *tint);
void _DrawTextureRec(Texture2D *texture, Rectangle *source, Vector2 *position, Color *tint);
void _DrawTexturePro(Texture2D *texture, Rectangle *source, Rectangle *dest, Vector2 *origin, float rotation, Color *tint);
void _DrawTextureNPatch(Texture2D *texture, NPatchInfo *nPatchInfo, Rectangle *dest, Vector2 *origin, float rotation, Color *tint);

// Color/pixel related functions
Color _Fade(Color *color, float alpha);
int _ColorToInt(Color *color);
Vector4 _ColorNormalize(Color *color);
Color _ColorFromNormalized(Vector4 *normalized);
Vector3 _ColorToHSV(Color *color);
Color _ColorTint(Color *color, Color *tint);
Color _ColorBrightness(Color *color, float factor);
Color _ColorContrast(Color *color, float contrast);
Color _ColorAlpha(Color *color, float alpha);
Color _ColorAlphaBlend(Color *dst, Color *src, Color *tint);
Color _GetColor(unsigned int hexValue);
Color _GetPixelColor(void *srcPtr, int format);
void _SetPixelColor(void *dstPtr, Color *color, int format);