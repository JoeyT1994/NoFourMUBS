import FourierKernelJoinPilot

set_option autoImplicit false
set_option maxRecDepth 10000

open Lean FourierKernelJoinPilot20261003

namespace FourierKernelJoinExport20261003

/-- Literal kernel syntax for the original physical target, built independently
of the conditional theorem's type. The only hypotheses are AllCritical H and
FourierOrTranspose H; the matrix is scaled by the reciprocal of sqrt 6. -/
def expectedTarget : Expr :=
  let real := mkConst `Real
  let six := mkApp3 (mkConst `NatCast.natCast [.zero]) real
    (mkConst `Real.instNatCast) (mkNatLit 6)
  let scale := mkApp3 (mkConst `Inv.inv [.zero]) real
    (mkConst `Real.instInv) (mkApp (mkConst `Real.sqrt) six)
  Expr.forallE `H (mkConst `Mub6.Classification.CompactCover.Mat6)
    (Expr.forallE `hH
      (mkApp (mkConst `Mub6.Classification.GlobalCornerDomain.AllCritical) (.bvar 0))
      (Expr.forallE `hf
        (mkApp (mkConst `CriticalFourierRouting20261003.FourierOrTranspose) (.bvar 1))
        (mkApp (mkConst `Not)
          (mkApp (mkConst `Mub6.OccursAsQuartetEdge)
            (mkApp2 (mkConst `Mub6.phaseScale) scale (.bvar 2))))
        .default)
      .default)
    .implicit

def expectedProof : Expr :=
  mkApp (mkConst `FourierCriticalPilot20261003.allCritical_fourier_exclusion_of_cover)
    (mkConst `FourierCompleteEndpoint20261003.complete_cover)

def theoremName : Name := `FourierAllCriticalKernel20261003.allCritical_fourier_excluded
def moduleName : Name := `FourierAllCriticalKernel

def main : IO Unit := do
  mark "KERNEL_EXPORT_IMPORT_BEGIN loadExts=false trustLevel=0 level=private"
  let env ← importModules
    #[{ module := `FourierCompleteEndpoint }, { module := `FourierCriticalPilotBinding }]
    {} (trustLevel := 0) (loadExts := false) (level := .private)
  unless env.header.trustLevel == 0 do
    throw <| IO.userError "unexpected kernel trust level"
  mark s!"KERNEL_EXPORT_IMPORT_DONE modules={env.header.modules.size}"
  let env := env.setMainModule moduleName
  -- This is the ordinary kernel declaration checker, explicitly enabled.
  let env ← checked env theoremName expectedTarget expectedProof
  mark "LITERAL_PHYSICAL_TARGET_KERNEL_ACCEPTED"
  mustReject env `FourierAllCriticalKernel20261003.badFalse
    (mkConst `False) expectedProof
  mustReject env `FourierAllCriticalKernel20261003.badCover expectedTarget
    (mkApp (mkConst `FourierCriticalPilot20261003.allCritical_fourier_exclusion_of_cover)
      (mkConst `True.intro))
  let (closure, axioms) ← auditClosure env theoremName
  mark s!"FULL_KERNEL_AXIOMS {axioms}; reachable={closure.size}"
  let some leanPath ← IO.getEnv "LEAN_PATH"
    | throw <| IO.userError "missing guarded LEAN_PATH"
  let folder : System.FilePath := (leanPath.splitOn ":").head!
  IO.FS.writeFile (folder / "kernel-target.expr.txt") (reprStr expectedTarget)
  IO.FS.writeFile (folder / "kernel-proof.expr.txt") (reprStr expectedProof)
  IO.FS.writeFile (folder / "kernel-closure.names.txt")
    (String.intercalate "\n" (closure.toList.map toString) ++ "\n")
  IO.FS.writeFile (folder / "kernel-imports.names.txt")
    (String.intercalate "\n" (env.header.moduleNames.toList.map toString) ++ "\n")
  IO.FS.writeFile (folder / "kernel-axioms.names.txt")
    (String.intercalate "\n" (axioms.toList.map toString) ++ "\n")
  mark "KERNEL_WRITE_MODULE_BEGIN"
  writeModule env (folder / "FourierAllCriticalKernel.olean") (writeIR := false)
  mark "KERNEL_WRITE_MODULE_COMPLETE"

#eval main

end FourierKernelJoinExport20261003
