# GTK
find_library(
    GTK3_LIBRARY
        NAMES gtk-3
        HINTS "C:\\gtk-build\\gtk\\x64\\release\\lib"
)
find_path(
    GTK3_INCLUDE_DIR
        NAMES gtk/gtk.h
        HINTS "C:\\gtk-build\\gtk\\x64\\release\\include"
        PATH_SUFFIXES gtk-3.0
)

# GLIB dependency
find_library(
    GLIB_LIBRARY
        NAMES glib-2.0
        HINTS "C:\\gtk-build\\gtk\\x64\\release\\lib"
)
find_path(
    GLIB_INCLUDE_DIR
        NAMES glib.h
        HINTS "C:\\gtk-build\\gtk\\x64\\release\\include"
        PATH_SUFFIXES glib-2.0
)
find_path(
    GLIB_INCLUDE_DIR2
        NAMES glibconfig.h
        HINTS "C:\\gtk-build\\gtk\\x64\\release\\lib"
        PATH_SUFFIXES "glib-2.0\\include"
)

# PANGO dependency
find_library(
    PANGO_LIBRARY
        NAMES pango-1.0
        HINTS "C:\\gtk-build\\gtk\\x64\\release\\lib"
)
find_path(
    PANGO_INCLUDE_DIR
        NAMES pango/pango.h
        PATHS "C:\\gtk-build\\gtk\\x64\\release\\include"
        PATH_SUFFIXES pango-1.0
)

# HARFBUZZ dependency
find_library(
    HARFBUZZ_LIBRARY
        NAMES harfbuzz
        HINTS "C:\\gtk-build\\gtk\\x64\\release\\lib"
)
find_path(
    HARFBUZZ_INCLUDE_DIR
        NAMES hb.h
        PATHS "C:\\gtk-build\\gtk\\x64\\release\\include"
        PATH_SUFFIXES harfbuzz
)

# CAIRO include dependencies
find_library(
    CAIRO_LIBRARY
        NAMES cairo
        HINTS "C:\\gtk-build\\gtk\\x64\\release\\lib"
)
find_path(
    CAIRO_INCLUDE_DIR
        NAMES cairo.h
        PATHS "C:\\gtk-build\\gtk\\x64\\release\\include"
        PATH_SUFFIXES cairo
)

# GDKPIXBUF include dependencies
find_library(
    GDKPIXBUF_LIBRARY
        NAMES gdk_pixbuf-2.0
        HINTS "C:\\gtk-build\\gtk\\x64\\release\\lib"
)
find_path(
    GDKPIXBUF_INCLUDE_DIR
        NAMES gdk-pixbuf/gdk-pixbuf.h
        PATHS "C:\\gtk-build\\gtk\\x64\\release\\include"
        PATH_SUFFIXES gdk-pixbuf-2.0
)

# ATK include dependencies
find_library(
    ATK_LIBRARY
        NAMES atk-1.0
        HINTS "C:\\gtk-build\\gtk\\x64\\release\\lib"
)
find_path(
    ATK_INCLUDE_DIR
        NAMES atk/atk.h
        PATHS "C:\\gtk-build\\gtk\\x64\\release\\include"
        PATH_SUFFIXES atk-1.0
)

# GIO dependency
find_library(
    GIO_LIBRARY
        NAMES gio-2.0
        HINTS "C:\\gtk-build\\gtk\\x64\\release\\lib"
)

# GOBJECT dependency
find_library(
    GOBJECT_LIBRARY
        NAMES gobject-2.0
        HINTS "C:\\gtk-build\\gtk\\x64\\release\\lib"
)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(
    GTK3 DEFAULT_MSG
        GTK3_LIBRARY
        GIO_LIBRARY
        GOBJECT_LIBRARY
        GTK3_INCLUDE_DIR
        GLIB_INCLUDE_DIR
        GLIB_INCLUDE_DIR2
        PANGO_INCLUDE_DIR
        HARFBUZZ_INCLUDE_DIR
        CAIRO_INCLUDE_DIR
        GDKPIXBUF_INCLUDE_DIR
        ATK_INCLUDE_DIR
)

if(GTK3_FOUND)
    # Config LIB and includes
    set(
        GTK3_LIBRARIES
            ${GTK3_LIBRARY}
            ${GIO_LIBRARY}
            ${GOBJECT_LIBRARY}
    )
    set(
        GTK3_INCLUDE_DIRS
            ${GTK3_INCLUDE_DIR}
            ${GLIB_INCLUDE_DIR}
            ${GLIB_INCLUDE_DIR2}
            ${PANGO_INCLUDE_DIR}
            ${HARFBUZZ_INCLUDE_DIR}
            ${CAIRO_INCLUDE_DIR}
            ${GDKPIXBUF_INCLUDE_DIR}
            ${ATK_INCLUDE_DIR}
    )
endif()