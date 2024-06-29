#include "raylib.h"

// rtext ----------

// Font loading/unloading functions
Font _LoadFontFromImage(Image *image, Color *key, int firstChar);
bool _IsFontReady(Font *font);
void _UnloadFont(Font *font);
bool _ExportFontAsCode(Font *font, const char *fileName);

// Text drawing functions
void _DrawText(const char *text, int posX, int posY, int fontSize, Color *color);
void _DrawTextEx(Font *font, const char *text, Vector2 *position, float fontSize, float spacing, Color *tint);
void _DrawTextPro(Font *font, const char *text, Vector2 *position, Vector2 *origin, float rotation, float fontSize, float spacing, Color *tint);
void _DrawTextCodepoint(Font *font, int codepoint, Vector2 *position, float fontSize, Color *tint);
void _DrawTextCodepoints(Font *font, const int *codepoints, int codepointCount, Vector2 *position, float fontSize, float spacing, Color *tint);

// Text font info functions
Vector2 _MeasureTextEx(Font *font, const char *text, float fontSize, float spacing);
int _GetGlyphIndex(Font *font, int codepoint);
GlyphInfo _GetGlyphInfo(Font *font, int codepoint);
Rectangle _GetGlyphAtlasRec(Font *font, int codepoint);


// Text strings management functions (no utf8 strings, only byte chars)
// NOTE: Some strings allocate memory internally for returned strings, just be careful with that
const char *_TextFormat(const char *text, ...);