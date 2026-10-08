import Lean

/- Actual data is applied only after the symbolic conversion has been checked.
The generic bridge is an opaque theorem constant. No forest or physical consumer. -/
open Lean Elab Command
run_elab do
  let checkpoint (s : String) : TermElabM Unit := do
    liftM (m := IO) (n := TermElabM) do
      let stream ← IO.getStdout
      stream.putStrLn s
      stream.flush
  checkpoint "ACTUAL0 before import KernelActualTableOpaque"
  let env ← Lean.importModules #[
    { module := `KernelSymbolicTableBridges },
    { module := `CoreTableBridge }]
    {} (trustLevel := 0) (loadExts := false)
  checkpoint "ACTUAL1 import returned KernelActualTableOpaque"
  setEnv (env.setMainModule `KernelActualTableOpaque)
  let table := mkConst `Seed0024ClusterTubeTable20261007.compactSupplierTable
  let type := mkApp (mkConst `Seed0024PhaseCoreBridge20261007.TableRepresents) table
  let value := mkAppN (mkConst `Seed0024SymbolicTables20261008.tableRepresents_of_pointwise) #[
    table, mkConst `Seed0024PhaseCoreBridge20261007.tableEntry_eq]
  checkpoint "ACTUAL2 before inferType KernelActualTableOpaque"
  let inferred ← Lean.Meta.inferType value
  unless inferred == type do
    throwError "Expected syntactically identical named-predicate result type"
  checkpoint "ACTUAL3 inferType returned exact named predicate KernelActualTableOpaque"
  checkpoint "ACTUAL4 before addDecl KernelActualTableOpaque"
  withOptions (fun opts => opts.setBool `debug.skipKernelTC false) do
    Lean.addDecl (.thmDecl {
      name := `Seed0024OpaqueActualTables20261008.tableRepresents, levelParams := [], type := type, value := value })
  checkpoint "ACTUAL5 addDecl returned; kernel completion may be deferred KernelActualTableOpaque"
#print axioms Seed0024OpaqueActualTables20261008.tableRepresents
#print Seed0024OpaqueActualTables20261008.tableRepresents
