import Lean

/-! Freshly import the compact arithmetic object, extract its actual let-bound
pending cells and witness tape, and discharge every actual-data premise of the
existing physical consumer. The kernel checks the old named physical domain. -/
open Lean Elab Command

run_elab do
  let env ← Lean.importModules #[
    { module := `DirectPhysicalInline },
    { module := `CoreTableBridge },
    { module := `CoreDataEqualitiesSplit },
    { module := `ApproximatePhaseFrontend },
    { module := `PhaseForest },
    { module := `CompactOrdinalBatch68Count32 }]
    {} (trustLevel := 0) (loadExts := false)
  setEnv (env.setMainModule `KernelCompactOrdinalBatch68)
  let proofName := `Seed0024PhaseCore20261007.CompactOrdinalBatch68Count32.checked_and_erased
  let info ← getConstInfo proofName
  let .letE _ _ pending rest _ := info.type
    | throwError "compact theorem must bind the pending ordinal cells"
  let .letE _ _ tags rest _ := rest.instantiate1 pending
    | throwError "compact theorem must bind the exact witness tags"
  let proposition := rest.instantiate1 tags
  unless proposition.isAppOfArity `And 2 do
    throwError "compact theorem must preserve both acceptance and raw erasure"
  let conjuncts := proposition.getAppArgs
  let checked := mkAppN (mkConst `And.left) #[
    conjuncts[0]!, conjuncts[1]!, mkConst proofName]
  let value := mkAppN (mkConst `Seed0024DirectPhysical20261007.accepted_pending_physical) #[
    mkConst `Seed0024ClusterTubeTable20261007.compactSupplierTable,
    mkConst `Seed0024ClusterTubeTable20261007.compactSupplierTable_needed_accuracy,
    mkConst `Seed0024PhaseCoreBridge20261007.tableEntry_eq,
    mkConst `Seed0024PhaseCoreBridge20261007.centreEntry_eq,
    pending, tags, checked]
  let cellType := mkConst `Seed0024PhaseCore20261007.CellCode
  let turns := mkConst `Seed0024ClusterTubeCover20261007.Turns
  let labels := mkApp (mkConst `Fin) (mkNatLit 48)
  let ray := mkApp (mkConst `Seed0024ClusterTube20261007.turnRay) (mkBVar 0)
  let labelBody := mkAppN (mkConst `Seed0024ClusterTube20261007.centreProjectorLabel)
    #[mkBVar 1, ray]
  let labelMem := mkLambda `k .default labels (mkLambda `theta .default turns labelBody)
  let mem := mkAppN (mkConst `List.Mem [.zero]) #[cellType, mkBVar 0, pending]
  let cell := mkApp (mkConst `Seed0024PhaseCoreBridge20261007.toPhaseCell) (mkBVar 1)
  let covered := mkAppN (mkConst `Seed0024ClusterTubeCover20261007.CoveredCell) #[
    mkNatLit 48, mkConst `Seed0024ClusterTube20261007.ClosedPhaseDomain, labelMem, cell]
  let type := mkForall `s .default cellType (mkForall `hmem .default mem covered)
  withOptions (fun opts => opts.setBool `debug.skipKernelTC false) do
    Lean.addDecl (.thmDecl {
      name := `Seed0024KernelCompact20261008.arithmetic32_replayed
      levelParams := [], type := info.type, value := mkConst proofName })
    Lean.addDecl (.thmDecl {
      name := `Seed0024KernelCompact20261008.ordinals68_100_closedDomain
      levelParams := [], type := type, value := value })

#print axioms Seed0024KernelCompact20261008.arithmetic32_replayed
#print axioms Seed0024KernelCompact20261008.ordinals68_100_closedDomain
#print Seed0024KernelCompact20261008.ordinals68_100_closedDomain
