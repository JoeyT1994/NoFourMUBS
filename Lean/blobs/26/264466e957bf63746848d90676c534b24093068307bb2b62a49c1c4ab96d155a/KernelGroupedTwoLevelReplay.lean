import Lean

/- Fresh import of the exported aggregate and all its transitive dependencies.
This is a capacity replay, not an additional set of covered ordinals. -/
open Lean Elab Command

run_elab do
  let env ← Lean.importModules #[{ module := `KernelGroupedTwoLevelAssembly }]
    {} (trustLevel := 0) (loadExts := false)
  setEnv (env.setMainModule `KernelGroupedTwoLevelReplay)
  for (sourceName, replayName) in #[
      (`Seed0024KernelCompact20261008.groupedTwoLevel33_checked,
       `Seed0024KernelCompact20261008.groupedTwoLevel33_arithmetic_replayed),
      (`Seed0024KernelCompact20261008.groupedTwoLevel33_closedDomain,
       `Seed0024KernelCompact20261008.groupedTwoLevel33_physical_replayed)] do
    let info ← getConstInfo sourceName
    withOptions (fun opts => opts.setBool `debug.skipKernelTC false) do
      Lean.addDecl (.thmDecl {
        name := replayName, levelParams := [], type := info.type, value := mkConst sourceName })

#print axioms Seed0024KernelCompact20261008.groupedTwoLevel33_arithmetic_replayed
#print axioms Seed0024KernelCompact20261008.groupedTwoLevel33_physical_replayed
