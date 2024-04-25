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
;     9.7 Sub-accesses
;       Example 6
FIRRTL version 3.2.0
circuit MyModule:
  module MyModule :
    input in: UInt<1>
    input default: UInt<1>[2][2]
    input n: UInt<1>
    input m: UInt<1>
    output out: UInt[2][2]
    connect out, default
    when and(eq(n, UInt(0)), eq(m, UInt(0))) :
      connect out[0][0], in
    else when and(eq(n, UInt(0)), eq(m, UInt(1))) :
      connect out[0][1], in
    else when and(eq(n, UInt(1)), eq(m, UInt(0))) :
      connect out[1][0], in
    else when and(eq(n, UInt(1)), eq(m, UInt(1))) :
      connect out[1][1], in
