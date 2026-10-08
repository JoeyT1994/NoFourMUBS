import FourierKernelJoinExport

set_option autoImplicit false
set_option maxRecDepth 10000

open Lean FourierKernelJoinPilot20261003 FourierKernelJoinExport20261003

namespace FourierKernelJoinReload20261003

def main : IO Unit := do
  mark "KERNEL_RELOAD_BEGIN loadExts=false trustLevel=0 level=private"
  let env ← importModules #[{ module := `FourierAllCriticalKernel }]
    {} (trustLevel := 0) (loadExts := false) (level := .private)
  unless env.header.trustLevel == 0 do
    throw <| IO.userError "unexpected kernel trust level"
  for m in #[`FourierCompleteEndpoint, `FourierCriticalPilotBinding, `FourierAllCriticalKernel] do
    unless env.header.moduleNames.contains m do
      throw <| IO.userError s!"missing original import: {m}"
  mark s!"KERNEL_RELOAD_DONE modules={env.header.modules.size}"
  let some (.thmInfo ci) := env.toKernelEnv.find? theoremName
    | throw <| IO.userError "exported endpoint is not a theorem declaration"
  unless ci.levelParams.isEmpty && ci.type == expectedTarget && ci.value == expectedProof do
    throw <| IO.userError "exported theorem differs from the exact target or proof"
  let some idx := env.getModuleIdxFor? theoremName
    | throw <| IO.userError "endpoint has no producer module"
  unless env.header.moduleNames[idx.toNat]! == moduleName do
    throw <| IO.userError "wrong exported producer module"
  let env ← checked env `FourierKernelJoinReload20261003.rechecked
    expectedTarget ci.value
  mark "EXPORTED_THEOREM_BODY_RECHECKED_AGAINST_LITERAL_PHYSICAL_TARGET"
  mustReject env `FourierKernelJoinReload20261003.badFalse
    (mkConst `False) ci.value
  let (closure, axioms) ← auditClosure env theoremName
  mark s!"EXPORTED_FULL_KERNEL_AXIOMS {axioms}; reachable={closure.size}"
  let some leanPath ← IO.getEnv "LEAN_PATH"
    | throw <| IO.userError "missing guarded LEAN_PATH"
  let folder : System.FilePath := (leanPath.splitOn ":").head!
  IO.FS.writeFile (folder / "kernel-target.expr.txt") (reprStr ci.type)
  IO.FS.writeFile (folder / "kernel-proof.expr.txt") (reprStr ci.value)
  IO.FS.writeFile (folder / "kernel-imports.names.txt")
    (String.intercalate "\n" (env.header.moduleNames.toList.map toString) ++ "\n")
  IO.FS.writeFile (folder / "kernel-axioms.names.txt")
    (String.intercalate "\n" (axioms.toList.map toString) ++ "\n")
  let mut rows : Array String := #[]
  for n in closure do
    let some idx := env.getModuleIdxFor? n
      | throw <| IO.userError s!"imported closure declaration without module: {n}"
    rows := rows.push s!"{n}\t{env.header.moduleNames[idx.toNat]!}"
  IO.FS.writeFile (folder / "kernel-closure-modules.tsv")
    (String.intercalate "\n" rows.toList ++ "\n")
  mark "EXPORTED_KERNEL_MODULE_RELOAD_COMPLETE"

#eval main

end FourierKernelJoinReload20261003
