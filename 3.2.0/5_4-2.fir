FIRRTL version 3.2.0
circuit MyTop :
  extmodule MyExternalModuleWithRefs :
    input foo : UInt<2>
    output mysignal : Probe<UInt<1>>
    output myreg : RWProbe<UInt<8>>
    ref mysignal is "a.b"
    ref myreg is "x.y"
  module MyTop:
