import NoFourMUBs.Step2.Statements

/-!
# PR-M in Lean: shared definitions

`AllCornersMatched H`: at every positional corner of `H` (every reordering of its rows and columns), the side
signatures of the upper-right and lower-left blocks are conjugate.  Return G (`PRM.md` §5.4) proves this for
the two Fourier families; a strict nonmatched corner therefore excludes them.
-/

open Matrix Hadamard6 ComplexConjugate

namespace NoFourMUBs.PRM

/-- Every positional corner of `H` is matched. -/
def AllCornersMatched (H : Mat6) : Prop :=
  ∀ σ τ : Equiv.Perm I6, Step2.sideSignature (Step2.rightBlock (H.submatrix σ τ)) =
    conj (Step2.sideSignature (Step2.lowerBlock (H.submatrix σ τ)))

/-- **Strict-corner coverage** (MC1, `PRM.md` §7.2): every Hadamard matrix not equivalent to `F6` has a
positional corner whose side signature is not real (by `Side.RS_eq_im_sq`, a corner with `R > 0`). -/
def StrictCornerCoverage : Prop :=
  ∀ H : Mat6, Hadamard6.IsHadamard H → ¬ Equivalent H Step2.fourierHadamard.1 →
    ∃ σ τ : Equiv.Perm I6, (Step2.sideSignature (Step2.rightBlock (H.submatrix σ τ))).im ≠ 0

end NoFourMUBs.PRM
