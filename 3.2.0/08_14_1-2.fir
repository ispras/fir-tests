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
;     8.14 Probes
;       8.14.1 Define
;         Example 2
FIRRTL version 3.2.0
circuit Foo:
  module Foo:
    input x : UInt
    output y : {x: UInt, p: Probe<UInt>}
    output z : Probe<UInt>[2]

    wire w : UInt
    connect w, x
    connect y.x, w

    define y.p = probe(w)

    define z[0] = probe(w)
    define z[1] = probe(w)
