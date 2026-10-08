import Lean

set_option autoImplicit false
set_option maxRecDepth 10000

open Lean

namespace FourierKernelJoinPilot20261003

def mark (s : String) : IO Unit := do
  let err ← IO.getStderr
  err.putStrLn s
  err.flush

/-- Walk the actual kernel declarations, without relying on cached extension
data. Missing constants and nonstandard axioms are fatal to this diagnostic. -/
def auditClosure (env : Environment) (root : Name) : IO (Array Name × Array Name) := do
  let mut pending := #[root]
  let mut seen : Std.HashSet Name := {}
  let mut reached : Array Name := #[]
  let mut axioms : Array Name := #[]
  while !pending.isEmpty do
    let n := pending.back!
    pending := pending.pop
    if seen.contains n then continue
    seen := seen.insert n
    reached := reached.push n
    let some ci := env.toKernelEnv.find? n
      | throw <| IO.userError s!"missing kernel dependency: {n}"
    pending := pending ++ ci.type.getUsedConstants
    match ci with
    | .axiomInfo _ => axioms := axioms.push n
    | .defnInfo v => pending := pending ++ v.value.getUsedConstants
    | .thmInfo v => pending := pending ++ v.value.getUsedConstants
    | .opaqueInfo v => pending := pending ++ v.value.getUsedConstants
    | .inductInfo v => pending := pending ++ v.ctors.toArray
    | _ => pure ()
  let axioms := axioms.qsort Name.lt
  let allowed : Array Name := #[`propext, `Classical.choice, `Quot.sound]
  unless axioms.all (allowed.contains ·) do
    throw <| IO.userError s!"nonstandard axioms: {axioms}"
  return (reached.qsort Name.lt, axioms)

def checked (env : Environment) (name : Name) (type value : Expr) : IO Environment := do
  let decl := Declaration.thmDecl { name, levelParams := [], type, value }
  match env.addDeclCore 2000000 10000 decl none (doCheck := true) with
  | .ok next => return next
  | .error _ => throw <| IO.userError s!"kernel rejected {name}"

def mustReject (env : Environment) (name : Name) (type value : Expr) : IO Unit := do
  let decl := Declaration.thmDecl { name, levelParams := [], type, value }
  match env.addDeclCore 2000000 10000 decl none (doCheck := true) with
  | .ok _ => throw <| IO.userError s!"negative control unexpectedly accepted: {name}"
  | .error _ => mark s!"KERNEL_REJECTED_NEGATIVE_CONTROL {name}"

def main : IO Unit := do
  mark "KERNEL_IMPORT_BEGIN loadExts=false trustLevel=0 level=private"
  let env ← importModules
    #[{ module := `FourierCompleteEndpoint }, { module := `FourierCriticalPilotBinding }]
    {} (trustLevel := 0) (loadExts := false) (level := .private)
  unless env.header.trustLevel == 0 do
    throw <| IO.userError "unexpected kernel trust level"
  mark s!"KERNEL_IMPORT_DONE modules={env.header.modules.size}"
  let conditional := `FourierCriticalPilot20261003.allCritical_fourier_exclusion_of_cover
  let cover := mkConst `FourierCompleteEndpoint20261003.complete_cover
  let some ci := env.toKernelEnv.find? conditional
    | throw <| IO.userError "missing conditional endpoint"
  unless ci.levelParams.isEmpty do
    throw <| IO.userError "unexpected universe parameters"
  let .forallE _ coverType body _ := ci.type
    | throw <| IO.userError "expected first cover argument"
  unless coverType == mkConst `FourierEndpoint20261003.CoverObligation do
    throw <| IO.userError "wrong cover proposition"
  let target := body.instantiate1 cover
  let proof := mkApp (mkConst conditional) cover
  unless !target.hasMVar && !target.hasFVar && !target.hasLooseBVars do
    throw <| IO.userError "target is not closed"
  let name := `FourierKernelJoinPilot20261003.allCritical_fourier_excluded
  let env ← checked env name target proof
  mark "KERNEL_THEOREM_ACCEPTED"
  mustReject env `FourierKernelJoinPilot20261003.badFalse (mkConst `False) proof
  mustReject env `FourierKernelJoinPilot20261003.badCover target
    (mkApp (mkConst conditional) (mkConst `True.intro))
  let (closure, axioms) ← auditClosure env name
  mark s!"FULL_KERNEL_AXIOMS {axioms}; reachable={closure.size}"
  let folder : System.FilePath := __dir__
  IO.FS.writeFile (folder / "kernel-target.expr.txt") (reprStr target)
  IO.FS.writeFile (folder / "kernel-proof.expr.txt") (reprStr proof)
  IO.FS.writeFile (folder / "kernel-closure.names.txt")
    (String.intercalate "\n" (closure.toList.map toString) ++ "\n")
  IO.FS.writeFile (folder / "kernel-imports.names.txt")
    (String.intercalate "\n" (env.header.moduleNames.toList.map toString) ++ "\n")
  IO.FS.writeFile (folder / "kernel-axioms.names.txt")
    (String.intercalate "\n" (axioms.toList.map toString) ++ "\n")
  mark "KERNEL_PILOT_COMPLETE_NO_EXPORT_CLAIM"

#eval main

end FourierKernelJoinPilot20261003
