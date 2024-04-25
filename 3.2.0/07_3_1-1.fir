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
;     7.3 Reference Types
;       7.3.1 Probe Types
;         Example 1
FIRRTL version 3.2.0
circuit MyTop:
  module MyTop :
  module MyModule :
    input a : Probe<UInt> ; readable reference to unsigned integer with inferred width
    input b : RWProbe<{x: {y: UInt}}> ; readable and forceable reference to bundle
    input c : Probe<UInt, A.B> ; readable reference associated with group A.B
