import Lean.Elab.Command
import Mathlib.Lean.Expr.Basic

/- Read-only metadata audit of the actual declaration dependency closure.
   This module supplies no mathematical theorem or new proof premise. -/
open Lean Meta Elab Command

namespace Root0DependencyAudit

structure State where
  seen : NameSet := {}
  custom : Array (String × String) := #[]
  standard : NameSet := {}
  ownerless : Array String := #[]

def isLibrary (n : Name) : Bool :=
  ["Mathlib", "Lean", "Init", "Std", "Batteries", "Qq", "Aesop",
   "ProofWidgets", "ImportGraph", "Plausible", "LeanSearchClient"].any
    (fun root => n.toString == root || n.toString.startsWith (root ++ "."))

partial def collect (c : Name) : StateT State MetaM Unit := do
  unless (← get).seen.contains c do
    modify fun s => { s with seen := s.seen.insert c }
    let env ← getEnv
    let some idx := env.getModuleIdxFor? c
      | modify fun s => { s with ownerless := s.ownerless.push c.toString }
    let modName := env.header.moduleNames[idx]!
    if isLibrary modName then
      modify fun s => { s with standard := s.standard.insert modName }
    else
      modify fun s => { s with custom := s.custom.push (modName.toString, c.toString) }
      let go (e : Expr) : StateT State MetaM Unit := e.getUsedConstants.forM collect
      let data := env.header.moduleData[idx]!
      let some ci := data.constNames.findIdx? (fun n => n == c)
        | throwError "Missing custom declaration in module table {c}"
      match data.constants[ci]! with
      | .axiomInfo v => go v.type
      | .defnInfo v => go v.type *> go v.value
      | .thmInfo v => go v.type *> go v.value
      | .opaqueInfo v => go v.type *> go v.value
      | .quotInfo _ => pure ()
      | .ctorInfo v => go v.type
      | .recInfo v => go v.type
      | .inductInfo v => go v.type *> v.ctors.forM collect

def report (roots : Array Name) : CommandElabM Unit := do
  let result ← liftTermElabM do
    let (_, s) ← (roots.forM collect).run {}
    return Json.mkObj [
      ("roots", toJson (roots.map Name.toString)),
      ("custom_declarations", toJson s.custom),
      ("standard_modules_not_traversed", toJson (s.standard.toArray.map Name.toString)),
      ("ownerless_constants", toJson s.ownerless)]
  logInfo m!"ROOT0_DEPENDENCIES_JSON: {result.compress}"

end Root0DependencyAudit
