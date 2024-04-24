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
;   9 Expressions
;     9.9 Primitive Operations
FIRRTL version 3.2.0
circuit MyModule:
  module MyModule :
    input a: UInt<10>
    input b: UInt<10>
    input x: UInt<1>
    output o1: UInt
    output o2: UInt
    output o3: UInt
    output o4: Clock
    connect o1, add(a, b)
    connect o2, shl(a, 3)
    connect o3, bits(a, 7, 4)
    connect o4, asClock(x)
