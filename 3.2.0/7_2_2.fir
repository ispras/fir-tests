; Copyright 2024 ISP RAS (http://www.ispras.ru)
;
; Licensed under the Apache License, Version 2.0 (the "License");
; you may not use this file except in compliance with the License.
; You may obtain a copy of the License at
;
;     http://www.apache.org/licenses/LICENSE-2.0
;
; Unless required by applicable law or agreed to in writing, software
; distributed under the License is distributed on an "AS IS" BASIS,
; WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
; See the License for the specific language governing permissions and
; limitations under the License.

; Specification for the FIRRTL Language Version 3.2.0
;   7 Types
;     7.2 Aggregate Types
;       7.2.2 Bundle Types
FIRRTL version 3.2.0
circuit MyTop :
  module MyModule :
    input x: {real: SInt<10>, imag: SInt<10>}
    input b: {word: UInt<32>, valid: UInt<1>, flip ready: UInt<1>}
    output a: {word: UInt<32>, valid: UInt<1>, flip ready: UInt<1>}
    input c: {real: {word: UInt<32>, valid: UInt<1>, flip ready: UInt<1>},
              imag: {word: UInt<32>, valid: UInt<1>, flip ready: UInt<1>}}
    output d: {real: {word: UInt<32>, valid: UInt<1>, flip ready: UInt<1>},
              imag: {word: UInt<32>, valid: UInt<1>, flip ready: UInt<1>}}
    input port: {a: UInt<10>, flip b: {c: UInt, flip d: UInt<10>}}
    output myport: {a: UInt, flip b: {c: UInt<10>, flip d: UInt}}
    myport <= port
    d <= c
    a <= b
  module MyTop :
