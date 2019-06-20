project "skia"

  local prj = project()
  local prjDir = prj.basedir

  -- -------------------------------------------------------------
  -- project
  -- -------------------------------------------------------------

  -- common project settings

  dofile (_BUILD_DIR .. "/3rdparty_static_project.lua")

  -- project specific settings

  uuid "0A843431-DAE5-47CB-8301-5A731AE23379"

  -- Add only files common to all platforms here

  files {
    "src/codec/SkBmpBaseCodec.cpp",
    "src/codec/SkBmpCodec.cpp",
    "src/codec/SkBmpMaskCodec.cpp",
    "src/codec/SkBmpRLECodec.cpp",
    "src/codec/SkBmpStandardCodec.cpp",
    "src/codec/SkCodec.cpp",
    "src/codec/SkCodecImageGenerator.cpp",
    "src/codec/SkColorTable.cpp",
    "src/codec/SkEncodedInfo.cpp",
    "src/codec/SkGifCodec.cpp",
    "src/codec/SkIcoCodec.cpp",
    "src/codec/SkJpegCodec.cpp",
    "src/codec/SkJpegDecoderMgr.cpp",
    "src/codec/SkJpegUtility.cpp",
    "src/codec/SkMasks.cpp",
    "src/codec/SkMaskSwizzler.cpp",
    "src/codec/SkPngCodec.cpp",
    "src/codec/SkSampler.cpp",
    "src/codec/SkStreamBuffer.cpp",
    "src/codec/SkSwizzler.cpp",
    "src/codec/SkWbmpCodec.cpp",
    "src/core/SkAAClip.cpp",
    "src/core/SkAlphaRuns.cpp",
    "src/core/SkAnalyticEdge.cpp",
    "src/core/SkAnnotation.cpp",
    "src/core/SkArenaAlloc.cpp",
    "src/core/SkAutoPixmapStorage.cpp",
    "src/core/SkBigPicture.cpp",
    "src/core/SkBitmap.cpp",
    "src/core/SkBitmapCache.cpp",
    "src/core/SkBitmapController.cpp",
    "src/core/SkBitmapDevice.cpp",
    "src/core/SkBitmapProcState_matrixProcs.cpp",
    "src/core/SkBitmapProcState.cpp",
    "src/core/SkBitmapProvider.cpp",
    "src/core/SkBlendMode.cpp",
    "src/core/SkBlitRow_D32.cpp",
    "src/core/SkBlitter_A8.cpp",
    "src/core/SkBlitter_ARGB32.cpp",
    "src/core/SkBlitter_RGB565.cpp",
    "src/core/SkBlitter_Sprite.cpp",
    "src/core/SkBlitter.cpp",
    "src/core/SkBlurMask.cpp",
    "src/core/SkBlurMF.cpp",
    "src/core/SkBuffer.cpp",
    "src/core/SkCachedData.cpp",
    "src/core/SkCanvas.cpp",
    "src/core/SkCanvasPriv.cpp",
    "src/core/SkClipStack.cpp",
    "src/core/SkColor.cpp",
    "src/core/SkColorFilter.cpp",
    "src/core/SkColorMatrixFilterRowMajor255.cpp",
    "src/core/SkColorSpace.cpp",
    "src/core/SkColorSpaceXformSteps.cpp",
    "src/core/SkContourMeasure.cpp",
    "src/core/SkConvertPixels.cpp",
    "src/core/SkCpu.cpp",
    "src/core/SkCubicClipper.cpp",
    "src/core/SkData.cpp",
    "src/core/SkDataTable.cpp",
    "src/core/SkDebug.cpp",
    "src/core/SkDeque.cpp",
    "src/core/SkDescriptor.cpp",
    "src/core/SkDevice.cpp",
    "src/core/SkDraw_text.cpp",
    "src/core/SkDraw_vertices.cpp",
    "src/core/SkDraw.cpp",
    "src/core/SkDrawable.cpp",
    "src/core/SkDrawLooper.cpp",
    "src/core/SkDrawShadowInfo.cpp",
    "src/core/SkEdge.cpp",
    "src/core/SkEdgeBuilder.cpp",
    "src/core/SkEdgeClipper.cpp",
    "src/core/SkFlattenable.cpp",
    "src/core/SkFont.cpp",
    "src/core/SkFontDescriptor.cpp",
    "src/core/SkFontLCDConfig.cpp",
    "src/core/SkFontMgr.cpp",
    "src/core/SkFontPriv.cpp",
    "src/core/SkFontStream.cpp",
    "src/core/SkGaussFilter.cpp",
    "src/core/SkGeometry.cpp",
    "src/core/SkGlobalInitialization_core.cpp",
    "src/core/SkGlyph.cpp",
    "src/core/SkGlyphRun.cpp",
    "src/core/SkGlyphRunPainter.cpp",
    "src/core/SkGraphics.cpp",
    "src/core/SkHalf.cpp",
    "src/core/SkICC.cpp",
    "src/core/SkImageFilter.cpp",
    "src/core/SkImageFilterCache.cpp",
    "src/core/SkImageGenerator.cpp",
    "src/core/SkImageInfo.cpp",
    "src/core/SkLatticeIter.cpp",
    "src/core/SkLineClipper.cpp",
    "src/core/SkLocalMatrixImageFilter.cpp",
    "src/core/SkMallocPixelRef.cpp",
    "src/core/SkMask.cpp",
    "src/core/SkMaskBlurFilter.cpp",
    "src/core/SkMaskCache.cpp",
    "src/core/SkMaskFilter.cpp",
    "src/core/SkMaskGamma.cpp",
    "src/core/SkMath.cpp",
    "src/core/SkMatrix.cpp",
    "src/core/SkMatrix44.cpp",
    "src/core/SkMatrixImageFilter.cpp",
    "src/core/SkMD5.cpp",
    "src/core/SkMiniRecorder.cpp",
    "src/core/SkMipMap.cpp",
    "src/core/SkModeColorFilter.cpp",
    "src/core/SkNormalFlatSource.cpp",
    "src/core/SkNormalMapSource.cpp",
    "src/core/SkNormalSource.cpp",
    "src/core/SkOpts.cpp",
    "src/core/SkPaint.cpp",
    "src/core/SkPaintPriv.cpp",
    "src/core/SkPath_serial.cpp",
    "src/core/SkPath.cpp",
    "src/core/SkPathEffect.cpp",
    "src/core/SkPathMeasure.cpp",
    "src/core/SkPathRef.cpp",
    "src/core/SkPicture.cpp",
    "src/core/SkPictureData.cpp",
    "src/core/SkPictureFlat.cpp",
    "src/core/SkPictureImageGenerator.cpp",
    "src/core/SkPicturePlayback.cpp",
    "src/core/SkPictureRecord.cpp",
    "src/core/SkPictureRecorder.cpp",
    "src/core/SkPixelRef.cpp",
    "src/core/SkPixmap.cpp",
    "src/core/SkPoint.cpp",
    "src/core/SkPoint3.cpp",
    "src/core/SkPtrRecorder.cpp",
    "src/core/SkRasterClip.cpp",
    "src/core/SkRasterPipeline.cpp",
    "src/core/SkRasterPipelineBlitter.cpp",
    "src/core/SkReadBuffer.cpp",
    "src/core/SkRecord.cpp",
    "src/core/SkRecordDraw.cpp",
    "src/core/SkRecordedDrawable.cpp",
    "src/core/SkRecorder.cpp",
    "src/core/SkRecordOpts.cpp",
    "src/core/SkRecords.cpp",
    "src/core/SkRect.cpp",
    "src/core/SkRegion_path.cpp",
    "src/core/SkRegion.cpp",
    "src/core/SkResourceCache.cpp",
    "src/core/SkRRect.cpp",
    "src/core/SkScalar.cpp",
    "src/core/SkScalerContext.cpp",
    "src/core/SkScan_AAAPath.cpp",
    "src/core/SkScan_Antihair.cpp",
    "src/core/SkScan_AntiPath.cpp",
    "src/core/SkScan_Hairline.cpp",
    "src/core/SkScan_Path.cpp",
    "src/core/SkScan.cpp",
    "src/core/SkSemaphore.cpp",
    "src/core/SkSpecialImage.cpp",
    "src/core/SkSpecialSurface.cpp",
    "src/core/SkSpinlock.cpp",
    "src/core/SkSpriteBlitter_ARGB32.cpp",
    "src/core/SkSpriteBlitter_RGB565.cpp",
    "src/core/SkStream.cpp",
    "src/core/SkStrike.cpp",
    "src/core/SkStrikeCache.cpp",
    "src/core/SkString.cpp",
    "src/core/SkStringUtils.cpp",
    "src/core/SkStroke.cpp",
    "src/core/SkStrokeRec.cpp",
    "src/core/SkStrokerPriv.cpp",
    "src/core/SkTextBlob.cpp",
    "src/core/SkThreadID.cpp",
    "src/core/SkTLS.cpp",
    "src/core/SkTypeface.cpp",
    "src/core/SkTypefaceCache.cpp",
    "src/core/SkUnPreMultiply.cpp",
    "src/core/SkUtils.cpp",
    "src/core/SkVertices.cpp",
    "src/core/SkVertState.cpp",
    "src/core/SkWriteBuffer.cpp",
    "src/core/SkWriter32.cpp",
    "src/core/SkXfermode.cpp",
    "src/core/SkXfermodeInterpretation.cpp",
    "src/effects/imagefilters/SkAlphaThresholdFilter.cpp",
    "src/effects/imagefilters/SkArithmeticImageFilter.cpp",
    "src/effects/imagefilters/SkBlurImageFilter.cpp",
    "src/effects/imagefilters/SkColorFilterImageFilter.cpp",
    "src/effects/imagefilters/SkComposeImageFilter.cpp",
    "src/effects/imagefilters/SkDisplacementMapEffect.cpp",
    "src/effects/imagefilters/SkDropShadowImageFilter.cpp",
    "src/effects/imagefilters/SkImageSource.cpp",
    "src/effects/imagefilters/SkLightingImageFilter.cpp",
    "src/effects/imagefilters/SkMagnifierImageFilter.cpp",
    "src/effects/imagefilters/SkMatrixConvolutionImageFilter.cpp",
    "src/effects/imagefilters/SkMergeImageFilter.cpp",
    "src/effects/imagefilters/SkMorphologyImageFilter.cpp",
    "src/effects/imagefilters/SkOffsetImageFilter.cpp",
    "src/effects/imagefilters/SkPaintImageFilter.cpp",
    "src/effects/imagefilters/SkPictureImageFilter.cpp",
    "src/effects/imagefilters/SkTileImageFilter.cpp",
    "src/effects/imagefilters/SkXfermodeImageFilter.cpp",
    "src/effects/Sk1DPathEffect.cpp",
    "src/effects/Sk2DPathEffect.cpp",
    "src/effects/SkColorMatrix.cpp",
    "src/effects/SkColorMatrixFilter.cpp",
    "src/effects/SkCornerPathEffect.cpp",
    "src/effects/SkDashPathEffect.cpp",
    "src/effects/SkDiscretePathEffect.cpp",
    "src/effects/SkEmbossMask.cpp",
    "src/effects/SkEmbossMaskFilter.cpp",
    "src/effects/SkHighContrastFilter.cpp",
    "src/effects/SkLayerDrawLooper.cpp",
    "src/effects/SkLumaColorFilter.cpp",
    "src/effects/SkOpPathEffect.cpp",
    "src/effects/SkOverdrawColorFilter.cpp",
    "src/effects/SkPackBits.cpp",
    "src/effects/SkShaderMaskFilter.cpp",
    "src/effects/SkTableColorFilter.cpp",
    "src/effects/SkTrimPathEffect.cpp",
    "src/image/SkImage_Lazy.cpp",
    "src/image/SkImage_Raster.cpp",
    "src/image/SkImage.cpp",
    "src/image/SkSurface_Raster.cpp",
    "src/image/SkSurface.cpp",
    "src/images/SkImageEncoder.cpp",
    "src/images/SkJpegEncoder.cpp",
    "src/images/SkJPEGWriteUtility.cpp",
    "src/images/SkPngEncoder.cpp",
    "src/lazy/SkDiscardableMemoryPool.cpp",
    "src/pathops/SkAddIntersections.cpp",
    "src/pathops/SkDConicLineIntersection.cpp",
    "src/pathops/SkDCubicLineIntersection.cpp",
    "src/pathops/SkDLineIntersection.cpp",
    "src/pathops/SkDQuadLineIntersection.cpp",
    "src/pathops/SkIntersections.cpp",
    "src/pathops/SkOpAngle.cpp",
    "src/pathops/SkOpCoincidence.cpp",
    "src/pathops/SkOpContour.cpp",
    "src/pathops/SkOpCubicHull.cpp",
    "src/pathops/SkOpEdgeBuilder.cpp",
    "src/pathops/SkOpSegment.cpp",
    "src/pathops/SkOpSpan.cpp",
    "src/pathops/SkPathOpsCommon.cpp",
    "src/pathops/SkPathOpsConic.cpp",
    "src/pathops/SkPathOpsCubic.cpp",
    "src/pathops/SkPathOpsCurve.cpp",
    "src/pathops/SkPathOpsDebug.cpp",
    "src/pathops/SkPathOpsLine.cpp",
    "src/pathops/SkPathOpsOp.cpp",
    "src/pathops/SkPathOpsQuad.cpp",
    "src/pathops/SkPathOpsRect.cpp",
    "src/pathops/SkPathOpsSimplify.cpp",
    "src/pathops/SkPathOpsTSect.cpp",
    "src/pathops/SkPathOpsTypes.cpp",
    "src/pathops/SkPathOpsWinding.cpp",
    "src/pathops/SkPathWriter.cpp",
    "src/pathops/SkReduceOrder.cpp",
    "src/ports/SkDiscardableMemory_none.cpp",
    "src/ports/SkGlobalInitialization_default.cpp",
    "src/ports/SkImageGenerator_skia.cpp",
    "src/ports/SkMemory_malloc.cpp",
    "src/ports/SkOSFile_stdio.cpp",
    "src/sfnt/SkOTTable_name.cpp",
    "src/sfnt/SkOTUtils.cpp",
    "src/shaders/gradients/Sk4fGradientBase.cpp",
    "src/shaders/gradients/Sk4fLinearGradient.cpp",
    "src/shaders/gradients/SkGradientShader.cpp",
    "src/shaders/gradients/SkLinearGradient.cpp",
    "src/shaders/gradients/SkRadialGradient.cpp",
    "src/shaders/gradients/SkSweepGradient.cpp",
    "src/shaders/gradients/SkTwoPointConicalGradient.cpp",
    "src/shaders/SkBitmapProcShader.cpp",
    "src/shaders/SkColorFilterShader.cpp",
    "src/shaders/SkColorShader.cpp",
    "src/shaders/SkComposeShader.cpp",
    "src/shaders/SkImageShader.cpp",
    "src/shaders/SkLightingShader.cpp",
    "src/shaders/SkLights.cpp",
    "src/shaders/SkLocalMatrixShader.cpp",
    "src/shaders/SkPerlinNoiseShader.cpp",
    "src/shaders/SkPictureShader.cpp",
    "src/shaders/SkShader.cpp",
    "src/utils/SkDashPath.cpp",
    "src/utils/SkEventTracer.cpp",
    "src/utils/SkMatrix22.cpp",
    "src/utils/SkPatchUtils.cpp",
    "src/utils/SkPolyUtils.cpp",
    "src/utils/SkShadowTessellator.cpp",
    "src/utils/SkShadowUtils.cpp",
    "src/utils/SkUTF.cpp",
    "third_party/gif/SkGifImageReader.cpp",
    "third_party/skcms/skcms.cc",
  }

  -- Add common Win and WinUWP

  local common_win = {
    "src/core/SkSharedMutex.cpp",
    "src/fonts/SkFontMgr_indirect.cpp",
    "src/ports/SkDebug_win.cpp",
    "src/ports/SkFontMgr_win_dw.cpp",
    "src/ports/SkFontMgr_win_dw_factory.cpp",
    "src/ports/SkOSFile_win.cpp",
    "src/ports/SkScalerContext_win_dw.cpp",
    "src/ports/SkTLS_win.cpp",
    "src/ports/SkTypeface_win_dw.cpp",
    "src/utils/win/SkDWrite.cpp",
    "src/utils/win/SkDWriteFontFileStream.cpp",
    "src/utils/win/SkDWriteGeometrySink.cpp",
    "src/utils/win/SkHRESULT.cpp",
  }

  -- Add common Unix

  local common_unix = {
    "src/ports/SkDebug_stdio.cpp",
    "src/ports/SkOSFile_posix.cpp",
    "src/ports/SkTLS_pthread.cpp",
  }

  -- Add common Linux and Android

  local common_linux = {
    common_unix,
    "src/core/SkTSearch.cpp",
    "src/ports/SkFontMgr_fontconfig.cpp",
    "src/ports/SkFontMgr_fontconfig_factory.cpp",
    "src/ports/SkFontConfigInterface_direct.cpp",
    "src/ports/SkFontHost_FreeType.cpp",
    "src/ports/SkFontHost_FreeType_common.cpp",
  }

  local common_android = {
    common_unix,
    "src/core/SkTSearch.cpp",
    "src/ports/SkDebug_android.cpp",
    "src/ports/SkFontHost_FreeType.cpp",
    "src/ports/SkFontHost_FreeType_common.cpp",
    "src/ports/SkFontMgr_android.cpp",
    "src/ports/SkFontMgr_android_factory.cpp",
    "src/ports/SkFontMgr_android_parser.cpp",
  }

  -- add common MacOS and iOS

  local common_cocoa = {
    common_unix,
    "src/ports/SkFontHost_mac.cpp",
    "src/utils/mac/SkStream_mac.cpp",
  }

  -- Opts SSE

  local opts_sse = {
    "src/opts/SkOpts_ssse3.cpp",
    "src/opts/SkOpts_sse41.cpp",
    "src/opts/SkOpts_sse42.cpp",
    "src/opts/SkOpts_avx.cpp",
    "src/opts/SkOpts_crc32.cpp",
    "src/opts/SkOpts_hsw.cpp",
  }

  flags {
    "NoPCH",
  }

  defines {
    "SK_SUPPORT_GPU=0",
    "SK_SCALAR_IS_FLOAT",
    "SK_HAS_JPEG_LIBRARY",
    "SK_HAS_PNG_LIBRARY",
  }

  local t_includedirs = {
    -- "../giflib/lib",
    "../libjpeg-turbo",
    "../libpng",
    "../zlib",
    "include",
    "include/codec",
    "include/config",
    "include/core",
    "include/effects",
    "include/encode",
    "include/gpu",
    "include/images",
    "include/lazy",
    "include/pathops",
    "include/pipe",
    "include/ports",
    "include/private",
    "include/utils",
    "include/views",
    "include/xml",
    "src/codec",
    "src/core",
    "src/image",
    "src/lazy",
    "src/opts",
    "src/pdf",
    "src/ports",
    "src/sfnt",
    "src/shaders",
    "src/utils",
    "third_party/gif",
    "third_party/skcms",
  }

  includedirs { t_includedirs }

  -- -------------------------------------------------------------
  -- configurations
  -- -------------------------------------------------------------

  if (os.is("windows") and not _TARGET_IS_WINUWP) then
    -- -------------------------------------------------------------
    -- configuration { "windows" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/3rdparty_static_win.lua")

    -- project specific configuration settings

    configuration { "windows" }

      defines {
        "SK_CPU_SSE_LEVEL=20",
        "_CRT_SECURE_NO_WARNINGS",
      }

      includedirs {
        "include/utils/win",
        "src/utils/win",
      }

      buildoptions {
        "/sdl",
        "/wd4703",
      }

      files {
        common_win,
        opts_sse,
      }

    -- -------------------------------------------------------------
    -- configuration { "windows", "Debug", "x32" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_win_x86_debug.lua")

    -- project specific configuration settings

    -- configuration { "windows", "Debug", "x32" }

    -- -------------------------------------------------------------
    -- configuration { "windows", "Debug", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_win_x64_debug.lua")

    -- project specific configuration settings

    -- configuration { "windows", "Debug", "x64" }

    -- -------------------------------------------------------------
    -- configuration { "windows", "Release", "x32" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_win_x86_release.lua")

    -- project specific configuration settings

    -- configuration { "windows", "Release", "x32" }

    -- -------------------------------------------------------------
    -- configuration { "windows", "Release", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_win_x64_release.lua")

    -- project specific configuration settings

    -- configuration { "windows", "Release", "x64" }

    -- -------------------------------------------------------------
  end

  if (os.is("linux") and not _OS_IS_ANDROID) then
    -- -------------------------------------------------------------
    -- configuration { "linux" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_linux.lua")

    -- project specific configuration settings

    configuration { "linux" }

      defines {
      	"SK_BUILD_FOR_UNIX",
        "SK_CPU_SSE_LEVEL=20",
      }

      includedirs {
        "/usr/include/freetype2",
      }

      files {
        common_linux,
        opts_sse,
      }

    -- -------------------------------------------------------------
    -- configuration { "linux", "Debug", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_linux_x64_debug.lua")

    -- project specific configuration settings

    -- configuration { "linux", "Debug", "x64" }

    -- -------------------------------------------------------------
    -- configuration { "linux", "Release", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_linux_x64_release.lua")

    -- project specific configuration settings

    -- configuration { "linux", "Release", "x64" }

    -- -------------------------------------------------------------
  end

  if (os.is("macosx") and not _OS_IS_IOS and not _OS_IS_ANDROID) then
    -- -------------------------------------------------------------
    -- configuration { "macosx" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_mac.lua")

    -- project specific configuration settings

    configuration { "macosx" }

      defines {
        "SK_CPU_SSE_LEVEL=20",
      }

      files {
        common_cocoa,
        opts_sse,
      }

      includedirs {
        "include/utils/mac",
      }

    -- -------------------------------------------------------------
    -- configuration { "macosx", "Debug", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_mac_x64_debug.lua")

    -- project specific configuration settings

    -- configuration { "macosx", "Debug", "x64" }

    -- -------------------------------------------------------------
    -- configuration { "macosx", "Release", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_mac_x64_release.lua")

    -- project specific configuration settings

    -- configuration { "macosx", "Release", "x64" }

    -- -------------------------------------------------------------
  end

  if (_OS_IS_IOS) then
    -- -------------------------------------------------------------
    -- configuration { "ios" } == _OS_IS_IOS
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_ios.lua")

    -- project specific configuration settings

    configuration { "ios*" }

      files {
        common_cocoa,
      }

      includedirs {
        "include/utils/mac",
      }

    -- -------------------------------------------------------------
    -- configuration { "ios_arm64_debug" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_ios_arm64_debug.lua")

    -- project specific configuration settings

    configuration { "ios_arm64_debug" }

      defines {
        "SK_ARM_HAS_NEON",
      }

    -- -------------------------------------------------------------
    -- configuration { "ios_arm64_release" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_ios_arm64_release.lua")

    -- project specific configuration settings

    configuration { "ios_arm64_release" }

      defines {
        "SK_ARM_HAS_NEON",
      }

    -- -------------------------------------------------------------
    -- configuration { "ios_sim64_debug" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_ios_sim64_debug.lua")

    -- project specific configuration settings

    configuration { "ios_sim64_debug" }

      defines {
        "SK_CPU_SSE_LEVEL=20",
      }

      files { opts_sse }

    -- -------------------------------------------------------------
    -- configuration { "ios_sim64_release" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_ios_sim64_release.lua")

    -- project specific configuration settings

    configuration { "ios_sim64_release" }

      defines {
        "SK_CPU_SSE_LEVEL=20",
      }

      files { opts_sse }

    -- -------------------------------------------------------------
  end

  if (_OS_IS_ANDROID) then
    -- -------------------------------------------------------------
    -- configuration { "android" } == _OS_IS_ANDROID
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android.lua")

    -- project specific configuration settings

    configuration { "android*" }

      defines {
      	"SK_BUILD_FOR_ANDROID",
      }

      files {
        common_android,
      }

      includedirs {
        "../freetype/include",
        "../libexpat/expat/lib",
      }

    -- -------------------------------------------------------------
    -- configuration { "android_armv7_debug" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android_armv7_debug.lua")

    -- project specific configuration settings

    configuration { "android_armv7_debug" }

      defines {
        "SK_ARM_HAS_NEON",
      }

    -- -------------------------------------------------------------
    -- configuration { "android_armv7_release" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android_armv7_release.lua")

    -- project specific configuration settings

    configuration { "android_armv7_release" }

      defines {
        "SK_ARM_HAS_NEON",
      }

    -- -------------------------------------------------------------
    -- configuration { "android_x86_debug" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android_x86_debug.lua")

    -- project specific configuration settings

    configuration { "android_x86_debug" }

      defines {
        "SK_CPU_SSE_LEVEL=20",
      }

      files { opts_sse }

    -- -------------------------------------------------------------
    -- configuration { "android_x86_release" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android_x86_release.lua")

    -- project specific configuration settings

    configuration { "android_x86_release" }

      defines {
        "SK_CPU_SSE_LEVEL=20",
      }

      files { opts_sse }

    -- -------------------------------------------------------------
    -- configuration { "android_arm64_debug" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android_arm64_debug.lua")

    -- project specific configuration settings

    configuration { "android_arm64_debug" }

      defines {
        "SK_ARM_HAS_NEON",
      }

    -- -------------------------------------------------------------
    -- configuration { "android_arm64_release" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android_arm64_release.lua")

    -- project specific configuration settings

    configuration { "android_arm64_release" }

      defines {
        "SK_ARM_HAS_NEON",
      }

    -- -------------------------------------------------------------
  end

  if (_TARGET_IS_WINUWP) then
    -- -------------------------------------------------------------
    -- configuration { "winuwp" } == _TARGET_IS_WINUWP
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp.lua")

    -- project specific configuration settings

    configuration { "windows" }

      defines {
        "_CRT_SECURE_NO_WARNINGS",
      }

      includedirs {
        "include/utils/win",
        "src/utils/win",
      }

      buildoptions {
        "/sdl",
      }

      -- Windows premake doesn't support per architecture files so add all opts and ifdef them in the code
      files {
        common_win,
        opts_sse,
      }

    -- -------------------------------------------------------------
    -- configuration { "winuwp_debug", "x32" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp_x86_debug.lua")

    -- project specific configuration settings

    configuration { "winuwp_debug", "x32" }

      defines {
        "SK_CPU_SSE_LEVEL=20",
      }

    -- -------------------------------------------------------------
    -- configuration { "winuwp_release", "x32" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp_x86_release.lua")

    -- project specific configuration settings

    configuration { "winuwp_release", "x32" }

      defines {
        "SK_CPU_SSE_LEVEL=20",
      }

    -- -------------------------------------------------------------
    -- configuration { "winuwp_debug", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp_x64_debug.lua")

    -- project specific configuration settings

    configuration { "winuwp_debug", "x64" }

      defines {
        "SK_CPU_SSE_LEVEL=20",
      }

    -- -------------------------------------------------------------
    -- configuration { "winuwp_release", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp_x64_release.lua")

    -- project specific configuration settings

    configuration { "winuwp_release", "x64" }

      defines {
        "SK_CPU_SSE_LEVEL=20",
      }

    -- -------------------------------------------------------------
    -- configuration { "winuwp_debug", "ARM" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp_arm_debug.lua")

    -- project specific configuration settings

    -- configuration { "winuwp_debug", "ARM" }

    -- -------------------------------------------------------------
    -- configuration { "winuwp_release", "ARM" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp_arm_release.lua")

    -- project specific configuration settings

    -- configuration { "winuwp_release", "ARM" }

    -- -------------------------------------------------------------
    -- configuration { "winuwp_debug", "ARM64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp_arm64_debug.lua")

    -- project specific configuration settings

    -- configuration { "winuwp_debug", "ARM64" }

    -- -------------------------------------------------------------
    -- configuration { "winuwp_release", "ARM64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp_arm64_release.lua")

    -- project specific configuration settings

    -- configuration { "winuwp_release", "ARM64" }

    -- -------------------------------------------------------------
  end

  if (_IS_QT) then
    -- -------------------------------------------------------------
    -- configuration { "qt" }
    -- -------------------------------------------------------------

    local qt_include_dirs = jointables(PROJECT_INCLUDE_DIRS, t_includedirs)

    -- Add additional QT include dirs
    -- table.insert(qt_include_dirs, <INCLUDE_PATH>)

    createqtfiles(project(), qt_include_dirs)

    -- -------------------------------------------------------------
  end
