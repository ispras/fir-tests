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
;     8.8 Conditionals
;       8.8.6 Conditional Last Connect Semantics
;         Example 6
FIRRTL version 3.2.0
circuit MyModule :
  module MyModule :
    input x_in: {a: UInt<1>, b: UInt<1>}
    input y_in: {a: UInt<1>, b: UInt<1>}
    input c_in: UInt<1>
    wire x: {a: UInt, b: UInt}
    wire y: {a: UInt, b: UInt}
    wire c: UInt<1>
    wire w: {a: UInt, b: UInt}
    connect c, c_in
    connect x, x_in
    connect y, y_in
    connect w.a, mux(c, y.a, x.a)
    connect w.b, mux(c, y.b, x.b)
