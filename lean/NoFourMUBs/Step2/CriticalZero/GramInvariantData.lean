import NoFourMUBs.Reuse.Archive.SidePermanent
import NoFourMUBs.Step2.CriticalZero.MomentData

/-! Missing invariant definitions extracted verbatim from the archive.
The existing Gram and moment definitions are imported, never redeclared.
See audit/CRITICAL_MOMENT_BINDING_REUSE_REVIEW.json. -/

namespace FourierGramNumerators
noncomputable section

def chi (s t r : ℂ) : ℝ :=
  (q s t r 0 - 8) * (q s t r 1 - 8) * (q s t r 2 - 8) +
    2 * (sigma s t r - 16)^2 + (12 - sigma s t r) * g s t r

end
end FourierGramNumerators

namespace FourierRadicalGuards

def radicand (g chi eta : ℝ) : ℝ := 4 * g ^ 2 * eta - chi ^ 2

end FourierRadicalGuards
