import KernelAtlas.Assembly
import KernelAtlas.Bins
import KernelAtlas.BoundaryK
import KernelAtlas.Clique
import KernelAtlas.CliqueB
import KernelAtlas.E0K
import KernelAtlas.Edges
import KernelAtlas.FrameK
import KernelAtlas.Joint2
import KernelAtlas.Joint2K
import KernelAtlas.Joint2S
import KernelAtlas.Labels
import KernelAtlas.NormalK
import KernelAtlas.Pack
import KernelAtlas.SigmaK
import KernelAtlas.StageCK
import KernelAtlas.StageCK2B
import KernelAtlas.Tables
import KernelAtlas.Tangent
import KernelAtlas.Tangent2
import KernelAtlas.Tangent2K
import KernelAtlas.Tangent2L
import KernelAtlas.Tangent2S
import KernelAtlas.Trig
import KernelAtlas.TrigK

/-! Rebase check (`docs/KERNEL_ASSEMBLY.md` §9).  The atlas Records and chunks were compiled against the library
of the full run.  Their modules import only `KernelAtlas` core modules (all imported here except `ExactK`, which only
`Special.Exact` uses), so every library constant they can reach is in the reference closure of the core's constants.
Writes `FP_OUT`: for every constant of a `NoFourMUBs`, `Hadamard6` or `KernelAtlas` module, its name, module and the
structural hashes of its type and value; and `FP_CLOSURE`: the names in the reference closure of the `KernelAtlas`
constants (outside Lean, Std, Batteries, Mathlib).  The Records' oleans stay valid under another library version if
every closure name has the same fingerprint there. -/

open Lean in
#eval show CoreM Unit from do
  let env ← getEnv
  let mods := env.header.moduleNames
  let ours (n : Name) : Option Name := do
    let i ← env.getModuleIdxFor? n
    let m := mods[i.toNat]!
    let r := m.getRoot
    if r == `NoFourMUBs || r == `Hadamard6 || r == `KernelAtlas then some m else none
  let mut out : Array String := #[]
  let mut todo : Array Name := #[]
  for (n, ci) in env.constants.map₁.toList do
    let some m := ours n | continue
    let v := match ci.value? (allowOpaque := true) with
      | some e => toString e.hash
      | none => "-"
    out := out.push s!"{n} {m} {ci.type.hash} {v}"
    if m.getRoot == `KernelAtlas then todo := todo.push n
  let sorted := out.qsort (· < ·)
  IO.FS.writeFile (System.FilePath.mk (← IO.getEnv "FP_OUT").get!) (String.intercalate "\n" sorted.toList ++ "\n")
  let mut seen : NameSet := {}
  while !todo.isEmpty do
    let n := todo.back!
    todo := todo.pop
    if seen.contains n then continue
    seen := seen.insert n
    let some ci := env.find? n | continue
    for c in ci.getUsedConstantsAsSet.toList do
      if (ours c).isSome && !seen.contains c then todo := todo.push c
  let cl := (seen.toList.map toString).toArray.qsort (· < ·)
  IO.FS.writeFile (System.FilePath.mk (← IO.getEnv "FP_CLOSURE").get!) (String.intercalate "\n" cl.toList ++ "\n")
  IO.println s!"FP {sorted.size} constants, closure {cl.size}"
