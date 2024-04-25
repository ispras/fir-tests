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
;   8 Types
;     8.7 Nodes
FIRRTL version 3.2.0
circuit MyTop:
  module MyTop :
    input s: UInt<1>
    input x: SInt<1>
    input y: SInt<1>
    wire pred: UInt<1>
    wire a: SInt<1>
    wire b: SInt<1>
    pred <= s
    a <= x
    b <= y
    node mynode = mux(pred, a, b)
