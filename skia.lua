project "skia"

dofile(_BUILD_DIR .. "/static_library.lua")

configuration { "*" }

uuid "0A843431-DAE5-47CB-8301-5A731AE23379"

defines {
  "SK_CODEC_DECODES_JPEG",
  "SK_CODEC_DECODES_PNG",
  "SK_ENCODE_JPEG",
  "SK_ENCODE_PNG",
  "SK_HAS_WUFFS_LIBRARY",
}

includedirs {
  ".",
  "include/third_party/skcms",

  _3RDPARTY_DIR .. "/libjpeg-turbo",
  _3RDPARTY_DIR .. "/libpng",
  _3RDPARTY_DIR .. "/wuffs/release/c",
  _3RDPARTY_DIR .. "/zlib-ng",
}

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
  "src/codec/SkIcoCodec.cpp",
  "src/codec/SkJpegCodec.cpp",
  "src/codec/SkJpegDecoderMgr.cpp",
  "src/codec/SkJpegUtility.cpp",
  "src/codec/SkMasks.cpp",
  "src/codec/SkMaskSwizzler.cpp",
  "src/codec/SkParseEncodedOrigin.cpp",
  "src/codec/SkPngCodec.cpp",
  "src/codec/SkSampler.cpp",
  "src/codec/SkStreamBuffer.cpp",
  "src/codec/SkSwizzler.cpp",
  "src/codec/SkWbmpCodec.cpp",
  "src/codec/SkWuffsCodec.cpp",
  "src/core/SkAAClip.cpp",
  "src/core/SkAlphaRuns.cpp",
  "src/core/SkAnalyticEdge.cpp",
  "src/core/SkAnnotation.cpp",
  "src/core/SkArenaAlloc.cpp",
  "src/core/SkAutoPixmapStorage.cpp",
  "src/core/SkBBHFactory.cpp",
  "src/core/SkBigPicture.cpp",
  "src/core/SkBitmap.cpp",
  "src/core/SkBitmapCache.cpp",
  "src/core/SkBitmapDevice.cpp",
  "src/core/SkBitmapProcState_matrixProcs.cpp",
  "src/core/SkBitmapProcState.cpp",
  "src/core/SkBlendMode.cpp",
  "src/core/SkBlendModeBlender.cpp",
  "src/core/SkBlitRow_D32.cpp",
  "src/core/SkBlitter_A8.cpp",
  "src/core/SkBlitter_ARGB32.cpp",
  "src/core/SkBlitter_RGB565.cpp",
  "src/core/SkBlitter_Sprite.cpp",
  "src/core/SkBlitter.cpp",
  "src/core/SkBlockAllocator.cpp",
  "src/core/SkBlurMask.cpp",
  "src/core/SkBlurMF.cpp",
  "src/core/SkBuffer.cpp",
  "src/core/SkCachedData.cpp",
  "src/core/SkCanvas.cpp",
  "src/core/SkCanvasPriv.cpp",
  "src/core/SkClipStack.cpp",
  "src/core/SkColor.cpp",
  "src/core/SkColorFilter_Matrix.cpp",
  "src/core/SkColorFilter.cpp",
  "src/core/SkColorSpace.cpp",
  "src/core/SkColorSpaceXformSteps.cpp",
  "src/core/SkCompressedDataUtils.cpp",
  "src/core/SkContourMeasure.cpp",
  "src/core/SkConvertPixels.cpp",
  "src/core/SkCpu.cpp",
  "src/core/SkCubicClipper.cpp",
  "src/core/SkData.cpp",
  "src/core/SkDataTable.cpp",
  "src/core/SkDebug.cpp",
  "src/core/SkDeferredDisplayList.cpp",
  "src/core/SkDeque.cpp",
  "src/core/SkDescriptor.cpp",
  "src/core/SkDevice.cpp",
  "src/core/SkDraw_atlas.cpp",
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
  "src/core/SkFont_serial.cpp",
  "src/core/SkFont.cpp",
  "src/core/SkFontDescriptor.cpp",
  "src/core/SkFontMgr.cpp",
  "src/core/SkFontStream.cpp",
  "src/core/SkGaussFilter.cpp",
  "src/core/SkGeometry.cpp",
  "src/core/SkGlobalInitialization_core.cpp",
  "src/core/SkGlyph.cpp",
  "src/core/SkGlyphBuffer.cpp",
  "src/core/SkGlyphRun.cpp",
  "src/core/SkGlyphRunPainter.cpp",
  "src/core/SkGraphics.cpp",
  "src/core/SkHalf.cpp",
  "src/core/SkICC.cpp",
  "src/core/SkIDChangeListener.cpp",
  "src/core/SkImageFilter.cpp",
  "src/core/SkImageFilterCache.cpp",
  "src/core/SkImageFilterTypes.cpp",
  "src/core/SkImageGenerator.cpp",
  "src/core/SkImageInfo.cpp",
  "src/core/SkLatticeIter.cpp",
  "src/core/SkLineClipper.cpp",
  "src/core/SkLocalMatrixImageFilter.cpp",
  "src/core/SkM44.cpp",
  "src/core/SkMalloc.cpp",
  "src/core/SkMallocPixelRef.cpp",
  "src/core/SkMask.cpp",
  "src/core/SkMaskBlurFilter.cpp",
  "src/core/SkMaskCache.cpp",
  "src/core/SkMaskFilter.cpp",
  "src/core/SkMaskGamma.cpp",
  "src/core/SkMath.cpp",
  "src/core/SkMatrix.cpp",
  "src/core/SkMatrixImageFilter.cpp",
  "src/core/SkMatrixInvert.cpp",
  "src/core/SkMD5.cpp",
  "src/core/SkMiniRecorder.cpp",
  "src/core/SkMipmap.cpp",
  "src/core/SkMipmapAccessor.cpp",
  "src/core/SkModeColorFilter.cpp",
  "src/core/SkOpts_erms.cpp",
  "src/core/SkOpts.cpp",
  "src/core/SkPaint.cpp",
  "src/core/SkPaintPriv.cpp",
  "src/core/SkPath_serial.cpp",
  "src/core/SkPath.cpp",
  "src/core/SkPathBuilder.cpp",
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
  "src/core/SkRTree.cpp",
  "src/core/SkScalar.cpp",
  "src/core/SkScalerCache.cpp",
  "src/core/SkScalerContext.cpp",
  "src/core/SkScan_AAAPath.cpp",
  "src/core/SkScan_Antihair.cpp",
  "src/core/SkScan_AntiPath.cpp",
  "src/core/SkScan_Hairline.cpp",
  "src/core/SkScan_Path.cpp",
  "src/core/SkScan.cpp",
  "src/core/SkSemaphore.cpp",
  "src/core/SkSharedMutex.cpp",
  "src/core/SkSpecialImage.cpp",
  "src/core/SkSpecialSurface.cpp",
  "src/core/SkSpinlock.cpp",
  "src/core/SkSpriteBlitter_ARGB32.cpp",
  "src/core/SkSpriteBlitter_RGB565.cpp",
  "src/core/SkStream.cpp",
  "src/core/SkStrikeCache.cpp",
  "src/core/SkStrikeForGPU.cpp",
  "src/core/SkStrikeSpec.cpp",
  "src/core/SkString.cpp",
  "src/core/SkStringUtils.cpp",
  "src/core/SkStroke.cpp",
  "src/core/SkStrokeRec.cpp",
  "src/core/SkStrokerPriv.cpp",
  "src/core/SkTextBlob.cpp",
  "src/core/SkThreadID.cpp",
  "src/core/SkTypeface.cpp",
  "src/core/SkTypefaceCache.cpp",
  "src/core/SkUnPreMultiply.cpp",
  "src/core/SkUtils.cpp",
  "src/core/SkVertices.cpp",
  "src/core/SkVertState.cpp",
  "src/core/SkVM.cpp",
  "src/core/SkVMBlitter.cpp",
  "src/core/SkWriteBuffer.cpp",
  "src/core/SkWriter32.cpp",
  "src/core/SkXfermode.cpp",
  "src/core/SkXfermodeInterpretation.cpp",
  "src/core/SkYUVAInfo.cpp",
  "src/core/SkYUVAPixmaps.cpp",
  "src/effects/imagefilters/SkAlphaThresholdImageFilter.cpp",
  "src/effects/imagefilters/SkArithmeticImageFilter.cpp",
  "src/effects/imagefilters/SkBlendImageFilter.cpp",
  "src/effects/imagefilters/SkBlurImageFilter.cpp",
  "src/effects/imagefilters/SkColorFilterImageFilter.cpp",
  "src/effects/imagefilters/SkComposeImageFilter.cpp",
  "src/effects/imagefilters/SkCropImageFilter.cpp",
  "src/effects/imagefilters/SkDisplacementMapImageFilter.cpp",
  "src/effects/imagefilters/SkDropShadowImageFilter.cpp",
  "src/effects/imagefilters/SkImageImageFilter.cpp",
  "src/effects/imagefilters/SkLightingImageFilter.cpp",
  "src/effects/imagefilters/SkMagnifierImageFilter.cpp",
  "src/effects/imagefilters/SkMatrixConvolutionImageFilter.cpp",
  "src/effects/imagefilters/SkMergeImageFilter.cpp",
  "src/effects/imagefilters/SkMorphologyImageFilter.cpp",
  "src/effects/imagefilters/SkOffsetImageFilter.cpp",
  "src/effects/imagefilters/SkPictureImageFilter.cpp",
  "src/effects/imagefilters/SkShaderImageFilter.cpp",
  "src/effects/imagefilters/SkTileImageFilter.cpp",
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
  "src/effects/SkShaderMaskFilter.cpp",
  "src/effects/SkTableColorFilter.cpp",
  "src/effects/SkTrimPathEffect.cpp",
  "src/image/SkImage_Lazy.cpp",
  "src/image/SkImage_Raster.cpp",
  "src/image/SkImage.cpp",
  "src/image/SkRescaleAndReadPixels.cpp",
  "src/image/SkSurface_Raster.cpp",
  "src/image/SkSurface.cpp",
  "src/images/SkImageEncoder.cpp",
  "src/images/SkJpegEncoder.cpp",
  "src/images/SkJPEGWriteUtility.cpp",
  "src/images/SkPngEncoder.cpp",
  "src/lazy/SkDiscardableMemoryPool.cpp",
  "src/opts/SkOpts_skx.cpp",
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
  "src/shaders/SkLocalMatrixShader.cpp",
  "src/shaders/SkPerlinNoiseShader.cpp",
  "src/shaders/SkPictureShader.cpp",
  "src/shaders/SkShader.cpp",
  "src/shaders/SkTransformShader.cpp",
  "src/utils/SkCharToGlyphCache.cpp",
  "src/utils/SkCustomTypeface.cpp",
  "src/utils/SkDashPath.cpp",
  "src/utils/SkEventTracer.cpp",
  "src/utils/SkMatrix22.cpp",
  "src/utils/SkPatchUtils.cpp",
  "src/utils/SkPolyUtils.cpp",
  "src/utils/SkShadowTessellator.cpp",
  "src/utils/SkShadowUtils.cpp",
  "src/utils/SkUTF.cpp",
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
  "src/ports/SkFontMgr_mac_ct_factory.cpp",
  "src/ports/SkFontMgr_mac_ct.cpp",
  "src/ports/SkScalerContext_mac_ct.cpp",
  "src/ports/SkTypeface_mac_ct.cpp",
  "src/utils/mac/SkCTFont.cpp",
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

-- Opts arm64

local opts_arm64 = {
  "src/opts/SkOpts_crc32.cpp",
}

if (_PLATFORM_ANDROID) then
  includedirs {
    _3RDPARTY_DIR .. "/freetype/include",
    _3RDPARTY_DIR .. "/libexpat/expat/lib",
  }

  files {
    common_android,
  }

  configuration { "*arm64*" }

  files { opts_arm64 }

  configuration { "*x64*" }

  files { opts_sse }

  configuration { "*x86*" }

  files { opts_sse }
end

if (_PLATFORM_COCOA) then
  includedirs {
    "include/utils/mac",
  }

  files {
    common_cocoa,
  }

  configuration { "*arm64*" }

  files { opts_arm64 }

  configuration { "*x64*" }

  files { opts_sse }
end

if (_PLATFORM_IOS) then
  includedirs {
    "include/utils/mac",
  }

  files {
    common_cocoa,
  }

  configuration { "*arm64*" }

  files { opts_arm64 }

  configuration { "*x64*" }

  files { opts_sse }
end

if (_PLATFORM_LINUX) then
  includedirs {
    _3RDPARTY_DIR .. "/freetype/include",
  }

  files {
    common_linux,
    opts_sse,
  }
end

if (_PLATFORM_MACOS) then
  includedirs {
    "include/utils/mac",
  }

  files {
    common_cocoa,
  }

  configuration { "ARM64" }

  files { opts_arm64 }

  configuration { "x64" }

  files { opts_sse }
end

if (_PLATFORM_WINDOWS) then
  defines {
    "_CRT_SECURE_NO_WARNINGS",
  }

  includedirs {
    "include/utils/win",
    "src/utils/win",
  }

  files {
    common_win,
    opts_sse,
  }
end

if (_PLATFORM_WINUWP) then
  defines {
    "_CRT_SECURE_NO_WARNINGS",
    "SK_WINUWP", -- required for UWP code paths
  }

  includedirs {
    "include/utils/win",
    "src/utils/win",
  }

  files {
    common_win,
    opts_sse,
  }
end
