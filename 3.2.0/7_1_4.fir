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
