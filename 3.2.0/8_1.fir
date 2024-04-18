FIRRTL version 3.2.0
circuit MyTop:
  module MyModule :
    input myinput: UInt<1>
    output myoutput: UInt<1>
    connect myoutput, myinput
  module MyTop :
