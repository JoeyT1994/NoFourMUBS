import FourierKernelJoinControls

set_option autoImplicit false
set_option maxRecDepth 10000

open Lean FourierKernelJoinPilot20261003 FourierKernelJoinExport20261003
open FourierKernelJoinControls20261003

namespace CriticalAllocatedJoinExport20261003

abbrev Binder := Name × Expr × BinderInfo

def peel : Expr → List Binder × Expr
  | .forallE n ty body bi =>
      let (bs, result) := peel body
      ((n, ty, bi) :: bs, result)
  | result => ([], result)

def classificationName : Name := `CriticalGeometricStrip20261003.allCritical_allocated_fourier
def endpointName : Name := `CriticalAllocatedExclusionKernel20261003.allCritical_allocated_excluded
def outputModule : Name := `CriticalAllocatedExclusionKernel

/-- Preserve every binder of the already admitted geometric-to-Fourier
theorem. Replace only its final Fourier membership by the literal quartet
nonoccurrence target checked in the Fourier packet. The kernel independently
checks the resulting lambda/application term. -/
def targetAndProof (classificationType : Expr) (fakeAllocation := false) : IO (Expr × Expr) := do
  let (bs, conclusion) := peel classificationType
  unless bs.map (·.1) == [`H, `hH, `c, `z, `hz0, `hz3, `hz2, `hj, `ha] do
    throw <| IO.userError "changed allocated classification telescope"
  unless conclusion == mkApp (mkConst `CriticalFourierRouting20261003.FourierOrTranspose) (.bvar 8) do
    throw <| IO.userError "changed classification conclusion"
  let args := (List.range 9).map (fun i => Expr.bvar (8-i)) |>.toArray
  let args := if fakeAllocation then args.set! 8 (mkConst `True.intro) else args
  let hf := mkAppN (mkConst classificationName) args
  let valueBody := mkApp3 (mkConst theoremName) (.bvar 8) (.bvar 7) hf
  let (fbs, physicalBody) := peel expectedTarget
  unless fbs.length == 3 do
    throw <| IO.userError "changed literal physical target"
  let targetBody := physicalBody.instantiateRev #[.bvar 8, .bvar 7, hf]
  let target := bs.foldr (fun b out => Expr.forallE b.1 b.2.1 out b.2.2) targetBody
  let value := bs.foldr (fun b out => Expr.lam b.1 b.2.1 out b.2.2) valueBody
  unless !target.hasMVar && !target.hasFVar && !target.hasLooseBVars &&
      !value.hasMVar && !value.hasFVar && !value.hasLooseBVars do
    throw <| IO.userError "nonclosed composed syntax"
  return (target, value)

def dropNamed (wanted : Name) : Expr → Expr
  | .forallE n ty body bi =>
      if n == wanted then body.instantiate1 (mkConst `True.intro)
      else .forallE n ty (dropNamed wanted body) bi
  | result => result

def controls (env : Environment) (classificationType target proof : Expr) : IO Unit := do
  requireTypeRejection env `CriticalAllocatedExclusionKernel20261003.badFalse
    (mkConst `False) proof
  let (_, fakeProof) ← targetAndProof classificationType true
  requireTypeRejection env `CriticalAllocatedExclusionKernel20261003.badAllocationArgument
    target fakeProof
  requireTypeRejection env `CriticalAllocatedExclusionKernel20261003.badWithoutAllocation
    (dropNamed `ha target) proof
  requireTypeRejection env `CriticalAllocatedExclusionKernel20261003.badWithoutMinusTwo
    (dropNamed `hz2 target) proof

def main : IO Unit := do
  mark "ALLOCATED_IMPORT_BEGIN loadExts=false trustLevel=0 level=private"
  let env ← importModules
    #[{ module := `FourierAllCriticalKernel }, { module := `CriticalAllocatedFourierCandidate }]
    {} (trustLevel := 0) (loadExts := false) (level := .private)
  unless env.header.trustLevel == 0 do
    throw <| IO.userError "unexpected trust level"
  mark s!"ALLOCATED_IMPORT_DONE modules={env.header.modules.size}"
  let some (.thmInfo ci) := env.toKernelEnv.find? classificationName
    | throw <| IO.userError "missing admitted allocation theorem"
  unless ci.levelParams.isEmpty do
    throw <| IO.userError "unexpected universe parameters"
  let (target, proof) ← targetAndProof ci.type
  let env ← checked (env.setMainModule outputModule) endpointName target proof
  mark "ALLOCATED_PHYSICAL_EXCLUSION_KERNEL_ACCEPTED"
  controls env ci.type target proof
  let (closure, axioms) ← auditClosure env endpointName
  mark s!"ALLOCATED_FULL_KERNEL_AXIOMS {axioms}; reachable={closure.size}"
  let some lp ← IO.getEnv "LEAN_PATH" | throw <| IO.userError "missing guarded LEAN_PATH"
  let folder : System.FilePath := (lp.splitOn ":").head!
  IO.FS.writeFile (folder / "classification-type.expr.txt") (reprStr ci.type)
  IO.FS.writeFile (folder / "kernel-target.expr.txt") (reprStr target)
  IO.FS.writeFile (folder / "kernel-proof.expr.txt") (reprStr proof)
  IO.FS.writeFile (folder / "kernel-imports.names.txt")
    (String.intercalate "\n" (env.header.moduleNames.toList.map toString) ++ "\n")
  IO.FS.writeFile (folder / "kernel-axioms.names.txt")
    (String.intercalate "\n" (axioms.toList.map toString) ++ "\n")
  IO.FS.writeFile (folder / "kernel-closure.names.txt")
    (String.intercalate "\n" (closure.toList.map toString) ++ "\n")
  writeModule env (folder / "CriticalAllocatedExclusionKernel.olean") (writeIR := false)
  mark "ALLOCATED_KERNEL_MODULE_EXPORTED"

#eval main

end CriticalAllocatedJoinExport20261003
