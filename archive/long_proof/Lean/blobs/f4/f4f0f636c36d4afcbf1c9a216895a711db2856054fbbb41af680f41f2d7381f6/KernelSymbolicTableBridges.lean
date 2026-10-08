import Lean

/- Generic conversion only: the table remains a free variable throughout.
The imported source closure contains no CompactSparseTable or CoreTableBridge.
Checkpoints after addDecl mean insertion returned; whole-job success is required. -/
open Lean Elab Command
run_elab do
  let checkpoint (s : String) : TermElabM Unit := do
    liftM (m := IO) (n := TermElabM) do
      let stream ← IO.getStdout
      stream.putStrLn s
      stream.flush
  checkpoint "SYMBOLIC0 before generic-only import"
  let env ← Lean.importModules #[{ module := `CoreScalarBridge }]
    {} (trustLevel := 0) (loadExts := false)
  checkpoint "SYMBOLIC1 import returned"
  setEnv (env.setMainModule `KernelSymbolicTableBridges)
  for (predicate, name) in #[
      (`Seed0024ClusterTube20261007.SupplierNeededTableSound,
       `Seed0024SymbolicTables20261008.neededSound_of_pointwise),
      (`Seed0024PhaseCoreBridge20261007.TableRepresents,
       `Seed0024SymbolicTables20261008.tableRepresents_of_pointwise)] do
    let info ← getConstInfo predicate
    let .forallE _ tableType _ _ := info.type
      | throwError "Expected exactly the predicate's table parameter"
    let (type, value) ← Lean.Meta.withLocalDeclD `table tableType fun table => do
      let target := mkApp (mkConst predicate) table
      let pointwise ← Lean.Meta.withTransparency .all (Lean.Meta.whnf target)
      unless pointwise.isForall do
        throwError "Expected the symbolic pointwise proposition"
      Lean.Meta.withLocalDeclD `h pointwise fun h => do
        let type ← Lean.Meta.mkForallFVars #[table, h] target
        let value ← Lean.Meta.mkLambdaFVars #[table, h] h
        pure (type, value)
    checkpoint s!"SYMBOLIC2 before inferType {name}"
    let _ ← Lean.Meta.inferType value
    checkpoint s!"SYMBOLIC3 inferType returned {name}"
    checkpoint s!"SYMBOLIC4 before addDecl {name}"
    withOptions (fun opts => opts.setBool `debug.skipKernelTC false) do
      Lean.addDecl (.thmDecl {
        name := name, levelParams := [], type := type, value := value })
    checkpoint s!"SYMBOLIC5 addDecl returned; kernel completion may be deferred {name}"
#print axioms Seed0024SymbolicTables20261008.neededSound_of_pointwise
#print axioms Seed0024SymbolicTables20261008.tableRepresents_of_pointwise
#print Seed0024SymbolicTables20261008.neededSound_of_pointwise
#print Seed0024SymbolicTables20261008.tableRepresents_of_pointwise
