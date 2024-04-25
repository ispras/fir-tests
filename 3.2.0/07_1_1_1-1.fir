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
;     7.1 Ground Types
;       7.1.1 Integer Types
;         7.1.1.1 Zero Bit Width Integers
;           Example 1
FIRRTL version 3.2.0
circuit MyTop :
  module MyModule :
    wire zero_u : UInt<0>
    invalidate zero_u
    wire zero_s : SInt<0>
    invalidate zero_s

    wire one_u : UInt<1>
    connect one_u, zero_u
    wire one_s : SInt<1>
    connect one_s, zero_s
  module MyTop :
