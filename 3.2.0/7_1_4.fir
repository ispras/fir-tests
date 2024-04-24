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
;       7.1.4 Analog Type
FIRRTL version 3.2.0
circuit MyTop :
  module MyModule :
    wire x1: Analog<1>
    wire x2: Analog<1>
    wire x3: Analog<1>
    wire y: Analog<32>
    wire z: Analog
    attach(z, y)
    ; binary attach
    attach(x1, x2, x3)
    ; attach all three signals
  module MyTop :
