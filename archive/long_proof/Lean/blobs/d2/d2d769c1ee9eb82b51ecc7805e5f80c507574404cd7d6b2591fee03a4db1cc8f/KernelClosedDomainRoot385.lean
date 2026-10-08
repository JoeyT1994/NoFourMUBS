import Lean
/-! Exact bridge to the pre-existing named physical phase domain.
Kernel definitional equality checks the full six-column tolerance formula. -/
open Lean Elab Command
run_elab do
  let env ← Lean.importModules #[
    { module := `KernelPhysicalRoot385 },
    { module := `ApproximatePhaseFrontend },
    { module := `PhaseForest }]
    {} (trustLevel := 0) (loadExts := false)
  setEnv (env.setMainModule `KernelClosedDomainRoot385)
  let turns := mkConst `Seed0024ClusterTubeCover20261007.Turns
  let labels := mkApp (mkConst `Fin) (mkNatLit 48)
  let ray := mkApp (mkConst `Seed0024ClusterTube20261007.turnRay) (mkBVar 0)
  let labelBody := mkAppN (mkConst `Seed0024ClusterTube20261007.centreProjectorLabel)
    #[mkBVar 1, ray]
  let labelMem := mkLambda `k .default labels (mkLambda `theta .default turns labelBody)
  let s := mkApp (mkConst `Seed0024PhaseCore20261007.ordinalCellCode) (mkNatLit 2241383)
  let cell := mkApp (mkConst `Seed0024PhaseCoreBridge20261007.toPhaseCell) s
  let type := mkAppN (mkConst `Seed0024ClusterTubeCover20261007.CoveredCell) #[
    mkNatLit 48, mkConst `Seed0024ClusterTube20261007.ClosedPhaseDomain, labelMem, cell]
  withOptions (fun opts => opts.setBool `debug.skipKernelTC false) do
    Lean.addDecl (.thmDecl {
      name := `Seed0024KernelPhysical20261007.root2241383_closedDomain
      levelParams := []
      type := type
      value := mkConst `Seed0024KernelPhysical20261007.root2241383_covered })
#print axioms Seed0024KernelPhysical20261007.root2241383_closedDomain
#print Seed0024KernelPhysical20261007.root2241383_closedDomain
