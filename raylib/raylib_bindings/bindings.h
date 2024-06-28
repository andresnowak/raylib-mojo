#include "raylib.h"

// rtext
Font _LoadFontFromImage(Image *image, Color *key, int firstChar);
bool _IsFontReady(Font *font);
void _UnloadFont(Font *font);
bool _ExportFontAsCode(Font *font, const char *fileName);

// rtextures
void _UnloadTexture(Texture2D *texture);