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
;       7.3.2 Input Probe References
;         7.3.2.1 U-Turn Example
FIRRTL version 3.2.0
circuit RefBouncing :
  module UTurn:
    input in : Probe<UInt>
    output out : Probe<UInt>
    define out = in
  module RefBouncing:
    input x: UInt
    output y: UInt
    inst u1 of UTurn
    inst u2 of UTurn
    node n = x
    define u1.in = probe(n)
    define u2.in = u1.out
    connect y, read(u2.out) ; = x
