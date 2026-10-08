import Lean

/- One exact table representation alias. Introduce the Fin218880 index before
applying the checked pointwise equality. No phase forest or consumer. -/
open Lean Elab Command
run_elab do
  let env ← Lean.importModules #[
    { module := `CoreScalarBridge },
    { module := `CoreTableBridge }]
    {} (trustLevel := 0) (loadExts := false)
  setEnv (env.setMainModule `KernelActualTableEta)
  let indexType := mkApp (mkConst `Fin) (mkNatLit 218880)
  let value := mkLambda `k .default indexType
    (mkApp (mkConst `Seed0024PhaseCoreBridge20261007.tableEntry_eq) (mkBVar 0))
  let table := mkConst `Seed0024ClusterTubeTable20261007.compactSupplierTable
  withOptions (fun opts => opts.setBool `debug.skipKernelTC false) do
    Lean.addDecl (.thmDecl {
      name := `Seed0024ActualTable20261008.tableRepresents_eta,
      levelParams := [],
      type := mkApp (mkConst `Seed0024PhaseCoreBridge20261007.TableRepresents) table,
      value := value })
#print axioms Seed0024ActualTable20261008.tableRepresents_eta
#print Seed0024ActualTable20261008.tableRepresents_eta
