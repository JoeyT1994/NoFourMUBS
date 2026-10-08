import Lean

/- Convert the already checked physical fact to the original named domain; no Boolean acceptance application remains. -/
open Lean Elab Command
run_elab do
  let env ← Lean.importModules #[
    { module := `KernelNamedPhysical33Inferred },
    { module := `ApproximatePhaseFrontend },
    { module := `PhaseForest }]
    {} (trustLevel := 0) (loadExts := false)
  setEnv (env.setMainModule `KernelNamedPhysical33Closed)
  let pending := mkConst `Seed0024PhaseCore20261007.SegmentedArithmetic33Named.pending
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
      name := `Seed0024KernelCompact20261008.namedPhysical33_closedDomain,
      levelParams := [], type := physicalType,
      value := mkConst `Seed0024KernelCompact20261008.namedPhysical33_inferred })
#print axioms Seed0024KernelCompact20261008.namedPhysical33_closedDomain
#print Seed0024KernelCompact20261008.namedPhysical33_closedDomain
