import Lean

/- Fresh import/export capacity replay of the complete checked dependency closure. -/
open Lean Elab Command
run_elab do
  let env ← Lean.importModules #[{ module := `KernelSegmentedPhysical33 }]
    {} (trustLevel := 0) (loadExts := false)
  setEnv (env.setMainModule `KernelSegmentedPhysical33Replay)
  let sourceName := `Seed0024KernelCompact20261008.segmentedPhysical33_closedDomain
  let info ← getConstInfo sourceName
  withOptions (fun opts => opts.setBool `debug.skipKernelTC false) do
    Lean.addDecl (.thmDecl {
      name := `Seed0024KernelCompact20261008.segmentedPhysical33_closedDomain_replayed,
      levelParams := [], type := info.type, value := mkConst sourceName })
#print axioms Seed0024KernelCompact20261008.segmentedPhysical33_closedDomain_replayed
