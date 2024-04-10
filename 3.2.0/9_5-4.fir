FIRRTL version 3.2.0
circuit MyModule:
  module MyModule :
    input a: { `0` : { `0` : { b : UInt<1> } } }
    output b: UInt<1>
    connect b, a.`0`.`0`.b
