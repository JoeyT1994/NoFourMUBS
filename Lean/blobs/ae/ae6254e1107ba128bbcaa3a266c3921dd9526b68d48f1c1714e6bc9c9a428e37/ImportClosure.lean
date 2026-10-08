import Lean

/-- Operational import provenance discovery; this declares no mathematical result.
The explicit system root must be the distribution of the pinned compiler. -/
def main (args : List String) : IO Unit := do
  let sysroot :: roots := args
    | throw <| IO.userError "usage: ImportClosure TOOLCHAIN_ROOT MODULE..."
  if roots.isEmpty then
    throw <| IO.userError "at least one root module is required"
  Lean.initSearchPath (System.FilePath.mk sysroot)
  let imports : Array Lean.Import := roots.toArray.map fun s => { module := s.toName }
  let (_, state) ← (Lean.importModulesCore imports).run
  for name in state.moduleNames do
    let path ← Lean.findOLean name
    IO.println <| (Lean.Json.mkObj [
      ("module", Lean.toJson name.toString),
      ("olean", Lean.toJson path.toString)]).compress
