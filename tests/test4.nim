import std/sugar
import closureconcepts

proc show(c: SomeClosure) =
  echo c.rawProc().repr()
  echo c.rawEnv().repr()

var
  x = proc(): (void -> void) {.closure.} = (proc {.nimcall.} = discard)
  y = (proc {.nimcall.} = discard)

show(x)

static: doAssert not compiles(show(y))
