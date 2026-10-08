import Lean

/- Physical specialization consumes an already checked opaque arithmetic fact. -/
open Lean Elab Command
run_elab do
  let env ← Lean.importModules #[
    { module := `DirectPhysicalInline },
    { module := `CoreTableBridge },
    { module := `CoreDataEqualitiesSplit },
    { module := `ApproximatePhaseFrontend },
    { module := `PhaseForest },
    { module := `SegmentedArithmetic33 }]
    {} (trustLevel := 0) (loadExts := false)
  setEnv (env.setMainModule `KernelSegmentedPhysical33)
  let arithmeticName := `Seed0024PhaseCore20261007.SegmentedArithmetic33.checked
  let info ← getConstInfo arithmeticName
  let .letE _ _ pending rest _ := info.type
    | throwError "arithmetic theorem must bind exact pending list"
  let .letE _ _ tags rest _ := rest.instantiate1 pending
    | throwError "arithmetic theorem must bind exact witness tape"
  let proposition := rest.instantiate1 tags
  unless proposition.isAppOfArity `Eq 3 do
    throwError "arithmetic theorem must be an equality"
  let args := proposition.getAppArgs
  unless args[1]!.isAppOfArity `Seed0024PhaseCore20261007.checkWitnessTape 2 do
    throwError "arithmetic theorem must use the unchanged checker"
  let physicalValue := mkAppN
    (mkConst `Seed0024DirectPhysical20261007.accepted_pending_physical) #[
      mkConst `Seed0024ClusterTubeTable20261007.compactSupplierTable,
      mkConst `Seed0024ClusterTubeTable20261007.compactSupplierTable_needed_accuracy,
      mkConst `Seed0024PhaseCoreBridge20261007.tableEntry_eq,
      mkConst `Seed0024PhaseCoreBridge20261007.centreEntry_eq,
      pending, tags, mkConst arithmeticName]
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
  let physicalType := mkForall `s .default cellType (mkForall `hmem .default mem covered)
  withOptions (fun opts => opts.setBool `debug.skipKernelTC false) do
    Lean.addDecl (.thmDecl {
      name := `Seed0024KernelCompact20261008.segmentedPhysical33_closedDomain,
      levelParams := [], type := physicalType, value := physicalValue })

#print axioms Seed0024KernelCompact20261008.segmentedPhysical33_closedDomain
#print Seed0024KernelCompact20261008.segmentedPhysical33_closedDomain
