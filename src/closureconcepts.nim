type
  SomeClosure* = concept x
    system.rawProc(x) is pointer
    system.rawEnv(x) is pointer

  ClosureIterator*  = concept x
    x is SomeClosure
    system.finished(x) is bool
    (x is iterator)

  ClosureProcedure* = concept x
    x is SomeClosure
    x isnot ClosureIterator # i.e. not compiles(system.finished(x))
    (x is proc)

#It works because the standard implentations of `rawProc`, `rawEnv` and `finished` would raise a compile-time error if an argument doesn't fit the requirements.