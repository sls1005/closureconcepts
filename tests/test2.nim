import std/unittest
import closureconcepts

type Foo* = object
  i: int

proc rawProc*(self: Foo): pointer =
  return nil

proc rawEnv*(self: Foo): pointer =
  return nil

var f: Foo

check:
  f is not SomeClosure
  f isNot SomeClosure
  Foo is not SomeClosure
  Foo isNot SomeClosure

