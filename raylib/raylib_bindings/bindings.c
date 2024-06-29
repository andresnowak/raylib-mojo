#include <stddef.h>
#include "bindings.h"

// rtext ----------
Font _LoadFontFromImage(Image *image, Color *key, int firstChar) {
    return LoadFontFromImage(*image, *key, firstChar);
}

bool _IsFontReady(Font *font) {
    return IsFontReady(*font);
}

void _UnloadFont(Font *font) {
    UnloadFont(*font);
}

bool _ExportFontAsCode(Font *font, const char *fileName) {
    return ExportFontAsCode(*font, fileName);
}

// rtextures ----------
Image _LoadImageFromTexture(Texture2D *texture) {
    return LoadImageFromTexture(*texture);
}

bool _IsImageReady(Image *image) {
    return IsImageReady(*image);
}

void _UnloadImage(Image *image) {
    UnloadImage(*image);
}

bool _ExportImage(Image *image, const char *fileName) {
    return ExportImage(*image, fileName);
}

unsigned char *_ExportImageToMemory(Image *image, const char *fileType, int *fileSize) {
    return ExportImageToMemory(*image, fileType, fileSize);
}

bool _ExportImageAsCode(Image *image, const char *fileName) {
    return ExportImageAsCode(*image, fileName);
}

Image _GenImageColor(int width, int height, Color *color) {
    return GenImageColor(width, height, *color);
}

Image _GenImageGradientLinear(int width, int height, int direction, Color *start, Color *end) {
    return GenImageGradientLinear(width, height, direction, *start, *end);
}

Image _GenImageGradientRadial(int width, int height, float density, Color *inner, Color *outer) {
    return GenImageGradientRadial(width, height, density, *inner, *outer);
}

Image _GenImageGradientSquare(int width, int height, float density, Color *inner, Color *outer) {
    return GenImageGradientSquare(width, height, density, *inner, *outer);
}

Image _GenImageChecked(int width, int height, int checksX, int checksY, Color *col1, Color *col2) {
    return GenImageChecked(width, height, checksX, checksY, *col1, *col2);
}

Image _ImageCopy(Image *image) {
    return ImageCopy(*image);
}

Image _ImageFromImage(Image *image, Rectangle *rec) {
    return ImageFromImage(*image, *rec);
}

Image _ImageText(const char *text, int fontSize, Color *color) {
    return ImageText(text, fontSize, *color);
}

Image _ImageTextEx(Font *font, const char *text, float fontSize, float spacing, Color *tint) {
    return ImageTextEx(*font, text, fontSize, spacing, *tint);
}

void _ImageToPOT(Image *image, Color *fill) {
    ImageToPOT(image, *fill);
}

void _ImageCrop(Image *image, Rectangle *crop) {
    ImageCrop(image, *crop);
}

void _ImageAlphaClear(Image *image, Color *color, float threshold) {
    ImageAlphaClear(image, *color, threshold);
}

void _ImageAlphaMask(Image *image, Image *alphaMask) {
    ImageAlphaMask(image, *alphaMask);
}

void _ImageBlurGaussian(Image *image, int blurSize) {
    ImageBlurGaussian(image, blurSize);
}

void _ImageResizeCanvas(Image *image, int newWidth, int newHeight, int offsetX, int offsetY, Color *fill) {
    ImageResizeCanvas(image, newWidth, newHeight, offsetX, offsetY, *fill);
}

void _ImageColorTint(Image *image, Color *color) {
    ImageColorTint(image, *color);
}

void _ImageColorReplace(Image *image, Color *color, Color *replace) {
    ImageColorReplace(image, *color, *replace);
}

Color *_LoadImageColors(Image *image) {
    return LoadImageColors(*image);
}

Color *_LoadImagePalette(Image *image, int maxPaletteSize, int *colorsCount) {
    return LoadImagePalette(*image, maxPaletteSize, colorsCount);
}

Rectangle _GetImageAlphaBorder(Image *image, float threshold) {
    return GetImageAlphaBorder(*image, threshold);
}

Color _GetImageColor(Image *image, int x, int y) {
    return GetImageColor(*image, x, y);
}

void _ImageClearBackground(Image *dst, Color *color) {
    ImageClearBackground(dst, *color);
}

void _ImageDrawPixel(Image *dst, int posX, int posY, Color *color) {
    ImageDrawPixel(dst, posX, posY, *color);
}

void _ImageDrawPixelV(Image *dst, Vector2 position, Color *color) {
    ImageDrawPixelV(dst, position, *color);
}

void _ImageDrawLine(Image *dst, int startPosX, int startPosY, int endPosX, int endPosY, Color *color) {
    ImageDrawLine(dst, startPosX, startPosY, endPosX, endPosY, *color);
}

void _ImageDrawLineV(Image *dst, Vector2 *start, Vector2 *end, Color *color) {
    ImageDrawLineV(dst, *start, *end, *color);
}

void _ImageDrawCircle(Image *dst, int centerX, int centerY, int radius, Color *color) {
    ImageDrawCircle(dst, centerX, centerY, radius, *color);
}

void _ImageDrawCircleV(Image *dst, Vector2 *center, int radius, Color *color) {
    ImageDrawCircleV(dst, *center, radius, *color);
}

void _ImageDrawCircleLines(Image *dst, int centerX, int centerY, int radius, Color *color) {
    ImageDrawCircleLines(dst, centerX, centerY, radius, *color);
}

void _ImageDrawCircleLinesV(Image *dst, Vector2 *center, int radius, Color *color) {
    ImageDrawCircleLinesV(dst, *center, radius, *color);
}

void _ImageDrawRectangle(Image *dst, int posX, int posY, int width, int height, Color *color) {
    ImageDrawRectangle(dst, posX, posY, width, height, *color);
}

void _ImageDrawRectangleV(Image *dst, Vector2 *position, Vector2 *size, Color *color) {
    ImageDrawRectangleV(dst, *position, *size, *color);
}

void _ImageDrawRectangleRec(Image *dst, Rectangle *rec, Color *color) {
    ImageDrawRectangleRec(dst, *rec, *color);
}

void _ImageDrawRectangleLines(Image *dst, Rectangle *rec, int thick, Color *color) {
    ImageDrawRectangleLines(dst, *rec, thick, *color);
}

void _ImageDraw(Image *dst, Image *src, Rectangle *srcRec, Rectangle *dstRec, Color *tint) {
    ImageDraw(dst, *src, *srcRec, *dstRec, *tint);
}

void _ImageDrawText(Image *dst, const char *text, int posX, int posY, int fontSize, Color *color) {
    ImageDrawText(dst, text, posX, posY, fontSize, *color);
}

void _ImageDrawTextEx(Image *dst, Font *font, const char *text, Vector2 *position, float fontSize, float spacing, Color *tint) {
    ImageDrawTextEx(dst, *font, text, *position, fontSize, spacing, *tint);
}

Texture2D _LoadTextureFromImage(Image *image) {
    return LoadTextureFromImage(*image);
}

TextureCubemap _LoadTextureCubemap(Image *image, int layout) {
    return LoadTextureCubemap(*image, layout);
}

bool _IsTextureReady(Texture2D *texture) {
    return IsTextureReady(*texture);
}

void _UnloadTexture(Texture2D *texture) {
    UnloadTexture(*texture);
}

bool _IsRenderTextureReady(RenderTexture2D *target) {
    return IsRenderTextureReady(*target);
}

void _UnloadRenderTexture(RenderTexture2D *target) {
    UnloadRenderTexture(*target);
}

void _UpdateTexture(Texture2D *texture, const void *pixels) {
    UpdateTexture(*texture, pixels);
}

void _UpdateTextureRec(Texture2D *texture, Rectangle *rec, const void *pixels) {
    UpdateTextureRec(*texture, *rec, pixels);
}

void _SetTextureFilter(Texture2D *texture, int filter) {
    SetTextureFilter(*texture, filter);
}

void _SetTextureWrap(Texture2D *texture, int wrap) {
    SetTextureWrap(*texture, wrap);
}

void _DrawTexture(Texture2D *texture, int posX, int posY, Color tint) {
    DrawTexture(*texture, posX, posY, tint);
}

void _DrawTextureV(Texture2D *texture, Vector2 *position, Color *tint) {
    DrawTextureV(*texture, *position, *tint);
}

void _DrawTextureEx(Texture2D *texture, Vector2 *position, float rotation, float scale, Color *tint) {
    DrawTextureEx(*texture, *position, rotation, scale, *tint);
}

void _DrawTextureRec(Texture2D *texture, Rectangle *source, Vector2 *position, Color *tint) {
    DrawTextureRec(*texture, *source, *position, *tint);
}

void _DrawTexturePro(Texture2D *texture, Rectangle *source, Rectangle *dest, Vector2 *origin, float rotation, Color *tint) {
    DrawTexturePro(*texture, *source, *dest, *origin, rotation, *tint);
}

void _DrawTextureNPatch(Texture2D *texture, NPatchInfo *nPatchInfo, Rectangle *dest, Vector2 *origin, float rotation, Color *tint) {
    DrawTextureNPatch(*texture, *nPatchInfo, *dest, *origin, rotation, *tint);
}

Color _Fade(Color *color, float alpha) {
    return Fade(*color, alpha);
}

int _ColorToInt(Color *color) {
    return ColorToInt(*color);
}

Vector4 _ColorNormalize(Color *color) {
    return ColorNormalize(*color);
}

Color _ColorFromNormalized(Vector4 *normalized) {
    return ColorFromNormalized(*normalized);
}

Vector3 _ColorToHSV(Color *color) {
    return ColorToHSV(*color);
}

Color _ColorTint(Color *color, Color *tint) {
    return ColorTint(*color, *tint);
}

Color _ColorBrightness(Color *color, float factor) {
    return ColorBrightness(*color, factor);
}

Color _ColorContrast(Color *color, float contrast) {
    return ColorContrast(*color, contrast);
}

Color _ColorAlpha(Color *color, float alpha) {
    return ColorAlpha(*color, alpha);
}

Color _ColorAlphaBlend(Color *dst, Color *src, Color *tint) {
    return ColorAlphaBlend(*dst, *src, *tint);
}

Color _GetColor(unsigned int hexValue) {
    return GetColor(hexValue);
}

Color _GetPixelColor(void *srcPtr, int format) {
    return GetPixelColor(srcPtr, format);
}

void _SetPixelColor(void *dstPtr, Color *color, int format) {
    SetPixelColor(dstPtr, *color, format);
}