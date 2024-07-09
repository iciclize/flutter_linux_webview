// Copyright (c) 2023 ACCESS CO., LTD. All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are
// met:
//
//     * Redistributions of source code must retain the above copyright
// notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above
// copyright notice, this list of conditions and the following disclaimer
// in the documentation and/or other materials provided with the
// distribution.
//     * Neither the name of ACCESS CO., LTD. nor the names of its
// contributors may be used to endorse or promote products derived from
// this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

// Copyright 2013 The Flutter Authors. All rights reserved.
//
// Redistribution and use in source and binary forms, with or without modification,
// are permitted provided that the following conditions are met:
//
//     * Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above
//       copyright notice, this list of conditions and the following
//       disclaimer in the documentation and/or other materials provided
//       with the distribution.
//     * Neither the name of Google Inc. nor the names of its
//       contributors may be used to endorse or promote products derived
//       from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
// ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
// ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

/// The Flutter Linux embedder has the `xkb_to_physical_key_map` data.
/// We can use that data to get a native key code from a USB HID Usage.
/// `xkb_to_physical_key_map` is from:
/// https://github.com/flutter/engine/blob/6ba2af10bb05c88a2731482cedf2cfd11cf5af0b/shell/platform/linux/key_mapping.cc
/// (as of Flutter version 3.0.4)

const Map<int, int> _xkb_to_physical_key_map = {
  0x00000009: 0x00070029, // escape
  0x0000000a: 0x0007001e, // digit1
  0x0000000b: 0x0007001f, // digit2
  0x0000000c: 0x00070020, // digit3
  0x0000000d: 0x00070021, // digit4
  0x0000000e: 0x00070022, // digit5
  0x0000000f: 0x00070023, // digit6
  0x00000010: 0x00070024, // digit7
  0x00000011: 0x00070025, // digit8
  0x00000012: 0x00070026, // digit9
  0x00000013: 0x00070027, // digit0
  0x00000014: 0x0007002d, // minus
  0x00000015: 0x0007002e, // equal
  0x00000016: 0x0007002a, // backspace
  0x00000017: 0x0007002b, // tab
  0x00000018: 0x00070014, // keyQ
  0x00000019: 0x0007001a, // keyW
  0x0000001a: 0x00070008, // keyE
  0x0000001b: 0x00070015, // keyR
  0x0000001c: 0x00070017, // keyT
  0x0000001d: 0x0007001c, // keyY
  0x0000001e: 0x00070018, // keyU
  0x0000001f: 0x0007000c, // keyI
  0x00000020: 0x00070012, // keyO
  0x00000021: 0x00070013, // keyP
  0x00000022: 0x0007002f, // bracketLeft
  0x00000023: 0x00070030, // bracketRight
  0x00000024: 0x00070028, // enter
  0x00000025: 0x000700e0, // controlLeft
  0x00000026: 0x00070004, // keyA
  0x00000027: 0x00070016, // keyS
  0x00000028: 0x00070007, // keyD
  0x00000029: 0x00070009, // keyF
  0x0000002a: 0x0007000a, // keyG
  0x0000002b: 0x0007000b, // keyH
  0x0000002c: 0x0007000d, // keyJ
  0x0000002d: 0x0007000e, // keyK
  0x0000002e: 0x0007000f, // keyL
  0x0000002f: 0x00070033, // semicolon
  0x00000030: 0x00070034, // quote
  0x00000031: 0x00070035, // backquote
  0x00000032: 0x000700e1, // shiftLeft
  0x00000033: 0x00070031, // backslash
  0x00000034: 0x0007001d, // keyZ
  0x00000035: 0x0007001b, // keyX
  0x00000036: 0x00070006, // keyC
  0x00000037: 0x00070019, // keyV
  0x00000038: 0x00070005, // keyB
  0x00000039: 0x00070011, // keyN
  0x0000003a: 0x00070010, // keyM
  0x0000003b: 0x00070036, // comma
  0x0000003c: 0x00070037, // period
  0x0000003d: 0x00070038, // slash
  0x0000003e: 0x000700e5, // shiftRight
  0x0000003f: 0x00070055, // numpadMultiply
  0x00000040: 0x000700e2, // altLeft
  0x00000041: 0x0007002c, // space
  0x00000042: 0x00070039, // capsLock
  0x00000043: 0x0007003a, // f1
  0x00000044: 0x0007003b, // f2
  0x00000045: 0x0007003c, // f3
  0x00000046: 0x0007003d, // f4
  0x00000047: 0x0007003e, // f5
  0x00000048: 0x0007003f, // f6
  0x00000049: 0x00070040, // f7
  0x0000004a: 0x00070041, // f8
  0x0000004b: 0x00070042, // f9
  0x0000004c: 0x00070043, // f10
  0x0000004d: 0x00070053, // numLock
  0x0000004e: 0x00070047, // scrollLock
  0x0000004f: 0x0007005f, // numpad7
  0x00000050: 0x00070060, // numpad8
  0x00000051: 0x00070061, // numpad9
  0x00000052: 0x00070056, // numpadSubtract
  0x00000053: 0x0007005c, // numpad4
  0x00000054: 0x0007005d, // numpad5
  0x00000055: 0x0007005e, // numpad6
  0x00000056: 0x00070057, // numpadAdd
  0x00000057: 0x00070059, // numpad1
  0x00000058: 0x0007005a, // numpad2
  0x00000059: 0x0007005b, // numpad3
  0x0000005a: 0x00070062, // numpad0
  0x0000005b: 0x00070063, // numpadDecimal
  0x0000005d: 0x00070094, // lang5
  0x0000005e: 0x00070064, // intlBackslash
  0x0000005f: 0x00070044, // f11
  0x00000060: 0x00070045, // f12
  0x00000061: 0x00070087, // intlRo
  0x00000062: 0x00070092, // lang3
  0x00000063: 0x00070093, // lang4
  0x00000064: 0x0007008a, // convert
  0x00000065: 0x00070088, // kanaMode
  0x00000066: 0x0007008b, // nonConvert
  0x00000068: 0x00070058, // numpadEnter
  0x00000069: 0x000700e4, // controlRight
  0x0000006a: 0x00070054, // numpadDivide
  0x0000006b: 0x00070046, // printScreen
  0x0000006c: 0x000700e6, // altRight
  0x0000006e: 0x0007004a, // home
  0x0000006f: 0x00070052, // arrowUp
  0x00000070: 0x0007004b, // pageUp
  0x00000071: 0x00070050, // arrowLeft
  0x00000072: 0x0007004f, // arrowRight
  0x00000073: 0x0007004d, // end
  0x00000074: 0x00070051, // arrowDown
  0x00000075: 0x0007004e, // pageDown
  0x00000076: 0x00070049, // insert
  0x00000077: 0x0007004c, // delete
  0x00000079: 0x0007007f, // audioVolumeMute
  0x0000007a: 0x00070081, // audioVolumeDown
  0x0000007b: 0x00070080, // audioVolumeUp
  0x0000007c: 0x00070066, // power
  0x0000007d: 0x00070067, // numpadEqual
  0x0000007e: 0x000700d7, // numpadSignChange
  0x0000007f: 0x00070048, // pause
  0x00000080: 0x000c029f, // showAllWindows
  0x00000081: 0x00070085, // numpadComma
  0x00000082: 0x00070090, // lang1
  0x00000083: 0x00070091, // lang2
  0x00000084: 0x00070089, // intlYen
  0x00000085: 0x000700e3, // metaLeft
  0x00000086: 0x000700e7, // metaRight
  0x00000087: 0x00070065, // contextMenu
  0x00000088: 0x000c0226, // browserStop
  0x00000089: 0x00070079, // again
  0x0000008b: 0x0007007a, // undo
  0x0000008c: 0x00070077, // select
  0x0000008d: 0x0007007c, // copy
  0x0000008e: 0x00070074, // open
  0x0000008f: 0x0007007d, // paste
  0x00000090: 0x0007007e, // find
  0x00000091: 0x0007007b, // cut
  0x00000092: 0x00070075, // help
  0x00000094: 0x000c0192, // launchApp2
  0x00000096: 0x00010082, // sleep
  0x00000097: 0x00010083, // wakeUp
  0x00000098: 0x000c0194, // launchApp1
  0x0000009e: 0x000c0196, // launchInternetBrowser
  0x000000a0: 0x000c019e, // lockScreen
  0x000000a3: 0x000c018a, // launchMail
  0x000000a4: 0x000c022a, // browserFavorites
  0x000000a6: 0x000c0224, // browserBack
  0x000000a7: 0x000c0225, // browserForward
  0x000000a9: 0x000c00b8, // eject
  0x000000ab: 0x000c00b5, // mediaTrackNext
  0x000000ac: 0x000c00cd, // mediaPlayPause
  0x000000ad: 0x000c00b6, // mediaTrackPrevious
  0x000000ae: 0x000c00b7, // mediaStop
  0x000000af: 0x000c00b2, // mediaRecord
  0x000000b0: 0x000c00b4, // mediaRewind
  0x000000b1: 0x000c008c, // launchPhone
  0x000000b3: 0x000c0183, // mediaSelect
  0x000000b4: 0x000c0223, // browserHome
  0x000000b5: 0x000c0227, // browserRefresh
  0x000000b6: 0x000c0094, // exit
  0x000000bb: 0x000700b6, // numpadParenLeft
  0x000000bc: 0x000700b7, // numpadParenRight
  0x000000bd: 0x000c0201, // newKey
  0x000000be: 0x000c0279, // redo
  0x000000bf: 0x00070068, // f13
  0x000000c0: 0x00070069, // f14
  0x000000c1: 0x0007006a, // f15
  0x000000c2: 0x0007006b, // f16
  0x000000c3: 0x0007006c, // f17
  0x000000c4: 0x0007006d, // f18
  0x000000c5: 0x0007006e, // f19
  0x000000c6: 0x0007006f, // f20
  0x000000c7: 0x00070070, // f21
  0x000000c8: 0x00070071, // f22
  0x000000c9: 0x00070072, // f23
  0x000000ca: 0x00070073, // f24
  0x000000d1: 0x000c00b1, // mediaPause
  0x000000d6: 0x000c0203, // close
  0x000000d7: 0x000c00b0, // mediaPlay
  0x000000d8: 0x000c00b3, // mediaFastForward
  0x000000d9: 0x000c00e5, // bassBoost
  0x000000da: 0x000c0208, // print
  0x000000e1: 0x000c0221, // browserSearch
  0x000000e8: 0x000c0070, // brightnessDown
  0x000000e9: 0x000c006f, // brightnessUp
  0x000000eb: 0x000100b5, // displayToggleIntExt
  0x000000ed: 0x000c007a, // kbdIllumDown
  0x000000ee: 0x000c0079, // kbdIllumUp
  0x000000ef: 0x000c028c, // mailSend
  0x000000f0: 0x000c0289, // mailReply
  0x000000f1: 0x000c028b, // mailForward
  0x000000f2: 0x000c0207, // save
  0x000000f3: 0x000c01a7, // launchDocuments
  0x000000fc: 0x000c0075, // brightnessAuto
  0x00000100: 0x00000018, // microphoneMuteToggle
  0x0000016e: 0x000c0060, // info
  0x00000172: 0x000c008d, // programGuide
  0x0000017a: 0x000c0061, // closedCaptionToggle
  0x0000017c: 0x000c0232, // zoomToggle
  0x0000017e: 0x000c01ae, // launchKeyboardLayout
  0x00000190: 0x000c01b7, // launchAudioBrowser
  0x00000195: 0x000c018e, // launchCalendar
  0x0000019d: 0x000c0083, // mediaLast
  0x000001a2: 0x000c009c, // channelUp
  0x000001a3: 0x000c009d, // channelDown
  0x000001aa: 0x000c022d, // zoomIn
  0x000001ab: 0x000c022e, // zoomOut
  0x000001ad: 0x000c0184, // launchWordProcessor
  0x000001af: 0x000c0186, // launchSpreadsheet
  0x000001b5: 0x000c018d, // launchContacts
  0x000001b7: 0x000c0072, // brightnessToggle
  0x000001b8: 0x000c01ab, // spellCheck
  0x000001b9: 0x000c019c, // logOff
  0x0000024b: 0x000c019f, // launchControlPanel
  0x0000024c: 0x000c01a2, // selectTask
  0x0000024d: 0x000c01b1, // launchScreenSaver
  0x0000024e: 0x000c00cf, // speechInputToggle
  0x0000024f: 0x000c01cb, // launchAssistant
  0x00000250: 0x000c029d, // keyboardLayoutSelect
  0x00000258: 0x000c0073, // brightnessMinimum
  0x00000259: 0x000c0074, // brightnessMaximum
  0x00000281: 0x00000017, // privacyScreenToggle
};

// inversed map
final Map<int, int> _usbHidUsageToNativeKeyCodeMap =
    _xkb_to_physical_key_map.map((key, value) => MapEntry(value, key));

int getNativeKeyCode(int usbHidUsage) {
  return _usbHidUsageToNativeKeyCodeMap[usbHidUsage] ?? 0;
}
