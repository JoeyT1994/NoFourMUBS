import FourierKernelJoinExport

set_option autoImplicit false
set_option maxRecDepth 10000

open Lean FourierKernelJoinPilot20261003 FourierKernelJoinExport20261003

namespace FourierKernelJoinControls20261003

/-- Resource failures, missing declarations and other unrelated errors do not
count as rejection controls. Require a concrete kernel type mismatch. -/
def requireTypeRejection (env : Environment) (name : Name) (type value : Expr) : IO Unit := do
  let decl := Declaration.thmDecl { name, levelParams := [], type, value }
  match env.addDeclCore 2000000 10000 decl none (doCheck := true) with
  | .error (.declTypeMismatch ..) => mark s!"NEGATIVE_DECL_TYPE_MISMATCH {name}"
  | .error (.appTypeMismatch ..) => mark s!"NEGATIVE_APP_TYPE_MISMATCH {name}"
  | .error _ => throw <| IO.userError s!"unrelated kernel error does not count: {name}"
  | .ok _ => throw <| IO.userError s!"invalid declaration was accepted: {name}"

def main : IO Unit := do
  let env ← importModules #[{ module := `FourierAllCriticalKernel }]
    {} (trustLevel := 0) (loadExts := false) (level := .private)
  unless env.header.trustLevel == 0 do
    throw <| IO.userError "unexpected trust level"
  let env ← checked env `FourierKernelJoinControls20261003.positive
    expectedTarget (mkConst theoremName)
  mark "EXPORTED_THEOREM_POSITIVE_CONTROL_ACCEPTED"
  requireTypeRejection env `FourierKernelJoinControls20261003.badFalse
    (mkConst `False) expectedProof
  requireTypeRejection env `FourierKernelJoinControls20261003.badCover expectedTarget
    (mkApp (mkConst `FourierCriticalPilot20261003.allCritical_fourier_exclusion_of_cover)
      (mkConst `True.intro))
  let .forallE h ty (.forallE _ _ tail _) bi := expectedTarget
    | throw <| IO.userError "unexpected physical target structure"
  -- Dropping AllCritical would assert exclusion of the entire Fourier family.
  let weakened := Expr.forallE h ty (tail.instantiate1 (mkConst `True.intro)) bi
  requireTypeRejection env `FourierKernelJoinControls20261003.badWholeFamily
    weakened expectedProof
  mark "ALL_STRICT_KERNEL_CONTROLS_COMPLETE"

#eval main

end FourierKernelJoinControls20261003
