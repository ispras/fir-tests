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
    input a: UInt<2>
    input clock : Clock
    input cond : UInt<1>
    output o : UInt<3>

    inst r of AddRefs
    connect o, r.sum

    force(clock, cond, r.a, a)
    release(clock, not(cond), r.a)
