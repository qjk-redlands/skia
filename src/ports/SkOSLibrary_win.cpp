/*
 * Copyright 2015 Google Inc.
 *
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file.
 */
#include "SkTypes.h"
#if defined(SK_BUILD_FOR_WIN)

#include "SkOSLibrary.h"
#include "SkLeanWindows.h"

void* DynamicLoadLibrary(const char* libraryName) {
#if RTC_WINRT_FAMILY
  size_t newSize = strlen(libraryName) + 1;
  wchar_t* wcString = new wchar_t[newSize];

  size_t convertedChars = 0;
  mbstowcs_s(&convertedChars, wcString, newSize, libraryName, _TRUNCATE);

  auto ret = LoadPackagedLibrary(wcString, 0);
  delete[] wcString;

  return ret;
#else
  return LoadLibraryA(libraryName);
#endif
}

void* GetProcedureAddress(void* library, const char* functionName) {
    return reinterpret_cast<void*>(::GetProcAddress((HMODULE)library, functionName));
}

#endif//defined(SK_BUILD_FOR_WIN)
