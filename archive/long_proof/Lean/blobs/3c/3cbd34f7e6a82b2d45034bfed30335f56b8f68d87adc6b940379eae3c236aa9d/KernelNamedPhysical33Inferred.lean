import Lean

/- Insert only the physical proof at its exact inferred type. Original-domain parity is separate. -/
open Lean Elab Command
run_elab do
  let env ← Lean.importModules #[
    { module := `DirectPhysicalInline },
    { module := `CoreTableBridge },
    { module := `CoreDataEqualitiesSplit },
    { module := `SegmentedArithmetic33Named }]
    {} (trustLevel := 0) (loadExts := false)
  setEnv (env.setMainModule `KernelNamedPhysical33Inferred)
  let pending := mkConst `Seed0024PhaseCore20261007.SegmentedArithmetic33Named.pending
  let tags := mkConst `Seed0024PhaseCore20261007.SegmentedArithmetic33Named.tags
  let checked := mkConst `Seed0024PhaseCore20261007.SegmentedArithmetic33Named.checked_direct
  let value := mkAppN
    (mkConst `Seed0024DirectPhysical20261007.accepted_pending_physical) #[
      mkConst `Seed0024ClusterTubeTable20261007.compactSupplierTable,
      mkConst `Seed0024ClusterTubeTable20261007.compactSupplierTable_needed_accuracy,
      mkConst `Seed0024PhaseCoreBridge20261007.tableEntry_eq,
      mkConst `Seed0024PhaseCoreBridge20261007.centreEntry_eq,
      pending, tags, checked]
  let inferredType ← Lean.Meta.inferType value
  withOptions (fun opts => opts.setBool `debug.skipKernelTC false) do
    Lean.addDecl (.thmDecl {
      name := `Seed0024KernelCompact20261008.namedPhysical33_inferred,
      levelParams := [], type := inferredType, value := value })
#print axioms Seed0024KernelCompact20261008.namedPhysical33_inferred
#print Seed0024KernelCompact20261008.namedPhysical33_inferred
