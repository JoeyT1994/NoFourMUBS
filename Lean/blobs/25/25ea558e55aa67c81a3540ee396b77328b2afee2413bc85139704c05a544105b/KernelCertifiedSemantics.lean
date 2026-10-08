import Lean

/-! Actual-data specialization of the checked generic semantics.
Only tactic-extension loading is disabled. New theorem type checking remains
mandatory at trust level zero with debug.skipKernelTC explicitly false. -/
open Lean Elab Command
run_elab do
  let env ← Lean.importModules #[
    { module := `DirectPhysicalInline },
    { module := `CoreTableBridge },
    { module := `CoreDataEqualitiesSplit }]
    {} (trustLevel := 0) (loadExts := false)
  setEnv (env.setMainModule `KernelCertifiedSemantics)
  let original := `Seed0024DirectPhysical20261007.accepted_pending_physical
  let some info := env.find? original | throwError "Missing checked generic semantics"
  let args := #[
    mkConst `Seed0024ClusterTubeTable20261007.compactSupplierTable,
    mkConst `Seed0024ClusterTubeTable20261007.compactSupplierTable_needed_accuracy,
    mkConst `Seed0024PhaseCoreBridge20261007.tableEntry_eq,
    mkConst `Seed0024PhaseCoreBridge20261007.centreEntry_eq]
  let mut type := info.type
  for arg in args do
    unless type.isForall do throwError "Unexpected checked theorem signature"
    type := type.bindingBody!.instantiate1 arg
  withOptions (fun opts => opts.setBool `debug.skipKernelTC false) do
    Lean.addDecl (.thmDecl {
      name := `Seed0024KernelPhysical20261007.certified_pending_physical
      levelParams := []
      type := type
      value := mkAppN (mkConst original) args })

#print axioms Seed0024KernelPhysical20261007.certified_pending_physical
#print Seed0024KernelPhysical20261007.certified_pending_physical
