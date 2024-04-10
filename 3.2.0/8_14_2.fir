FIRRTL version 3.2.0
circuit AddRefs:
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
