import NoFourMUBs.PRM.CoverageStripIdHalf

/-!
# Critical strip identities (I4): staged half data

To keep the kernel checks small, a half is verified in stages against reduced data: the six `λ`'s
(`lamS`), the twelve products (`fldS`), and then the moments of `halfOf … fld` (the half with the
reduced products).  `halfOf_val`: if the data agree in value with the formulas, `halfOf` has the same
values as `halfQ`.
-/

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripId

open NoFourMUBs.Kronecker StripMoments

variable {n m : ℕ} {C : Ctx n m}

/-- The six `λ`'s of `halfQ`: `λ₀, λ₁, λ₂, λ̄₀, λ̄₁, λ̄₂`. -/
def lamS (s S t T r R X Y Z iL0 iL1 iL2 : QF C) (i : ℕ) : QF C :=
  match i with
  | 0 => (r * s ^ 2 + R * t ^ 2 + (3 - Z) * s * t) * iL0
  | 1 => (t * S ^ 2 + r ^ 2 * T + (3 - Y) * r * S) * iL1
  | 2 => (s * T ^ 2 + R ^ 2 * S + (3 - X) * R * T) * iL2
  | 3 => (R * S ^ 2 + r * T ^ 2 + (3 - Z) * S * T) * iL0
  | 4 => (T * s ^ 2 + R ^ 2 * t + (3 - Y) * R * s) * iL1
  | _ => (S * t ^ 2 + r ^ 2 * s + (3 - X) * r * t) * iL2

/-- The twelve products `u, v, w, U, V, W, π, Π, uΠ, vΠ, π/u, π/v` of `halfQ`. -/
def fldS (lam : ℕ → QF C) (z : QF C) (i : ℕ) : QF C :=
  match i with
  | 0 => lam 0 * lam 4
  | 1 => lam 0 * lam 5
  | 2 => lam 2 * lam 4
  | 3 => lam 1 * lam 3
  | 4 => lam 2 * lam 3
  | 5 => lam 1 * lam 5
  | 6 => lam 0 * z
  | 7 => lam 3 * z
  | 8 => lam 4 * z
  | 9 => lam 5 * z
  | 10 => lam 1 * z
  | _ => lam 2 * z

/-- A half with given products. -/
def halfOf (s S t T r R : QF C) (fld : ℕ → QF C) : HalfQ C :=
  ⟨s, S, t, T, r, R, fld 0, fld 1, fld 2, fld 3, fld 4, fld 5, fld 6, fld 7, fld 8, fld 9, fld 10, fld 11⟩

theorem halfQ_eq_halfOf (s S t T r R X Y Z iL0 iL1 iL2 z : QF C) :
    halfQ s S t T r R X Y Z iL0 iL1 iL2 z =
      halfOf s S t T r R (fldS (lamS s S t T r R X Y Z iL0 iL1 iL2) z) := rfl

variable {ρ : Fin n → ℂ} {ζ : ℂ}

theorem halfOf_val (h : QF.Good C ρ ζ) (s S t T r R X Y Z iL0 iL1 iL2 z : QF C) (lam fld : ℕ → QF C)
    (hl : ∀ i, i < 6 → (lam i).val ρ ζ = (lamS s S t T r R X Y Z iL0 iL1 iL2 i).val ρ ζ)
    (hf : ∀ i, i < 12 → (fld i).val ρ ζ = (fldS lam z i).val ρ ζ) :
    (halfOf s S t T r R fld).val ρ ζ = (halfQ s S t T r R X Y Z iL0 iL1 iL2 z).val ρ ζ := by
  rw [halfQ_eq_halfOf]
  have e : ∀ i, i < 12 → (fld i).val ρ ζ =
      (fldS (lamS s S t T r R X Y Z iL0 iL1 iL2) z i).val ρ ζ := by
    intro i hi
    rw [hf i hi]
    have l := fun j (hj : j < 6) => hl j hj
    interval_cases i <;> simp only [fldS, QF.val_mul h, l 0 (by norm_num), l 1 (by norm_num),
      l 2 (by norm_num), l 3 (by norm_num), l 4 (by norm_num), l 5 (by norm_num)]
  simp only [halfOf, HalfQ.val, e 0 (by norm_num), e 1 (by norm_num), e 2 (by norm_num),
    e 3 (by norm_num), e 4 (by norm_num), e 5 (by norm_num), e 6 (by norm_num), e 7 (by norm_num),
    e 8 (by norm_num), e 9 (by norm_num), e 10 (by norm_num), e 11 (by norm_num)]

end NoFourMUBs.PRM.Coverage.StripId
