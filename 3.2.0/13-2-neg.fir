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
;   13 Combinational Loops
;     Example 2
;       Negative test
FIRRTL version 3.2.0
circuit MyTop:
  module Foo2 :
    input a: UInt<1>[3]
    input n1: UInt<2>
    input n2: UInt<2>
    wire tmp: UInt<1>
    wire vec: UInt<1>[3]
    connect vec, a
    connect tmp, vec[n1]
    connect vec[n2], tmp
  module MyTop:
