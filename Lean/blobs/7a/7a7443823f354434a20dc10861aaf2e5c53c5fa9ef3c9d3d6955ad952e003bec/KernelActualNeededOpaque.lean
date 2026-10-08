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
  checkpoint "ACTUAL0 before import KernelActualNeededOpaque"
  let env ← Lean.importModules #[
    { module := `KernelSymbolicTableBridges },
    { module := `CompactSparseTable }]
    {} (trustLevel := 0) (loadExts := false)
  checkpoint "ACTUAL1 import returned KernelActualNeededOpaque"
  setEnv (env.setMainModule `KernelActualNeededOpaque)
  let table := mkConst `Seed0024ClusterTubeTable20261007.compactSupplierTable
  let type := mkApp (mkConst `Seed0024ClusterTube20261007.SupplierNeededTableSound) table
  let value := mkAppN (mkConst `Seed0024SymbolicTables20261008.neededSound_of_pointwise) #[
    table, mkConst `Seed0024ClusterTubeTable20261007.compactSupplierTable_needed_accuracy]
  checkpoint "ACTUAL2 before inferType KernelActualNeededOpaque"
  let inferred ← Lean.Meta.inferType value
  unless inferred == type do
    throwError "Expected syntactically identical named-predicate result type"
  checkpoint "ACTUAL3 inferType returned exact named predicate KernelActualNeededOpaque"
  checkpoint "ACTUAL4 before addDecl KernelActualNeededOpaque"
  withOptions (fun opts => opts.setBool `debug.skipKernelTC false) do
    Lean.addDecl (.thmDecl {
      name := `Seed0024OpaqueActualTables20261008.neededSound, levelParams := [], type := type, value := value })
  checkpoint "ACTUAL5 addDecl returned; kernel completion may be deferred KernelActualNeededOpaque"
#print axioms Seed0024OpaqueActualTables20261008.neededSound
#print Seed0024OpaqueActualTables20261008.neededSound
