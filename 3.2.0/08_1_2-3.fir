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
;     8.1 Connects
;       8.1.2 Last Connect Semantics
;         Example 3
FIRRTL version 3.2.0
circuit MyModule:
  module MyModule :
    input portx: {b: UInt<1>, c: UInt<1>}
    input porty: UInt<1>
    output myport: {b: UInt<1>, c: UInt<1>}
    connect myport.b, porty
    connect myport.c, portx.c
