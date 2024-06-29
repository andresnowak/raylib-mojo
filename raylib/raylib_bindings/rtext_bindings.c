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