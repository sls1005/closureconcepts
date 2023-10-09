# Closure Concepts

Here is an example of how to distinguish between a closure procedure, a closure iterator, and a non-closure in Nim, before compiler version 2.0.0.
It also shows how the `concept` keyword can be used with procedures from a particular module or package.

This is also a library that can be used before Nim 2.0 (and is no longer needed after that version).

### Example

```nim
import closureconcepts

var
  p1 = (proc() {.nimcall.} = discard)
  p2: proc() {.closure.}
  i1: iterator() {.closure.}

assert p1 isNot SomeClosure
assert p2 is ClosureProcedure
assert p2 isNot ClosureIterator
assert i1 is ClosureIterator
assert i1 isNot ClosureProcedure
```

### Note

* Although this is possible to be used with compilers after 2.0.0, doing so is not recommended, and `proc {.closure.}` should be used instead.
