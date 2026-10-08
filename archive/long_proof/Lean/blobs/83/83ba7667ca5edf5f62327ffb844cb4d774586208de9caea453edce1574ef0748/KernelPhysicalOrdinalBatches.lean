import Lean

/-! Consume actual finite ordinal batches, with every table and tape premise
discharged, in the original named physical phase domain. -/
open Lean Elab Command

run_elab do
  let env ← Lean.importModules #[
    { module := `DirectPhysicalInline },
    { module := `CoreTableBridge },
    { module := `CoreDataEqualitiesSplit },
    { module := `ApproximatePhaseFrontend },
    { module := `PhaseForest },
    { module := `PureOrdinalBatch0000064Count0004 },
    { module := `PureOrdinalBatch0000068Count0032 }]
    {} (trustLevel := 0) (loadExts := false)
  setEnv (env.setMainModule `KernelPhysicalOrdinalBatches)
  let cellType := mkConst `Seed0024PhaseCore20261007.CellCode
  let turns := mkConst `Seed0024ClusterTubeCover20261007.Turns
  let labels := mkApp (mkConst `Fin) (mkNatLit 48)
  let ray := mkApp (mkConst `Seed0024ClusterTube20261007.turnRay) (mkBVar 0)
  let labelBody := mkAppN (mkConst `Seed0024ClusterTube20261007.centreProjectorLabel)
    #[mkBVar 1, ray]
  let labelMem := mkLambda `k .default labels (mkLambda `theta .default turns labelBody)
  for (ns, name) in #[
      (`Seed0024PhaseCore20261007.PureOrdinalBatch0000064Count0004,
       `Seed0024KernelPhysical20261007.ordinals64_68_closedDomain),
      (`Seed0024PhaseCore20261007.PureOrdinalBatch0000068Count0032,
       `Seed0024KernelPhysical20261007.ordinals68_100_closedDomain)] do
    let pending := mkConst (ns ++ `pending)
    let value := mkAppN (mkConst `Seed0024DirectPhysical20261007.accepted_pending_physical) #[
      mkConst `Seed0024ClusterTubeTable20261007.compactSupplierTable,
      mkConst `Seed0024ClusterTubeTable20261007.compactSupplierTable_needed_accuracy,
      mkConst `Seed0024PhaseCoreBridge20261007.tableEntry_eq,
      mkConst `Seed0024PhaseCoreBridge20261007.centreEntry_eq,
      pending, mkConst (ns ++ `tags), mkConst (ns ++ `checked)]
    let mem := mkAppN (mkConst `List.Mem [.zero]) #[cellType, mkBVar 0, pending]
    let cell := mkApp (mkConst `Seed0024PhaseCoreBridge20261007.toPhaseCell) (mkBVar 1)
    let covered := mkAppN (mkConst `Seed0024ClusterTubeCover20261007.CoveredCell) #[
      mkNatLit 48, mkConst `Seed0024ClusterTube20261007.ClosedPhaseDomain, labelMem, cell]
    let type := mkForall `s .default cellType (mkForall `hmem .default mem covered)
    withOptions (fun opts => opts.setBool `debug.skipKernelTC false) do
      Lean.addDecl (.thmDecl { name := name, levelParams := [], type := type, value := value })

#print axioms Seed0024KernelPhysical20261007.ordinals64_68_closedDomain
#print axioms Seed0024KernelPhysical20261007.ordinals68_100_closedDomain
#print Seed0024KernelPhysical20261007.ordinals64_68_closedDomain
#print Seed0024KernelPhysical20261007.ordinals68_100_closedDomain
