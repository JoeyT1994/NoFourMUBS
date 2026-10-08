import Lean
open Lean Elab Command
run_elab do
  let env ← Lean.importModules #[{ module := `KernelPhysicalRoot385 }]
    {} (trustLevel := 0) (loadExts := false)
  setEnv (env.setMainModule `KernelPhysicalRoot385Replay)
  let s := mkApp (mkConst `Seed0024PhaseCore20261007.ordinalCellCode) (mkNatLit 2241383)
  let type := mkApp (mkConst `Seed0024DirectPhysical20261007.coveredCell) s
  Lean.addDecl (.thmDecl {
    name := `Seed0024KernelPhysical20261007.root2241383_replayed
    levelParams := []
    type := type
    value := mkConst `Seed0024KernelPhysical20261007.root2241383_covered })
#print axioms Seed0024KernelPhysical20261007.root2241383_replayed
#print Seed0024KernelPhysical20261007.root2241383_replayed
