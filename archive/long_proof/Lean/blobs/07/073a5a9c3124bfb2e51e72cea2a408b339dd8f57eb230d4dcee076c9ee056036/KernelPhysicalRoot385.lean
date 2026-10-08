import Lean

/-! Kernel composition from the same checked constants. Environment extensions
for tactics are not loaded. Every new theorem is passed through Lean.addDecl;
no unchecked declaration API, trust-level increase or oracle is used. -/
open Lean Elab Command

run_elab do
  let env ← Lean.importModules #[
    { module := `DirectPhysicalInline },
    { module := `CoreTableBridge },
    { module := `CoreDataEqualitiesSplit },
    { module := `PureCentre385Compositional }]
    {} (trustLevel := 0) (loadExts := false)
  setEnv (env.setMainModule `KernelPhysicalRoot385)
  let cellType := mkConst `Seed0024PhaseCore20261007.CellCode
  let s := mkApp (mkConst `Seed0024PhaseCore20261007.ordinalCellCode) (mkNatLit 2241383)
  let nilCells := mkApp (mkConst `List.nil [.zero]) cellType
  let pending := mkAppN (mkConst `List.cons [.zero]) #[cellType, s, nilCells]
  let member := mkAppN (mkConst `List.mem_cons_self [.zero]) #[cellType, s, nilCells]
  let value := mkAppN (mkConst `Seed0024DirectPhysical20261007.accepted_pending_physical) #[
    mkConst `Seed0024ClusterTubeTable20261007.compactSupplierTable,
    mkConst `Seed0024ClusterTubeTable20261007.compactSupplierTable_needed_accuracy,
    mkConst `Seed0024PhaseCoreBridge20261007.tableEntry_eq,
    mkConst `Seed0024PhaseCoreBridge20261007.centreEntry_eq,
    pending,
    mkConst `Seed0024PhaseCore20261007.PureCentre385Compositional.tags_000,
    mkConst `Seed0024PhaseCore20261007.PureCentre385Compositional.checked,
    s, member]
  let type := mkApp (mkConst `Seed0024DirectPhysical20261007.coveredCell) s
  Lean.addDecl (.thmDecl {
    name := `Seed0024KernelPhysical20261007.root2241383_covered
    levelParams := []
    type := type
    value := value })

#print axioms Seed0024KernelPhysical20261007.root2241383_covered
#print Seed0024KernelPhysical20261007.root2241383_covered
