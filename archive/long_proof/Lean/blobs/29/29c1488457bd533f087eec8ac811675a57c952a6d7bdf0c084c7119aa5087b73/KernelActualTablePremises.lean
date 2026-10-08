import Lean

/- Two actual table facts only. The prior failed combined file receives no admission. -/
open Lean Elab Command
run_elab do
  let env ← Lean.importModules #[
    { module := `DirectPhysicalInline },
    { module := `CoreTableBridge }]
    {} (trustLevel := 0) (loadExts := false)
  setEnv (env.setMainModule `KernelActualTablePremises)
  let table := mkConst `Seed0024ClusterTubeTable20261007.compactSupplierTable
  for (name, type, value) in #[
      (`Seed0024ActualTablePremises20261008.neededSound,
       mkApp (mkConst `Seed0024ClusterTube20261007.SupplierNeededTableSound) table,
       mkConst `Seed0024ClusterTubeTable20261007.compactSupplierTable_needed_accuracy),
      (`Seed0024ActualTablePremises20261008.tableRepresents,
       mkApp (mkConst `Seed0024PhaseCoreBridge20261007.TableRepresents) table,
       mkConst `Seed0024PhaseCoreBridge20261007.tableEntry_eq)] do
    withOptions (fun opts => opts.setBool `debug.skipKernelTC false) do
      Lean.addDecl (.thmDecl {
        name := name, levelParams := [], type := type, value := value })
#print axioms Seed0024ActualTablePremises20261008.neededSound
#print axioms Seed0024ActualTablePremises20261008.tableRepresents
