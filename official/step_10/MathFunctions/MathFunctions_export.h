
#ifndef DECLSPEC_H
#define DECLSPEC_H

#ifdef MATHFUNCTIONS_STATIC_DEFINE
#  define DECLSPEC
#  define MATHFUNCTIONS_NO_EXPORT
#else
#  ifndef DECLSPEC
#    ifdef MathFunctions_EXPORTS
        /* We are building this library */
#      define DECLSPEC __declspec(dllexport)
#    else
        /* We are using this library */
#      define DECLSPEC __declspec(dllimport)
#    endif
#  endif

#  ifndef MATHFUNCTIONS_NO_EXPORT
#    define MATHFUNCTIONS_NO_EXPORT 
#  endif
#endif

#ifndef MATHFUNCTIONS_DEPRECATED
#  define MATHFUNCTIONS_DEPRECATED __declspec(deprecated)
#endif

#ifndef MATHFUNCTIONS_DEPRECATED_EXPORT
#  define MATHFUNCTIONS_DEPRECATED_EXPORT DECLSPEC MATHFUNCTIONS_DEPRECATED
#endif

#ifndef MATHFUNCTIONS_DEPRECATED_NO_EXPORT
#  define MATHFUNCTIONS_DEPRECATED_NO_EXPORT MATHFUNCTIONS_NO_EXPORT MATHFUNCTIONS_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef MATHFUNCTIONS_NO_DEPRECATED
#    define MATHFUNCTIONS_NO_DEPRECATED
#  endif
#endif

#endif /* DECLSPEC_H */
