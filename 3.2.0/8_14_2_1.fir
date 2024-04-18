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
    output o : UInt<3>

    inst r of AddRefs
    connect o, r.sum

    force_initial(r.a, UInt<2>(0))
    force_initial(r.a, UInt<2>(1))
    force_initial(r.b, UInt<2>(2))
    force_initial(r.c, UInt<2>(3))
    release_initial(r.c)
