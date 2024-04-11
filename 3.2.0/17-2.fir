FIRRTL version 3.2.0
circuit Top : @[myfile.txt 14:8]
  module Top : @[myfile.txt 15:2]
    output out: UInt @[myfile.txt 16:3]
    input b: UInt<32> @[myfile.txt 17:3]
    input c: UInt<1> @[myfile.txt 18:3]
    input d: UInt<16> @[myfile.txt 19:3]
    wire a: UInt @[myfile.txt 21:8]
    when c : @[myfile.txt 24:8]
      connect a, b @[myfile.txt 27:16]
    else :
      connect a, d @[myfile.txt 29:17]
    connect out, add(a,a) @[myfile.txt 34:4]
