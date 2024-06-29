#include <stddef.h>
#include "rtext_bindings.h"

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

void _DrawText(const char *text, int posX, int posY, int fontSize, Color *color) {
    DrawText(text, posX, posY, fontSize, *color);
}

void _DrawTextEx(Font *font, const char *text, Vector2 *position, float fontSize, float spacing, Color *tint) {
    DrawTextEx(*font, text, *position, fontSize, spacing, *tint);
}

void _DrawTextPro(Font *font, const char *text, Vector2 *position, Vector2 *origin, float rotation, float fontSize, float spacing, Color *tint) {
    DrawTextPro(*font, text, *position, *origin, rotation, fontSize, spacing, *tint);
}

void _DrawTextCodepoint(Font *font, int codepoint, Vector2 *position, float fontSize, Color *tint) {
    DrawTextCodepoint(*font, codepoint, *position, fontSize, *tint);
}

void _DrawTextCodepoints(Font *font, const int *codepoints, int codepointCount, Vector2 *position, float fontSize, float spacing, Color *tint) {
    DrawTextCodepoints(*font, codepoints, codepointCount, *position, fontSize, spacing, *tint);
}

Vector2 _MeasureTextEx(Font *font, const char *text, float fontSize, float spacing) {
    return MeasureTextEx(*font, text, fontSize, spacing);
}

int _GetGlyphIndex(Font *font, int codepoint) {
    return GetGlyphIndex(*font, codepoint);
}

GlyphInfo _GetGlyphInfo(Font *font, int codepoint) {
    return GetGlyphInfo(*font, codepoint);
}

Rectangle _GetGlyphAtlasRec(Font *font, int codepoint) {
    return GetGlyphAtlasRec(*font, codepoint);
}

const char *_TextFormat(const char *text, ...) {
    va_list args;
    va_start(args, text);
    TextFormat(text, args);
    va_end(args);
}