import Root0ActualBounds
import Root0SeedBoxes
import Mathlib.Util.PrintSorries

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
      match env.checked.get.find? c with
      | some (.axiomInfo v) => go v.type
      | some (.defnInfo v) => go v.type *> go v.value
      | some (.thmInfo v) => go v.type *> go v.value
      | some (.opaqueInfo v) => go v.type *> go v.value
      | some (.quotInfo _) => pure ()
      | some (.ctorInfo v) => go v.type
      | some (.recInfo v) => go v.type
      | some (.inductInfo v) => go v.type *> v.ctors.forM collect
      | none => throwError "Missing imported custom declaration {c}"

def roots : Array Name := #[
  ``ShoulderRoot0Actual20261003.globalMax_root0_bounds,
  ``ShoulderRoot0Actual20261003.normalized_root0_seed_boxes,
  ``ShoulderRoot0Actual20261003.globalMax_root0_corner_caps]

elab "audit_root0_dependencies" : command => do
  let result ← liftTermElabM do
    let (_, s) ← (roots.forM collect).run {}
    return Json.mkObj [
      ("roots", toJson (roots.map Name.toString)),
      ("custom_declarations", toJson s.custom),
      ("standard_modules_not_traversed", toJson (s.standard.toArray.map Name.toString)),
      ("ownerless_constants", toJson s.ownerless)]
  logInfo m!"ROOT0_DEPENDENCIES_JSON: {result.compress}"

audit_root0_dependencies

end Root0DependencyAudit
