import std/unittest
import closureconcepts

type
  A = proc(s: seq[seq[string]]; k: int) {.closure.}
  B = proc(s: seq[seq[string]]; k: int) {.nimcall.}

var
  x: A
  y: B

check:
  A isNot B
  B isNot A
  x isNot B
  y isNot A
  A is (proc)
  x is (proc)
  A is SomeClosure
  x is SomeClosure
  A is ClosureProcedure
  x is ClosureProcedure
  A isNot ClosureIterator
  x isNot ClosureIterator
  B is (proc)
  y is (proc)
  B isNot SomeClosure
  y isNot SomeClosure
  B isNot ClosureProcedure
  y isNot ClosureProcedure
