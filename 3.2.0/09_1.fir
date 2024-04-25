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
;     9.1 Constant Integer Expressions
FIRRTL version 3.2.0
circuit MyModule:
  module MyModule :
    output out1: UInt
    output out2: UInt
    output out3: UInt
    output out4: UInt
    output out5: UInt
    output out6: SInt
    output out7: SInt
    output out8: SInt
    output out9: SInt
    output out10: SInt
    connect out1, UInt<10>(42)
    connect out2, UInt<10>(0b101010)
    connect out3, UInt<10>(0o52)
    connect out4, UInt<10>(0h2A)
    connect out5, UInt<10>(0h2a)
    connect out1, UInt(42)
    connect out2, UInt(0b101010)
    connect out3, UInt(0o52)
    connect out4, UInt(0h2A)
    connect out5, UInt(0h2a)
    connect out6, SInt<10>(-42)
    connect out7, SInt<10>(-0b101010)
    connect out8, SInt<10>(-0o52)
    connect out9, SInt<10>(-0h2A)
    connect out10, SInt<10>(-0h2a)
    connect out6, SInt(-42)
    connect out7, SInt(-0b101010)
    connect out8, SInt(-0o52)
    connect out9, SInt(-0h2A)
    connect out10, SInt(-0h2a)
