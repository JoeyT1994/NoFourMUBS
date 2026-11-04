import NoFourMUBs.Horizontal
import NoFourMUBs.Invariance

/-!
# Lemma 4.1: boundary transfer

`PROOF.md` Step 4.  A Record is a centre `P` and radius `R`; its interior is the set of
`exp(i(P + δ))` with `δ` horizontal and `‖δ‖ < R` (Frobenius norm).  A *signed permutation* `A`
permutes rows and columns, optionally transposes, and optionally negates (negation = entrywise
conjugation of the phase matrix).

**Lemma 4.1.** Let `Y = P_s + u + ν` with `‖ν‖ ≤ n`, let `N` be an integer winding, and put
`c = h(A P_s + 2πN − P_t)`.  If `‖c + h(A u)‖ + n < R_t`, then `exp(iY)`, after an operation of
`Γ`, is equivalent to an interior point of the Record `(P_t, R_t)`.

In the atlas `u = T_s η` with `η` in a certified box, and `h(A T_s η) = M η` is the matrix the
certificate bounds (`sup_η ‖c + Mη‖ + n_s < R_t`).
-/

open Matrix Hadamard6

namespace NoFourMUBs

/-! ### Frobenius norm on real 6 × 6 matrices -/

/-- Sum of squares of the entries. -/
noncomputable def sumsq (Y : RMat6) : ℝ := ∑ i, ∑ j, Y i j ^ 2

lemma sumsq_nonneg (Y : RMat6) : 0 ≤ sumsq Y :=
  Finset.sum_nonneg fun _ _ => Finset.sum_nonneg fun _ _ => sq_nonneg _

section
attribute [local instance] Matrix.frobeniusNormedAddCommGroup

/-- The Frobenius norm. -/
noncomputable def frob (Y : RMat6) : ℝ := ‖Y‖

lemma frob_eq_sqrt (Y : RMat6) : frob Y = Real.sqrt (sumsq Y) := by
  rw [frob, Matrix.frobenius_norm_def, Real.sqrt_eq_rpow, sumsq]
  congr 1
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  rw [Real.rpow_two, Real.norm_eq_abs, sq_abs]

lemma frob_add_le (Y Z : RMat6) : frob (Y + Z) ≤ frob Y + frob Z := norm_add_le Y Z

end

lemma frob_le_of_sumsq_le {Y Z : RMat6} (h : sumsq Y ≤ sumsq Z) : frob Y ≤ frob Z := by
  rw [frob_eq_sqrt, frob_eq_sqrt]; exact Real.sqrt_le_sqrt h

/-! ### The horizontal projection is linear and contracts the norm -/

lemma hor_apply (Y : RMat6) (i j : I6) :
    hor Y i j = Y i j - rowMean Y i - colMean Y j + allMean Y := rfl

lemma hor_add (Y Z : RMat6) : hor (Y + Z) = hor Y + hor Z := by
  ext i j
  simp only [hor_apply, Matrix.add_apply, rowMean, colMean, allMean, Finset.sum_add_distrib]
  ring

lemma sum_hor_row (Y : RMat6) (i : I6) : ∑ j, hor Y i j = 0 := (hor_isHorizontal Y).1 i
lemma sum_hor_col (Y : RMat6) (j : I6) : ∑ i, hor Y i j = 0 := (hor_isHorizontal Y).2 j

/-- `hor Y` is orthogonal to `Y − hor Y`, a row-plus-column pattern. -/
lemma hor_cross (Y : RMat6) : ∑ i, ∑ j, hor Y i j * (Y i j - hor Y i j) = 0 := by
  have e : ∀ i j, hor Y i j * (Y i j - hor Y i j) =
      hor Y i j * (rowMean Y i - allMean Y) + hor Y i j * colMean Y j := by
    intro i j; rw [hor_apply]; ring
  simp_rw [e, Finset.sum_add_distrib]
  have h1 : ∑ i, ∑ j, hor Y i j * (rowMean Y i - allMean Y) = 0 := by
    simp_rw [← Finset.sum_mul, sum_hor_row, zero_mul, Finset.sum_const_zero]
  have h2 : ∑ i, ∑ j, hor Y i j * colMean Y j = 0 := by
    rw [Finset.sum_comm]; simp_rw [← Finset.sum_mul, sum_hor_col, zero_mul, Finset.sum_const_zero]
  rw [h1, h2, add_zero]

lemma sumsq_hor_le (Y : RMat6) : sumsq (hor Y) ≤ sumsq Y := by
  have e : ∀ i j, Y i j ^ 2 = hor Y i j ^ 2 + (Y i j - hor Y i j) ^ 2 +
      2 * (hor Y i j * (Y i j - hor Y i j)) := by intro i j; ring
  have : sumsq Y = sumsq (hor Y) + sumsq (Y - hor Y) +
      2 * ∑ i, ∑ j, hor Y i j * (Y i j - hor Y i j) := by
    simp only [sumsq, Matrix.sub_apply]
    simp_rw [e, Finset.sum_add_distrib, Finset.mul_sum]
  rw [this, hor_cross]
  linarith [sumsq_nonneg (Y - hor Y)]

lemma frob_hor_le (Y : RMat6) : frob (hor Y) ≤ frob Y := frob_le_of_sumsq_le (sumsq_hor_le Y)

/-- Adding a horizontal-gauge pattern: `exp(i(P + h Y))` is equivalent to `exp(i(P + Y))`. -/
theorem phaseMat_equivalent_add_hor (P Y : RMat6) :
    Equivalent (phaseMat (P + hor Y)) (phaseMat (P + Y)) := by
  refine ⟨1, 1, fun i => Complex.exp ((rowMean Y i - allMean Y : ℝ) * Complex.I),
    fun j => Complex.exp ((colMean Y j : ℝ) * Complex.I), fun i => normSq_exp_real_mul_I _,
    fun j => normSq_exp_real_mul_I _, ?_⟩
  intro i j
  simp only [phaseMat, hor, of_apply, Matrix.add_apply, Equiv.Perm.coe_one, id_eq]
  rw [← Complex.exp_add, ← Complex.exp_add]
  congr 1
  push_cast; ring

/-- Integer windings: `exp(i(Y + 2πN)) = exp(iY)`. -/
lemma phaseMat_add_winding (Y : RMat6) (N : Matrix I6 I6 ℤ) :
    phaseMat (Y + (2 * Real.pi) • N.map (Int.cast : ℤ → ℝ)) = phaseMat Y := by
  ext i j
  simp only [phaseMat, of_apply, Matrix.add_apply, Matrix.smul_apply, Matrix.map_apply, smul_eq_mul]
  have : ((Y i j + 2 * Real.pi * (N i j : ℝ) : ℝ) : ℂ) * Complex.I =
      Y i j * Complex.I + (N i j : ℂ) * (2 * Real.pi * Complex.I) := by push_cast; ring
  rw [this, Complex.exp_add, Complex.exp_int_mul_two_pi_mul_I, mul_one]

/-! ### Signed permutations -/

/-- Row and column permutations, an optional transposition and an optional sign. -/
structure SignedPerm where
  σ : Equiv.Perm I6
  τ : Equiv.Perm I6
  tr : Bool
  cj : Bool

namespace SignedPerm

def sgn (A : SignedPerm) : ℝ := if A.cj then -1 else 1

/-- Action on phase matrices. -/
def act (A : SignedPerm) (Y : RMat6) : RMat6 :=
  Matrix.of fun i j => A.sgn * (if A.tr then Yᵀ else Y) (A.σ i) (A.τ j)

/-- The matching element of `Γ` on Hadamard matrices. -/
def gam (A : SignedPerm) (H : Mat6) : Mat6 :=
  if A.cj then conjM (if A.tr then Hᵀ else H) else (if A.tr then Hᵀ else H)

lemma act_add (A : SignedPerm) (Y Z : RMat6) : A.act (Y + Z) = A.act Y + A.act Z := by
  ext i j; cases h : A.tr <;> simp [act, h, mul_add]

lemma sgn_sq (A : SignedPerm) : A.sgn ^ 2 = 1 := by unfold sgn; split <;> norm_num

lemma sumsq_act (A : SignedPerm) (Y : RMat6) : sumsq (A.act Y) = sumsq Y := by
  have hY : sumsq (if A.tr then Yᵀ else Y) = sumsq Y := by
    split
    · simp only [sumsq, transpose_apply]; exact Finset.sum_comm
    · rfl
  rw [← hY]
  simp only [sumsq, act, of_apply, mul_pow, sgn_sq, one_mul]
  rw [Equiv.sum_comp A.σ (fun i => ∑ j, (if A.tr then Yᵀ else Y) i (A.τ j) ^ 2)]
  exact Finset.sum_congr rfl fun i _ => Equiv.sum_comp A.τ (fun j => (if A.tr then Yᵀ else Y) i j ^ 2)

lemma frob_act (A : SignedPerm) (Y : RMat6) : frob (A.act Y) = frob Y := by
  rw [frob_eq_sqrt, frob_eq_sqrt, sumsq_act]

lemma inGamma_gam (A : SignedPerm) (H : Mat6) : InGamma H (A.gam H) := by
  unfold gam InGamma; cases A.cj <;> cases A.tr <;> simp

lemma exp_neg_mul_I (x : ℝ) :
    Complex.exp (-((x : ℂ) * Complex.I)) = (starRingEnd ℂ) (Complex.exp (x * Complex.I)) := by
  rw [← Complex.exp_conj]; congr 1; simp [Complex.conj_ofReal]

lemma phaseMat_act (A : SignedPerm) (Y : RMat6) (i j : I6) :
    phaseMat (A.act Y) i j = A.gam (phaseMat Y) (A.σ i) (A.τ j) := by
  unfold gam act sgn phaseMat conjM
  cases A.cj <;> cases A.tr <;> simp [exp_neg_mul_I]

/-- `exp(i A Y)` is equivalent to `γ_A exp(iY)`. -/
theorem equivalent_act (A : SignedPerm) (Y : RMat6) :
    Equivalent (A.gam (phaseMat Y)) (phaseMat (A.act Y)) :=
  ⟨A.σ, A.τ, fun _ => 1, fun _ => 1, fun _ => by simp, fun _ => by simp,
    fun i j => by rw [phaseMat_act]; ring⟩

end SignedPerm

/-! ### Lemma 4.1 -/

/-- `H` is equivalent to an interior point of the Record ball with centre `P` and radius `R`. -/
def InRecord (P : RMat6) (R : ℝ) (H : Mat6) : Prop :=
  ∃ δ, IsHorizontal δ ∧ frob δ < R ∧ Equivalent H (phaseMat (P + δ))

/-- **Lemma 4.1 (boundary transfer).** -/
theorem transfer (A : SignedPerm) (N : Matrix I6 I6 ℤ) {Ps Pt u ν : RMat6} {n Rt : ℝ}
    (hν : frob ν ≤ n)
    (h : frob (hor (A.act Ps + (2 * Real.pi) • N.map (Int.cast : ℤ → ℝ) - Pt) + hor (A.act u)) + n < Rt) :
    ∃ G, InGamma (phaseMat (Ps + u + ν)) G ∧ InRecord Pt Rt G := by
  set Y := Ps + u + ν
  set W : RMat6 := (2 * Real.pi) • N.map (Int.cast : ℤ → ℝ)
  set c := hor (A.act Ps + W - Pt)
  refine ⟨A.gam (phaseMat Y), A.inGamma_gam _, hor (A.act Y + W - Pt), hor_isHorizontal _, ?_, ?_⟩
  · have e : hor (A.act Y + W - Pt) = (c + hor (A.act u)) + hor (A.act ν) := by
      have : A.act Y + W - Pt = (A.act Ps + W - Pt) + A.act u + A.act ν := by
        simp only [Y, SignedPerm.act_add]; abel
      rw [this, hor_add, hor_add]
    rw [e]
    calc frob ((c + hor (A.act u)) + hor (A.act ν))
        ≤ frob (c + hor (A.act u)) + frob (hor (A.act ν)) := frob_add_le _ _
      _ ≤ frob (c + hor (A.act u)) + n := by
          have := (frob_hor_le (A.act ν)).trans_eq (A.frob_act ν); linarith
      _ < Rt := h
  · have h1 := A.equivalent_act Y
    have h2 : phaseMat (A.act Y) = phaseMat (A.act Y + W) := (phaseMat_add_winding _ N).symm
    have h3 := phaseMat_equivalent_add_hor Pt (A.act Y + W - Pt)
    rw [add_sub_cancel] at h3
    rw [h2] at h1
    exact equivalent_equivalence.trans h1 (equivalent_equivalence.symm h3)

end NoFourMUBs
