FIRRTL version 3.2.0
circuit ForceAndRelease:
  module ForceAndRelease:
    input a: UInt<2>
    input clock : Clock
    input cond : UInt<1>
    output o : UInt<3>

    inst r of AddRefs
    connect o, r.sum

    force(clock, cond, r.a, a)
    release(clock, not(cond), r.a)
