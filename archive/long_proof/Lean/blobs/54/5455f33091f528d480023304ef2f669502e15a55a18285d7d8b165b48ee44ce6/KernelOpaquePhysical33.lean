import Lean

/- The exact 33-root physical gate, using only the already checked opaque data
premises. No raw pointwise table/centre conversion is repeated here. This file
claims DirectPhysical.coveredCell only; the old named-domain conversion is later. -/
open Lean Elab Command
run_elab do
  let checkpoint (s : String) : TermElabM Unit := do
    liftM (m := IO) (n := TermElabM) do
      let stream ← IO.getStdout
      stream.putStrLn s
      stream.flush
  checkpoint "PHYSICAL0 before opaque-premise and exact-certificate imports"
  let env ← Lean.importModules #[
    { module := `DirectPhysicalInline },
    { module := `KernelActualNeededOpaque },
    { module := `KernelActualTableOpaque },
    { module := `KernelActualCentresEta },
    { module := `SegmentedArithmetic33Named }]
    {} (trustLevel := 0) (loadExts := false)
  checkpoint "PHYSICAL1 import returned"
  setEnv (env.setMainModule `KernelOpaquePhysical33)
  let original := `Seed0024DirectPhysical20261007.accepted_pending_physical
  let args := #[
    mkConst `Seed0024ClusterTubeTable20261007.compactSupplierTable,
    mkConst `Seed0024OpaqueActualTables20261008.neededSound,
    mkConst `Seed0024OpaqueActualTables20261008.tableRepresents,
    mkConst `Seed0024ActualCentres20261008.centresRepresent_eta,
    mkConst `Seed0024PhaseCore20261007.SegmentedArithmetic33Named.pending,
    mkConst `Seed0024PhaseCore20261007.SegmentedArithmetic33Named.tags,
    mkConst `Seed0024PhaseCore20261007.SegmentedArithmetic33Named.checked_direct]
  let value := mkAppN (mkConst original) args
  checkpoint "PHYSICAL2 before inferType of physical application"
  let inferredType ← Lean.Meta.inferType value
  let info ← getConstInfo original
  let mut expectedType := info.type
  for arg in args do
    let .forallE _ _ body _ := expectedType
      | throwError "Unexpected checked physical consumer signature"
    expectedType := body.instantiate1 arg
  unless inferredType == expectedType do
    throwError "Inferred result is not the exact instantiated physical consumer type"
  checkpoint "PHYSICAL3 inferred exact DirectPhysical result type"
  checkpoint "PHYSICAL4 before addDecl"
  withOptions (fun opts => opts.setBool `debug.skipKernelTC false) do
    Lean.addDecl (.thmDecl {
      name := `Seed0024OpaquePhysical20261008.covered33,
      levelParams := [], type := inferredType, value := value })
  checkpoint "PHYSICAL5 addDecl returned; kernel completion may be deferred"
#print axioms Seed0024OpaquePhysical20261008.covered33
#print Seed0024OpaquePhysical20261008.covered33
