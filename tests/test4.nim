import std/sugar
import closureconcepts

proc show(c: SomeClosure) =
  echo c.rawProc().repr()
  echo c.rawEnv().repr()

var
  x: (void {.closure.} -> (void {.nimcall.} -> void))
  y = (proc {.nimcall.} = discard)

x = proc(): (void {.nimcall.} -> void) {.closure.} = (proc {.nimcall.} = discard)
show(x)

static: doAssert not compiles(show(y))
