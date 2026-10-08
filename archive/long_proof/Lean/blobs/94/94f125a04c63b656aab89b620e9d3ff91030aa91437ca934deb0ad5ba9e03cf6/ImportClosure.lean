import Lean

/-- Operational provenance only; no mathematical theorem is declared here. -/
def main (args : List String) : IO Unit := do
  let sysroot :: roots := args
    | throw <| IO.userError "usage: ImportClosure TOOLCHAIN_ROOT MODULE..."
  if roots.isEmpty then
    throw <| IO.userError "at least one root module is required"
  Lean.initSearchPath (System.FilePath.mk sysroot)
  let imports : Array Lean.Import := roots.toArray.map fun s => { module := s.toName }
  let env ← Lean.importModules imports {}
  for name in env.header.moduleNames do
    let path ← Lean.findOLean name
    IO.println <| (Lean.Json.mkObj [
      ("module", Lean.toJson name.toString),
      ("olean", Lean.toJson path.toString)]).compress
