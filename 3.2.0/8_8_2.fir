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
;       8.8.2 Match Statements
FIRRTL version 3.2.0
circuit MatchConstruct :
  module MatchConstruct :
    input f: UInt<1>
    input c: UInt<1>
    input x: {|some: UInt<1>, none|}
    output a: UInt<1>
    match x:
      some(v):
        connect a, v
      none:
        connect a, f
