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
;   6 Literals
;     6.1 Radix-specified Integer Literal
FIRRTL version 3.2.0
circuit MyTop :
  module Foo :
    output o1: SInt
    output o2: SInt
    output o3: SInt
    output o4: SInt
    output o5: SInt
    output o6: SInt
    output o7: SInt
    output o8: SInt
    o1 <= SInt(0b101010)
    o2 <= SInt(0o52)
    o3 <= SInt(0d42)
    o4 <= SInt(0h2a)
    o5 <= SInt(-0b101010)
    o6 <= SInt(-0o52)
    o7 <= SInt(-0d42)
    o8 <= SInt(-0h2a)
  module MyTop:
