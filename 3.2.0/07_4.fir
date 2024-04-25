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
;     7.4 Type Alias
FIRRTL version 3.2.0
circuit TypeAliasMod:
  type WordType = UInt<32>
  type ValidType = UInt<1>
  type Data = {w: WordType, valid: ValidType, ready: UInt<1>}
  type AnotherWordType = UInt<32>

  module TypeAliasMod:
    input in: Data
    output out: Data
    wire w1: AnotherWordType
    wire w2: ValidType
    wire w3: UInt<1>
    connect w1, in.w
    connect w2, in.valid
    connect w3, in.ready
    connect out.w, w1
    connect out.valid, w2
    connect out.ready, w3
