#  
#
#SDL2_rotozoom.c: rotozoomer, zoomer and shrinker for 32bit or 8bit surfaces
#
#Copyright (C) 2001-2012  Andreas Schiffler
#
#This software is provided 'as-is', without any express or implied
#warranty. In no event will the authors be held liable for any damages
#arising from the use of this software.
#
#Permission is granted to anyone to use this software for any purpose,
#including commercial applications, and to alter it and redistribute it
#freely, subject to the following restrictions:
#
#1. The origin of this software must not be misrepresented; you must not
#claim that you wrote the original software. If you use this software
#in a product, an acknowledgment in the product documentation would be
#appreciated but is not required.
#
#2. Altered source versions must be plainly marked as such, and must not be
#misrepresented as being the original software.
#
#3. This notice may not be removed or altered from any source
#distribution.
#
#Andreas Schiffler -- aschiffler at ferzkopp dot net
#
#

import
  sdl

# Defines

const
  SMOOTHING_OFF* = 0  ##  Disable anti-aliasing (no smoothing).

const
  SMOOTHING_ON* = 1   ##  Enable anti-aliasing (smoothing).

# Function Prototypes

# Rotozoom functions

proc rotozoomSurface*(
    src: ptr Surface; angle: cdouble;
    zoom: cdouble; smooth: cint): ptr Surface {.
      cdecl, importc: "rotozoomSurface", dynlib: SDL2_GFX_LIB.}

proc rotozoomSurfaceXY*(
    src: ptr Surface; angle: cdouble;
    zoomx: cdouble; zoomy: cdouble; smooth: cint): ptr Surface {.
      cdecl, importc: "rotozoomSurfaceXY", dynlib: SDL2_GFX_LIB.}

proc rotozoomSurfaceSize*(
    width: cint; height: cint; angle: cdouble;
    zoom: cdouble; dstwidth: ptr cint; dstheight: ptr cint) {.
      cdecl, importc: "rotozoomSurfaceSize", dynlib: SDL2_GFX_LIB.}

proc rotozoomSurfaceSizeXY*(
    width: cint; height: cint; angle: cdouble;
    zoomx: cdouble; zoomy: cdouble; dstwidth: ptr cint; dstheight: ptr cint) {.
      cdecl, importc: "rotozoomSurfaceSizeXY", dynlib: SDL2_GFX_LIB.}

# Zooming functions

proc zoomSurface*(
    src: ptr Surface;
    zoomx: cdouble; zoomy: cdouble; smooth: cint): ptr Surface {.
      cdecl, importc: "zoomSurface", dynlib: SDL2_GFX_LIB.}

proc zoomSurfaceSize*(
    width: cint; height: cint;
    zoomx: cdouble; zoomy: cdouble; dstwidth: ptr cint; dstheight: ptr cint) {.
      cdecl, importc: "zoomSurfaceSize", dynlib: SDL2_GFX_LIB.}

# Shrinking functions

proc shrinkSurface*(
    src: ptr Surface; factorx: cint; factory: cint): ptr Surface {.
      cdecl, importc: "shrinkSurface", dynlib: SDL2_GFX_LIB.}

# Specialized rotation functions

proc rotateSurface90Degrees*(
    src: ptr Surface; numClockwiseTurns: cint): ptr Surface {.
      cdecl, importc: "rotateSurface90Degrees", dynlib: SDL2_GFX_LIB.}
