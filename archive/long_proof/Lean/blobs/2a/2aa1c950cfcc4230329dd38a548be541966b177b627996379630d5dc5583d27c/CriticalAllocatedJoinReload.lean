import CriticalAllocatedJoinExport

set_option autoImplicit false
set_option maxRecDepth 10000

open Lean FourierKernelJoinPilot20261003 CriticalAllocatedJoinExport20261003

namespace CriticalAllocatedJoinReload20261003

def main : IO Unit := do
  mark "ALLOCATED_RELOAD_BEGIN loadExts=false trustLevel=0 level=private"
  let env ← importModules #[{ module := `CriticalAllocatedExclusionKernel }]
    {} (trustLevel := 0) (loadExts := false) (level := .private)
  unless env.header.trustLevel == 0 do
    throw <| IO.userError "unexpected trust level"
  for m in #[`FourierAllCriticalKernel, `CriticalAllocatedFourierCandidate,
      `FourierCompleteEndpoint, `FourierCriticalPilotBinding] do
    unless env.header.moduleNames.contains m do
      throw <| IO.userError s!"lost original imported module: {m}"
  mark s!"ALLOCATED_RELOAD_DONE modules={env.header.modules.size}"
  let some (.thmInfo prior) := env.toKernelEnv.find? classificationName
    | throw <| IO.userError "missing original allocation theorem"
  let some (.thmInfo ci) := env.toKernelEnv.find? endpointName
    | throw <| IO.userError "exported endpoint is not a theorem"
  let (target, proof) ← targetAndProof prior.type
  unless ci.levelParams.isEmpty && ci.type == target && ci.value == proof do
    throw <| IO.userError "exported target or body differs"
  let some idx := env.getModuleIdxFor? endpointName
    | throw <| IO.userError "missing exported producer module"
  unless env.header.moduleNames[idx.toNat]! == outputModule do
    throw <| IO.userError "wrong exported producer module"
  let env ← checked env `CriticalAllocatedJoinReload20261003.rechecked target ci.value
  mark "ALLOCATED_EXPORTED_BODY_RECHECKED"
  controls env prior.type target ci.value
  let (closure, axioms) ← auditClosure env endpointName
  mark s!"ALLOCATED_RELOADED_FULL_KERNEL_AXIOMS {axioms}; reachable={closure.size}"
  let some lp ← IO.getEnv "LEAN_PATH" | throw <| IO.userError "missing guarded LEAN_PATH"
  let folder : System.FilePath := (lp.splitOn ":").head!
  IO.FS.writeFile (folder / "classification-type.expr.txt") (reprStr prior.type)
  IO.FS.writeFile (folder / "kernel-target.expr.txt") (reprStr ci.type)
  IO.FS.writeFile (folder / "kernel-proof.expr.txt") (reprStr ci.value)
  IO.FS.writeFile (folder / "kernel-imports.names.txt")
    (String.intercalate "\n" (env.header.moduleNames.toList.map toString) ++ "\n")
  IO.FS.writeFile (folder / "kernel-axioms.names.txt")
    (String.intercalate "\n" (axioms.toList.map toString) ++ "\n")
  let mut rows : Array String := #[]
  for n in closure do
    let some idx := env.getModuleIdxFor? n
      | throw <| IO.userError s!"closure declaration without producer: {n}"
    rows := rows.push s!"{n}\t{env.header.moduleNames[idx.toNat]!}"
  IO.FS.writeFile (folder / "kernel-closure-modules.tsv")
    (String.intercalate "\n" rows.toList ++ "\n")
  mark "ALLOCATED_EXPORTED_MODULE_RELOAD_COMPLETE"

#eval main

end CriticalAllocatedJoinReload20261003
