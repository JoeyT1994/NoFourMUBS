import Lean

/- Fresh import/export replay retains every transitive checked dependency. -/
open Lean Elab Command
run_elab do
  let env ← Lean.importModules #[{ module := `KernelNamedPhysical33Closed }]
    {} (trustLevel := 0) (loadExts := false)
  setEnv (env.setMainModule `KernelNamedPhysical33Replay)
  let n := `Seed0024KernelCompact20261008.namedPhysical33_closedDomain
  let info ← getConstInfo n
  withOptions (fun opts => opts.setBool `debug.skipKernelTC false) do
    Lean.addDecl (.thmDecl {
      name := `Seed0024KernelCompact20261008.namedPhysical33_closedDomain_replayed,
      levelParams := [], type := info.type, value := mkConst n })
#print axioms Seed0024KernelCompact20261008.namedPhysical33_closedDomain_replayed
