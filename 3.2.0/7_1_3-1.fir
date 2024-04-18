FIRRTL version 3.2.0
circuit MyTop :
  module MyModule :
    input asyncReset : AsyncReset
    output reset : Reset
    reset <= asyncReset
  module MyTop :
