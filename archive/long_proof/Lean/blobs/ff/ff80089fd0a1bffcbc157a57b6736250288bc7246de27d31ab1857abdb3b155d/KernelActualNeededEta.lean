import Lean

/- One exact needed-entry accuracy alias. Introduce k and its original 120-divisibility
proof before applying the checked pointwise theorem. No phase forest or consumer. -/
open Lean Elab Command
run_elab do
  let env ← Lean.importModules #[
    { module := `ScopedSupplierLeafEntries },
    { module := `CompactSparseTable }]
    {} (trustLevel := 0) (loadExts := false)
  setEnv (env.setMainModule `KernelActualNeededEta)
  let sourceName := `Seed0024ClusterTubeTable20261007.compactSupplierTable_needed_accuracy
  let sourceInfo ← getConstInfo sourceName
  let value ← match sourceInfo.type with
    | .forallE k kType (.forallE hk hkType _ hkBinder) kBinder =>
      pure (mkLambda k kBinder kType (mkLambda hk hkBinder hkType
        (mkAppN (mkConst sourceName) #[mkBVar 1, mkBVar 0])))
    | _ => throwError "Expected the original k and 120-divisibility binders"
  let table := mkConst `Seed0024ClusterTubeTable20261007.compactSupplierTable
  withOptions (fun opts => opts.setBool `debug.skipKernelTC false) do
    Lean.addDecl (.thmDecl {
      name := `Seed0024ActualNeeded20261008.neededSound_eta,
      levelParams := [],
      type := mkApp (mkConst `Seed0024ClusterTube20261007.SupplierNeededTableSound) table,
      value := value })
#print axioms Seed0024ActualNeeded20261008.neededSound_eta
#print Seed0024ActualNeeded20261008.neededSound_eta
