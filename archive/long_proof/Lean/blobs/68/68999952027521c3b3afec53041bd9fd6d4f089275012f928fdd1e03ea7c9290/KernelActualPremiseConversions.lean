import Lean

/- Only the three actual-data premise conversions; no tape or physical consumer application. -/
open Lean Elab Command
run_elab do
  let checkpoint (s : String) : TermElabM Unit := do
    liftM (m := IO) (n := TermElabM) do
      let stream ← IO.getStdout
      stream.putStrLn s
      stream.flush
  checkpoint "PREMISES0 before physical-base import"
  let env ← Lean.importModules #[
    { module := `DirectPhysicalInline },
    { module := `CoreTableBridge },
    { module := `CoreDataEqualitiesSplit }]
    {} (trustLevel := 0) (loadExts := false)
  setEnv (env.setMainModule `KernelActualPremiseConversions)
  checkpoint "PREMISES1 imported: no arithmetic certificate modules"
  let table := mkConst `Seed0024ClusterTubeTable20261007.compactSupplierTable
  for (name, type, value) in #[
      (`Seed0024ActualPremises20261008.neededSound,
       mkApp (mkConst `Seed0024ClusterTube20261007.SupplierNeededTableSound) table,
       mkConst `Seed0024ClusterTubeTable20261007.compactSupplierTable_needed_accuracy),
      (`Seed0024ActualPremises20261008.tableRepresents,
       mkApp (mkConst `Seed0024PhaseCoreBridge20261007.TableRepresents) table,
       mkConst `Seed0024PhaseCoreBridge20261007.tableEntry_eq),
      (`Seed0024ActualPremises20261008.centresRepresent,
       mkConst `Seed0024PhaseCoreBridge20261007.CentresRepresent,
       mkConst `Seed0024PhaseCoreBridge20261007.centreEntry_eq)] do
    checkpoint s!"PREMISES before kernel conversion {name}"
    withOptions (fun opts => opts.setBool `debug.skipKernelTC false) do
      Lean.addDecl (.thmDecl {
        name := name, levelParams := [], type := type, value := value })
    checkpoint s!"PREMISES after kernel conversion {name}"
#print axioms Seed0024ActualPremises20261008.neededSound
#print axioms Seed0024ActualPremises20261008.tableRepresents
#print axioms Seed0024ActualPremises20261008.centresRepresent
