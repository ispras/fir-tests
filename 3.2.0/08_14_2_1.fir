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
;       8.14.2 Force and Release
;         8.14.2.1 Initial Force and Initial Release
FIRRTL version 3.2.0
circuit ForceAndRelease:
    module AddRefs:
    output a : RWProbe<UInt<2>>
    output b : RWProbe<UInt<2>>
    output c : RWProbe<UInt<2>>
    output sum : UInt<3>
    node x = UInt<2>(0)
    node y = UInt<2>(0)
    node z = UInt<2>(0)
    connect sum, add(x, add(y, z))
    define a = rwprobe(x)
    define b = rwprobe(y)
    define c = rwprobe(z)
  module ForceAndRelease:
    output o : UInt<3>

    inst r of AddRefs
    connect o, r.sum

    force_initial(r.a, UInt<2>(0))
    force_initial(r.a, UInt<2>(1))
    force_initial(r.b, UInt<2>(2))
    force_initial(r.c, UInt<2>(3))
    release_initial(r.c)
