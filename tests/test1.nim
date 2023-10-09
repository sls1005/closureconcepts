import std/unittest
import closureconcepts

var
  p1 = proc() {.nimcall.} = discard
  p2: proc() {.closure.}
  i1: iterator() {.closure.}
  v1 = 1

check:
  p1 isNot SomeClosure
  p1 isNot ClosureProcedure
  p1 isNot ClosureIterator
  p2 is SomeClosure
  p2 is ClosureProcedure
  p2 isNot ClosureIterator
  i1 is SomeClosure
  i1 isNot ClosureProcedure
  i1 is ClosureIterator
  v1 isNot SomeClosure
  v1 isNot ClosureProcedure
  v1 isNot ClosureIterator
  
