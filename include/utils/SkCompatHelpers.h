/*
* Copyright 2006 The Android Open Source Project
*
* Use of this source code is governed by a BSD-style license that can be
* found in the LICENSE file.
*/

#ifndef SkCompatHelpers_DEFINED
#define SkCompatHelpers_DEFINED

#include "SkData.h"
#include "../codec/SkCodec.h"
#include "SkBitmap.h"
#include "SkImageEncoder.h"
#include "SkCanvas.h"
#include "SkPaint.h"

class SkCompatHelpers {
  static sk_sp<SkData> data_from_buffer(const void* data, size_t len)
  {
    return SkData::MakeWithoutCopy(data, len);
  }

  static sk_sp<SkData> data_from_file(const char filename[])
  {
    return SkData::MakeFromFileName(filename);
  }

  static sk_sp<SkData> data_from_stream(SkStream* stream, size_t len)
  {
    return SkData::MakeFromStream(stream, len);
  }

  static bool decode_data(const sk_sp<SkData>& data, SkBitmap* bitmap, SkEncodedImageFormat* format, SkColorType colorType, bool requireUnpremul)
  {
    std::unique_ptr<SkCodec> codec(SkCodec::MakeFromData(data));
    if (!codec) {
      return false;
    }

    if (format)
      *format = codec->getEncodedFormat();

    SkImageInfo info = codec->getInfo();

    if (colorType != SkColorType::kUnknown_SkColorType)
      info = codec->getInfo().makeColorType(colorType);

    if (requireUnpremul && kPremul_SkAlphaType == info.alphaType()) {
      info = info.makeAlphaType(kUnpremul_SkAlphaType);
    }

    if (!bitmap->tryAllocPixels(info)) {
      return false;
    }

    return SkCodec::kSuccess == codec->getPixels(info, bitmap->getPixels(), bitmap->rowBytes());
  }

public:
  //File decoding functions
  static bool decode_memory(const void* data, size_t len, SkBitmap* bitmap,
    SkColorType colorType = kN32_SkColorType,
    SkEncodedImageFormat* format = nullptr,
    bool requireUnpremul = false)
  {
    SkMemoryStream stream(data, len);
    return decode_data(data_from_stream(&stream, len), bitmap, format, colorType, requireUnpremul);
  }

  static bool decode_file(const char filename[], SkBitmap* bitmap,
    SkColorType colorType = kN32_SkColorType,
    SkEncodedImageFormat* format = nullptr,
    bool requireUnpremul = false)
  {
    return decode_data(data_from_file(filename), bitmap, format, colorType, requireUnpremul);
  }

  static bool decode_stream(SkStream* stream, size_t len, SkBitmap* bitmap,
    SkColorType colorType = kN32_SkColorType,
    SkEncodedImageFormat* format = nullptr,
    bool requireUnpremul = false)
  {
    return decode_data(data_from_stream(stream, len), bitmap, format, colorType, requireUnpremul);
  }

  //file encoding functions
  static bool encode_file(const char filename[], const SkBitmap& src, SkEncodedImageFormat format, int quality)
  {
    SkFILEWStream fileStream(filename);
    return SkEncodeImage(&fileStream, src, format, quality);
  }

  static bool encode_stream(SkWStream* stream, const SkBitmap& src, SkEncodedImageFormat format, int quality)
  {
    return SkEncodeImage(stream, src, format, quality);
  }

  static sk_sp<SkData> encode_data(const SkBitmap& bitmap, SkEncodedImageFormat format, int quality)
  {
    SkDynamicMemoryWStream stream;
    if (SkEncodeImage(&stream, bitmap, format, quality))
    {
      return stream.detachAsData();
    }

    return nullptr;
  }

  static bool copyTo(SkBitmap* from, SkBitmap* to)
  {
    if (!to->setInfo(from->info(), from->rowBytes()) || !to->tryAllocN32Pixels(from->width(), from->height(), from->isOpaque()))
    {
      return false;
    }

    return from->readPixels(to->info(), to->getPixels(), to->rowBytes(), 0, 0);
  }

  static void draw_text_decorations(SkCanvas& canvas, const SkPaint& paint, SkScalar x, SkScalar y, const void* text, size_t length, bool has_underline, float underline_pos, bool has_strikethrough, float strikethrough_pos)
  {
    auto actual_glyph_width = SkScalar(0);

    if (has_underline || has_strikethrough)
    {
      actual_glyph_width = paint.measureText(text, length);
    }

    if (has_underline)
    {
      const auto start_x = x;
      const auto start_y = y + underline_pos;
      const auto end_x = x + actual_glyph_width;
      const auto end_y = start_y;

      canvas.drawLine(start_x, start_y, end_x, end_y, paint);
    }

    if (has_strikethrough)
    {
      const auto start_x = x;
      const auto start_y = y + strikethrough_pos;
      const auto end_x = x + actual_glyph_width;
      const auto end_y = start_y;

      canvas.drawLine(start_x, start_y, end_x, end_y, paint);
    }
  }

  class SkLockPixels
  {
  public:
    SkLockPixels(SkBitmap&) { }
  };
};

#endif
