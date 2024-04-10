FIRRTL version 3.2.0
circuit ForceAndRelease:
  module ForceAndRelease:
    output o : UInt<3>

    inst r of AddRefs
    connect o, r.sum

    force_initial(r.a, UInt<2>(0))
    force_initial(r.a, UInt<2>(1))
    force_initial(r.b, UInt<2>(2))
    force_initial(r.c, UInt<2>(3))
    release_initial(r.c)
