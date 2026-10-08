import Lean

/- Eta-expanded exact centre equality: introduce target Label and Fin5 binders first. -/
open Lean Elab Command
run_elab do
  let env ← Lean.importModules #[
    { module := `DirectPhysicalInline },
    { module := `CoreDataEqualitiesSplit }]
    {} (trustLevel := 0) (loadExts := false)
  setEnv (env.setMainModule `KernelActualCentresEta)
  let labelType := mkConst `Seed0024PhaseCore20261007.Label
  let coordinateType := mkApp (mkConst `Fin) (mkNatLit 5)
  let body := mkAppN (mkConst `Seed0024PhaseCoreBridge20261007.centreEntry_eq)
    #[mkBVar 1, mkBVar 0]
  let value := mkLambda `label .default labelType
    (mkLambda `i .default coordinateType body)
  withOptions (fun opts => opts.setBool `debug.skipKernelTC false) do
    Lean.addDecl (.thmDecl {
      name := `Seed0024ActualCentres20261008.centresRepresent_eta,
      levelParams := [],
      type := mkConst `Seed0024PhaseCoreBridge20261007.CentresRepresent,
      value := value })
#print axioms Seed0024ActualCentres20261008.centresRepresent_eta
#print Seed0024ActualCentres20261008.centresRepresent_eta
