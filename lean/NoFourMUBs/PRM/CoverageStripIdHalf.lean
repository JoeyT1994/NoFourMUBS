import NoFourMUBs.PRM.CoverageStripIdQF

/-!
# Critical strip identities (I4): the formal half data over `QF`

`halfQ` builds the eighteen symbols of `fData` from `QF` inputs, with the inverse denominators
`1/L_j` as inputs; `halfQ_val` evaluates it.
-/

set_option linter.unusedSimpArgs false

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripId

open NoFourMUBs.Kronecker StripMoments

variable {n m : ℕ} {C : Ctx n m}

/-- `fData` over `QF C`, with `iL_j = 1/L_j`. -/
def halfQ (s S t T r R X Y Z iL0 iL1 iL2 z : QF C) : HalfQ C :=
  let la := (r * s ^ 2 + R * t ^ 2 + (3 - Z) * s * t) * iL0
  let lb := (t * S ^ 2 + r ^ 2 * T + (3 - Y) * r * S) * iL1
  let lc := (s * T ^ 2 + R ^ 2 * S + (3 - X) * R * T) * iL2
  let ba := (R * S ^ 2 + r * T ^ 2 + (3 - Z) * S * T) * iL0
  let bb := (T * s ^ 2 + R ^ 2 * t + (3 - Y) * R * s) * iL1
  let bc := (S * t ^ 2 + r ^ 2 * s + (3 - X) * r * t) * iL2
  ⟨s, S, t, T, r, R, la * bb, la * bc, lc * bb, lb * ba, lc * ba, lb * bc, la * z, ba * z, bb * z,
    bc * z, lb * z, lc * z⟩

variable {ρ : Fin n → ℂ} {ζ : ℂ}

theorem halfQ_val (h : QF.Good C ρ ζ) (s S t T r R X Y Z iL0 iL1 iL2 z : QF C) {L0 L1 L2 : ℂ}
    (h0 : iL0.val ρ ζ = L0⁻¹) (h1 : iL1.val ρ ζ = L1⁻¹) (h2 : iL2.val ρ ζ = L2⁻¹) :
    (halfQ s S t T r R X Y Z iL0 iL1 iL2 z).val ρ ζ =
      fData (s.val ρ ζ) (S.val ρ ζ) (t.val ρ ζ) (T.val ρ ζ) (r.val ρ ζ) (R.val ρ ζ) (X.val ρ ζ)
        (Y.val ρ ζ) (Z.val ρ ζ) L0 L1 L2 (z.val ρ ζ) := by
  simp only [halfQ, HalfQ.val, fData, QF.val_mul h, QF.val_add h, QF.val_sub h, QF.val_pow h,
    QF.val_three, h0, h1, h2, div_eq_mul_inv]

end NoFourMUBs.PRM.Coverage.StripId
