FIRRTL version 3.2.0
circuit MyTop:
  module MyModule :
    input myinput: UInt
    output myoutput: UInt
    connect myoutput, myinput
  module MyTop :
