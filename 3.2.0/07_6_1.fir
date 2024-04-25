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
;     7.6 Type Modifiers
;       7.6.1 Constant Type
FIRRTL version 3.2.0
circuit MyTop:
  module MyTop :
    input a : const UInt<3>
    output b : const SInt
    input c : const SInt<3>
    output d : const {real: UInt<32>, imag : UInt<32>, other : const SInt}
    input e : const {real: UInt<32>, imag : UInt<32>, other : const SInt<1>}
    b <= c
    d <= e
