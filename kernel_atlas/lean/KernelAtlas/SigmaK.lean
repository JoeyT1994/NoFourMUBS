import KernelAtlas.TrigK

/-!
# The normal-space bound `σ` in the kernel (`hσ` of `RecordCert`)

For `ν` horizontal and orthogonal to the frame, `‖J ν‖² = outNorm(Jac P ν)² = ½ Σ_{abcc'} C_abcc' d_abc d_abc'` with
`d_abc = ν_ac − ν_bc` and `C_abcc' = Re(w_abc w̄_abc')` (`jac_sq`).  Replacing `C` by the table values `cq`
costs at most `36 γ ‖ν‖²` (`jac_sq_approx`), and the rational form is `νᵀ M̃ ν` with the closed-form matrix
`M̃ = mtQ` (`quadM`).  The certificate (`sigmaOK`): with the penalty `A ν = (row sums, column sums, ⟨T_k, ν⟩)`,

  `M̃ + c AᵀA − s I − L Lᵀ` is diagonally dominant (by rows and by columns), `s ≥ σ² + 36 γ`,

so `νᵀ M̃ ν ≥ s ‖ν‖²` on the normal space, hence `σ ‖ν‖ ≤ ‖J ν‖` (`sigma_sound`).
-/

open Hadamard6 NoFourMUBs NoFourMUBs.StageC Complex

namespace NoFourMUBs.KernelAtlas

/-- The matrix of `½ Σ_{abcc'} C_abcc' (ν_ac − ν_bc)(ν_ac' − ν_bc')`, entry `((p, q), (p', q'))`. -/
noncomputable def mR (C : I6 → I6 → I6 → I6 → ℝ) (p q p' q' : I6) : ℝ :=
  ((if p = p' then ∑ b, C p b q q' else 0) - C p p' q q' - C p' p q q' + (if p = p' then ∑ a, C a p q q' else 0)) / 2

lemma collapse (f : I6 → I6 → I6 → ℝ) (ν : RMat6) :
    ∑ p, ∑ q, ∑ p', ∑ q', (if p = p' then f p q q' else 0) * ν p q * ν p' q' =
      ∑ p, ∑ q, ∑ q', f p q q' * ν p q * ν p q' := by
  refine Finset.sum_congr rfl fun p _ => Finset.sum_congr rfl fun q _ => ?_
  simp only [ite_mul, zero_mul]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun q' _ => ?_
  rw [Finset.sum_ite_eq]; simp

theorem quadM (C : I6 → I6 → I6 → I6 → ℝ) (ν : RMat6) :
    ∑ p, ∑ q, ∑ p', ∑ q', mR C p q p' q' * ν p q * ν p' q' =
      ∑ a, ∑ b, ∑ c, ∑ c', C a b c c' / 2 * ((ν a c - ν b c) * (ν a c' - ν b c')) := by
  have hL : ∑ p, ∑ q, ∑ p', ∑ q', mR C p q p' q' * ν p q * ν p' q' =
      (∑ p, ∑ q, ∑ p', ∑ q', (if p = p' then ∑ b, C p b q q' else 0) * ν p q * ν p' q'
        - ∑ p, ∑ q, ∑ p', ∑ q', C p p' q q' * ν p q * ν p' q'
        - ∑ p, ∑ q, ∑ p', ∑ q', C p' p q q' * ν p q * ν p' q'
        + ∑ p, ∑ q, ∑ p', ∑ q', (if p = p' then ∑ a, C a p q q' else 0) * ν p q * ν p' q') / 2 := by
    simp only [mR, ← Finset.sum_sub_distrib, ← Finset.sum_add_distrib, Finset.sum_div]
    refine Finset.sum_congr rfl fun p _ => Finset.sum_congr rfl fun q _ =>
      Finset.sum_congr rfl fun p' _ => Finset.sum_congr rfl fun q' _ => by ring
  have hR : ∑ a, ∑ b, ∑ c, ∑ c', C a b c c' / 2 * ((ν a c - ν b c) * (ν a c' - ν b c')) =
      (∑ a, ∑ b, ∑ c, ∑ c', C a b c c' * ν a c * ν a c'
        - ∑ a, ∑ b, ∑ c, ∑ c', C a b c c' * ν a c * ν b c'
        - ∑ a, ∑ b, ∑ c, ∑ c', C a b c c' * ν b c * ν a c'
        + ∑ a, ∑ b, ∑ c, ∑ c', C a b c c' * ν b c * ν b c') / 2 := by
    simp only [← Finset.sum_sub_distrib, ← Finset.sum_add_distrib, Finset.sum_div]
    refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ =>
      Finset.sum_congr rfl fun c _ => Finset.sum_congr rfl fun c' _ => by ring
  rw [hL, hR, collapse, collapse]
  -- term 1: Σ_p Σ_q Σ_q' (Σ_b C p b q q') ν_pq ν_pq'  =  Σ_a Σ_b Σ_c Σ_c' C a b c c' ν_ac ν_ac'
  have t1 : ∑ p, ∑ q, ∑ q', (∑ b, C p b q q') * ν p q * ν p q' = ∑ a, ∑ b, ∑ c, ∑ c', C a b c c' * ν a c * ν a c' := by
    refine Finset.sum_congr rfl fun a _ => ?_
    simp only [Finset.sum_mul]
    calc ∑ q, ∑ q', ∑ b, C a b q q' * ν a q * ν a q' = ∑ q, ∑ b, ∑ q', C a b q q' * ν a q * ν a q' :=
          Finset.sum_congr rfl fun q _ => Finset.sum_comm
      _ = _ := Finset.sum_comm
  have t2 : ∑ p, ∑ q, ∑ p', ∑ q', C p p' q q' * ν p q * ν p' q' = ∑ a, ∑ b, ∑ c, ∑ c', C a b c c' * ν a c * ν b c' :=
    Finset.sum_congr rfl fun a _ => Finset.sum_comm
  have t3 : ∑ p, ∑ q, ∑ p', ∑ q', C p' p q q' * ν p q * ν p' q' = ∑ a, ∑ b, ∑ c, ∑ c', C a b c c' * ν b c * ν a c' := by
    calc ∑ p, ∑ q, ∑ p', ∑ q', C p' p q q' * ν p q * ν p' q' = ∑ p, ∑ p', ∑ q, ∑ q', C p' p q q' * ν p q * ν p' q' :=
          Finset.sum_congr rfl fun p _ => Finset.sum_comm
      _ = _ := Finset.sum_comm
  have t4 : ∑ p, ∑ q, ∑ q', (∑ a, C a p q q') * ν p q * ν p q' = ∑ a, ∑ b, ∑ c, ∑ c', C a b c c' * ν b c * ν b c' := by
    simp only [Finset.sum_mul]
    calc ∑ p, ∑ q, ∑ q', ∑ a, C a p q q' * ν p q * ν p q' = ∑ p, ∑ q, ∑ a, ∑ q', C a p q q' * ν p q * ν p q' :=
          Finset.sum_congr rfl fun p _ => Finset.sum_congr rfl fun q _ => Finset.sum_comm
      _ = ∑ p, ∑ a, ∑ q, ∑ q', C a p q q' * ν p q * ν p q' := Finset.sum_congr rfl fun p _ => Finset.sum_comm
      _ = _ := Finset.sum_comm
  rw [t1, t2, t3, t4]


/-! ### `‖J ν‖²` as a quadratic form -/

lemma norm_sq_sum_eq (z : I6 → ℂ) : ‖∑ c, z c‖ ^ 2 = ∑ c, ∑ c', (z c * star (z c')).re := by
  have h : ‖∑ c, z c‖ ^ 2 = ((∑ c, z c) * star (∑ c, z c)).re := by
    rw [Complex.star_def, Complex.mul_conj, Complex.ofReal_re, Complex.normSq_eq_norm_sq]
  rw [h, star_sum, Finset.sum_mul_sum, Complex.re_sum]
  exact Finset.sum_congr rfl fun c _ => Complex.re_sum _ _

/-- `outNorm(Jac P ν)² = ½ Σ_{abcc'} C_abcc' d_abc d_abc'`. -/
theorem jac_sq (P ν : RMat6) :
    outNorm (Jac P ν) ^ 2 = ∑ a, ∑ b, ∑ c, ∑ c', cex P a b c c' / 2 * ((ν a c - ν b c) * (ν a c' - ν b c')) := by
  rw [outNorm_sq, Finset.sum_div]
  refine Finset.sum_congr rfl fun a _ => ?_
  rw [Finset.sum_div]
  refine Finset.sum_congr rfl fun b _ => ?_
  have hJ : Jac P ν a b = Complex.I * ∑ c, wex P a b c * ((ν a c - ν b c : ℝ) : ℂ) := by
    simp only [Jac, Matrix.of_apply, wex, Finset.mul_sum]
    exact Finset.sum_congr rfl fun c _ => by ring
  rw [hJ, norm_mul, Complex.norm_I, one_mul, norm_sq_sum_eq, Finset.sum_div]
  refine Finset.sum_congr rfl fun c _ => ?_
  rw [Finset.sum_div]
  refine Finset.sum_congr rfl fun c' _ => ?_
  rw [cex]
  have : wex P a b c * ((ν a c - ν b c : ℝ) : ℂ) * star (wex P a b c' * ((ν a c' - ν b c' : ℝ) : ℂ)) =
      (wex P a b c * star (wex P a b c')) * (((ν a c - ν b c) * (ν a c' - ν b c') : ℝ) : ℂ) := by
    rw [star_mul', Complex.star_def, Complex.conj_ofReal]; push_cast; ring
  rw [this, Complex.re_mul_ofReal]
  ring

/-- Replacing `C` by `cq` costs at most `36 γ ‖ν‖²`. -/
theorem jac_sq_approx {tb : Tab} (h : epB tb = true) (ν : RMat6) :
    |∑ a, ∑ b, ∑ c, ∑ c', cex (Pmat tb.pq) a b c c' / 2 * ((ν a c - ν b c) * (ν a c' - ν b c')) -
      ∑ a, ∑ b, ∑ c, ∑ c', (cq tb a b c c' : ℝ) / 2 * ((ν a c - ν b c) * (ν a c' - ν b c'))| ≤
      36 * (gammaQ tb : ℝ) * sumsq ν := by
  have hg0 : (0 : ℝ) ≤ gammaQ tb := (abs_nonneg _).trans (c_err h j0 j0 j0 j0)
  simp only [← Finset.sum_sub_distrib, ← sub_mul, ← sub_div]
  have hterm : ∀ a b, |∑ c, ∑ c', (cex (Pmat tb.pq) a b c c' - cq tb a b c c') / 2 *
      ((ν a c - ν b c) * (ν a c' - ν b c'))| ≤ (gammaQ tb : ℝ) / 2 * (∑ c, |ν a c - ν b c|) ^ 2 := by
    intro a b
    refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
    rw [sq, Finset.sum_mul_sum, Finset.mul_sum]
    refine Finset.sum_le_sum fun c _ => ?_
    refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
    rw [Finset.mul_sum]
    refine Finset.sum_le_sum fun c' _ => ?_
    rw [abs_mul, abs_div, abs_mul, abs_two]
    have := c_err h a b c c'
    have h1 : 0 ≤ |ν a c - ν b c| * |ν a c' - ν b c'| := mul_nonneg (abs_nonneg _) (abs_nonneg _)
    calc |cex (Pmat tb.pq) a b c c' - cq tb a b c c'| / 2 * (|ν a c - ν b c| * |ν a c' - ν b c'|)
        ≤ (gammaQ tb : ℝ) / 2 * (|ν a c - ν b c| * |ν a c' - ν b c'|) := by gcongr
      _ = _ := by ring
  have hcs : ∀ a b, (∑ c, |ν a c - ν b c|) ^ 2 ≤ 6 * rowDist ν a b := by
    intro a b
    have := sq_sum_le_card_mul_sum_sq (s := (Finset.univ : Finset I6)) (f := fun c => |ν a c - ν b c|)
    simp only [Finset.card_univ, card_I6, sq_abs] at this
    unfold rowDist; push_cast at this; linarith
  calc |∑ a, ∑ b, ∑ c, ∑ c', (cex (Pmat tb.pq) a b c c' - cq tb a b c c') / 2 * ((ν a c - ν b c) * (ν a c' - ν b c'))|
      ≤ ∑ a, ∑ b, (gammaQ tb : ℝ) / 2 * (∑ c, |ν a c - ν b c|) ^ 2 := by
        refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun a _ => ?_)
        exact (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun b _ => hterm a b)
    _ ≤ ∑ a, ∑ b, (gammaQ tb : ℝ) / 2 * (6 * rowDist ν a b) :=
        Finset.sum_le_sum fun a _ => Finset.sum_le_sum fun b _ => by gcongr; exact hcs a b
    _ = 3 * (gammaQ tb : ℝ) * ∑ a, ∑ b, rowDist ν a b := by
        simp only [Finset.mul_sum]; exact Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => by ring
    _ ≤ 3 * (gammaQ tb : ℝ) * (12 * sumsq ν) := by gcongr; exact sum_rowDist_le ν
    _ = 36 * (gammaQ tb : ℝ) * sumsq ν := by ring

/-! ### The certificate -/

def ix (p q : I6) : ℕ := 6 * idx p + idx q

/-- The certificate data: penalty `c`, shift `s`, and `L = Lrows / 2^Lden` (rows and columns in `ix` order). -/
structure SigQ where
  cpen : ℚ
  s : ℚ
  Lrows : List (List ℤ)
  Lden : ℕ

def SigQ.L (S : SigQ) (p q r t : I6) : ℚ := (((S.Lrows.getD (ix p q) []).getD (ix r t) 0 : ℤ) : ℚ) / 2 ^ S.Lden

def mtQ (tb : Tab) (p q p' q' : I6) : ℚ :=
  ((if p = p' then s6 (fun b => cq tb p b q q') else 0) - cq tb p p' q q' - cq tb p' p q q' +
    (if p = p' then s6 (fun a => cq tb a p q q') else 0)) / 2

def aQ (F : QFrame) (p q p' q' : I6) : ℚ :=
  (if p = p' then 1 else 0) + (if q = q' then 1 else 0) + s4 (fun k => F k p q * F k p' q')

def llQ (S : SigQ) (p q p' q' : I6) : ℚ := s6 fun r => s6 fun t => S.L p q r t * S.L p' q' r t

def remQ (tb : Tab) (F : QFrame) (S : SigQ) (p q p' q' : I6) : ℚ :=
  mtQ tb p q p' q' + S.cpen * aQ F p q p' q' - (if p = p' ∧ q = q' then S.s else 0) - llQ S p q p' q'

def offRow (tb : Tab) (F : QFrame) (S : SigQ) (p q : I6) : ℚ :=
  s6 fun p' => s6 fun q' => if p = p' ∧ q = q' then 0 else |remQ tb F S p q p' q'|

def offCol (tb : Tab) (F : QFrame) (S : SigQ) (p q : I6) : ℚ :=
  s6 fun p' => s6 fun q' => if p = p' ∧ q = q' then 0 else |remQ tb F S p' q' p q|

def sigmaOK (tb : Tab) (F : QFrame) (S : SigQ) (σ : ℚ) : Bool :=
  epB tb && decide (0 ≤ S.cpen) && decide (σ ^ 2 + 36 * gammaQ tb ≤ S.s) && decide (0 ≤ σ) &&
    (allI6 fun p => allI6 fun q =>
      decide (offRow tb F S p q ≤ remQ tb F S p q p q) && decide (offCol tb F S p q ≤ remQ tb F S p q p q))

/-! ### Soundness -/

lemma mtQ_cast (tb : Tab) (p q p' q' : I6) :
    ((mtQ tb p q p' q' : ℚ) : ℝ) = mR (fun a b c c' => (cq tb a b c c' : ℝ)) p q p' q' := by
  unfold mtQ mR
  split_ifs <;> simp [s6_cast]

/-- Gershgorin for a quadratic form over any finite index type, by rows and columns. -/
lemma quad_nonneg_gen {ι : Type*} [Fintype ι] [DecidableEq ι] {R : ι → ι → ℝ}
    (hrow : ∀ i, ∑ j, (if i = j then 0 else |R i j|) ≤ R i i)
    (hcol : ∀ i, ∑ j, (if i = j then 0 else |R j i|) ≤ R i i) (x : ι → ℝ) :
    0 ≤ ∑ i, ∑ j, R i j * x i * x j := by
  have hterm : ∀ i j, (if i = j then R i i * x i ^ 2 else 0) - x i ^ 2 * (if i = j then 0 else |R i j|) / 2 -
      (if i = j then 0 else |R i j| * x j ^ 2) / 2 ≤ R i j * x i * x j := by
    intro i j
    split_ifs with hij
    · subst hij; nlinarith
    · have h1 : |x i * x j| ≤ (x i ^ 2 + x j ^ 2) / 2 := by
        rw [abs_mul]; nlinarith [sq_nonneg (|x i| - |x j|), sq_abs (x i), sq_abs (x j)]
      have h2 : -(|R i j| * |x i * x j|) ≤ R i j * x i * x j := by
        rw [mul_assoc, ← abs_mul]; exact neg_abs_le _ |>.trans (le_of_eq (by ring_nf)) |>.trans (le_refl _)
      nlinarith [abs_nonneg (R i j)]
  have hdiag : ∀ i, ∑ j, (if i = j then R i i * x i ^ 2 else 0) = R i i * x i ^ 2 := by
    intro i; rw [Finset.sum_ite_eq]; simp
  have hswap : ∑ i, ∑ j, (if i = j then 0 else |R i j| * x j ^ 2) =
      ∑ i, x i ^ 2 * ∑ j, (if i = j then 0 else |R j i|) := by
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [Finset.mul_sum]
    refine Finset.sum_congr rfl fun j _ => ?_
    by_cases h : j = i
    · subst h; simp
    · simp [h, Ne.symm h]; ring
  have hlow : ∑ i, x i ^ 2 * (R i i - (∑ j, (if i = j then 0 else |R i j|)) / 2 -
      (∑ j, (if i = j then 0 else |R j i|)) / 2) ≤ ∑ i, ∑ j, R i j * x i * x j := by
    have L1 : ∑ i, x i ^ 2 * (R i i - (∑ j, (if i = j then 0 else |R i j|)) / 2 -
        (∑ j, (if i = j then 0 else |R j i|)) / 2) = ∑ i, R i i * x i ^ 2 -
        ∑ i, x i ^ 2 * (∑ j, (if i = j then 0 else |R i j|)) / 2 -
        ∑ i, x i ^ 2 * (∑ j, (if i = j then 0 else |R j i|)) / 2 := by
      rw [← Finset.sum_sub_distrib, ← Finset.sum_sub_distrib]
      exact Finset.sum_congr rfl fun i _ => by ring
    have R1 : ∑ i, ∑ j, ((if i = j then R i i * x i ^ 2 else 0) - x i ^ 2 * (if i = j then 0 else |R i j|) / 2 -
        (if i = j then 0 else |R i j| * x j ^ 2) / 2) =
        ∑ i, ∑ j, (if i = j then R i i * x i ^ 2 else 0) - ∑ i, ∑ j, x i ^ 2 * (if i = j then 0 else |R i j|) / 2 -
        ∑ i, ∑ j, (if i = j then 0 else |R i j| * x j ^ 2) / 2 := by
      simp only [Finset.sum_sub_distrib]
    have eA : ∑ i, ∑ j, (if i = j then R i i * x i ^ 2 else 0) = ∑ i, R i i * x i ^ 2 :=
      Finset.sum_congr rfl fun i _ => hdiag i
    have eB : ∑ i, ∑ j, x i ^ 2 * (if i = j then 0 else |R i j|) / 2 =
        ∑ i, x i ^ 2 * (∑ j, (if i = j then 0 else |R i j|)) / 2 :=
      Finset.sum_congr rfl fun i _ => by rw [← Finset.sum_div, ← Finset.mul_sum]
    have eC : ∑ i, ∑ j, (if i = j then 0 else |R i j| * x j ^ 2) / 2 =
        ∑ i, x i ^ 2 * (∑ j, (if i = j then 0 else |R j i|)) / 2 := by
      rw [show ∑ i, ∑ j, (if i = j then 0 else |R i j| * x j ^ 2) / 2 =
          (∑ i, ∑ j, (if i = j then 0 else |R i j| * x j ^ 2)) / 2 by simp only [Finset.sum_div], hswap,
        Finset.sum_div]
    have hle : ∑ i, ∑ j, ((if i = j then R i i * x i ^ 2 else 0) - x i ^ 2 * (if i = j then 0 else |R i j|) / 2 -
        (if i = j then 0 else |R i j| * x j ^ 2) / 2) ≤ ∑ i, ∑ j, R i j * x i * x j :=
      Finset.sum_le_sum fun i _ => Finset.sum_le_sum fun j _ => hterm i j
    linarith
  refine le_trans ?_ hlow
  exact Finset.sum_nonneg fun i _ => mul_nonneg (sq_nonneg _) (by linarith [hrow i, hcol i])

lemma aQ_cast (F : QFrame) (p q p' q' : I6) : ((aQ F p q p' q' : ℚ) : ℝ) =
    (if p = p' then 1 else 0) + (if q = q' then 1 else 0) + ∑ k, (F k p q : ℝ) * (F k p' q' : ℝ) := by
  simp only [aQ, Rat.cast_add, s4_cast, Rat.cast_mul, apply_ite (Rat.cast : ℚ → ℝ), Rat.cast_one, Rat.cast_zero]

lemma llQ_castι (S : SigQ) (p q p' q' : I6) : ((llQ S p q p' q' : ℚ) : ℝ) =
    ∑ z : I6 × I6, (S.L p q z.1 z.2 : ℝ) * S.L p' q' z.1 z.2 := by
  rw [Fintype.sum_prod_type]; unfold llQ; simp only [s6_cast]; push_cast; rfl

lemma remQ_cast (tb : Tab) (F : QFrame) (S : SigQ) (p q p' q' : I6) : ((remQ tb F S p q p' q' : ℚ) : ℝ) =
    mR (fun a b c c' => (cq tb a b c c' : ℝ)) p q p' q' + (S.cpen : ℝ) * aQ F p q p' q' -
      (if p = p' ∧ q = q' then (S.s : ℝ) else 0) - llQ S p q p' q' := by
  unfold remQ; rw [← mtQ_cast]; push_cast; split_ifs <;> simp

/-- The penalty vanishes on the normal space. -/
lemma aPart_zero (F : QFrame) {ν : RMat6} (hν : IsHorizontal ν) (horth : ∀ k, ∑ a, ∑ c, F.toR k a c * ν a c = 0) :
    ∑ p, ∑ q, ∑ p', ∑ q', ((aQ F p q p' q' : ℚ) : ℝ) * ν p q * ν p' q' = 0 := by
  have horth' : ∀ k, ∑ a, ∑ c, (F k a c : ℝ) * ν a c = 0 := horth
  refine Finset.sum_eq_zero fun p _ => Finset.sum_eq_zero fun q _ => ?_
  have h1 : ∑ p', ∑ q', (if p = p' then ν p' q' else 0) = 0 := by
    rw [Finset.sum_eq_single p (fun p' _ hp => Finset.sum_eq_zero fun q' _ => by simp [Ne.symm hp]) (by simp)]
    simpa using hν.1 p
  have h2 : ∑ p', ∑ q', (if q = q' then ν p' q' else 0) = 0 := by
    simp only [Finset.sum_ite_eq, Finset.mem_univ, if_true]; exact hν.2 q
  have h3 : ∑ p', ∑ q', ∑ k, (F k p q : ℝ) * ((F k p' q' : ℝ) * ν p' q') = 0 := by
    calc _ = ∑ p', ∑ k, ∑ q', (F k p q : ℝ) * ((F k p' q' : ℝ) * ν p' q') :=
          Finset.sum_congr rfl fun p' _ => Finset.sum_comm
      _ = ∑ k, ∑ p', ∑ q', (F k p q : ℝ) * ((F k p' q' : ℝ) * ν p' q') := Finset.sum_comm
      _ = ∑ k, (F k p q : ℝ) * ∑ p', ∑ q', (F k p' q' : ℝ) * ν p' q' := by simp only [Finset.mul_sum]
      _ = 0 := by simp only [horth', mul_zero, Finset.sum_const_zero]
  have e : ∀ p' q', ((aQ F p q p' q' : ℚ) : ℝ) * ν p q * ν p' q' = ν p q * (if p = p' then ν p' q' else 0) +
      ν p q * (if q = q' then ν p' q' else 0) + ν p q * ∑ k, (F k p q : ℝ) * ((F k p' q' : ℝ) * ν p' q') := by
    intro p' q'
    rw [aQ_cast, Finset.mul_sum, add_mul, add_mul, add_mul, add_mul, Finset.sum_mul, Finset.sum_mul]
    congr 1
    · congr 1
      · split_ifs <;> ring
      · split_ifs <;> ring
    · exact Finset.sum_congr rfl fun k _ => by ring
  calc ∑ p', ∑ q', ((aQ F p q p' q' : ℚ) : ℝ) * ν p q * ν p' q'
      = ∑ p', ∑ q', (ν p q * (if p = p' then ν p' q' else 0) + ν p q * (if q = q' then ν p' q' else 0) +
          ν p q * ∑ k, (F k p q : ℝ) * ((F k p' q' : ℝ) * ν p' q')) :=
        Finset.sum_congr rfl fun p' _ => Finset.sum_congr rfl fun q' _ => e p' q'
    _ = ν p q * ∑ p', ∑ q', (if p = p' then ν p' q' else 0) + ν p q * ∑ p', ∑ q', (if q = q' then ν p' q' else 0) +
          ν p q * ∑ p', ∑ q', ∑ k, (F k p q : ℝ) * ((F k p' q' : ℝ) * ν p' q') := by
        simp only [Finset.sum_add_distrib, Finset.mul_sum]
    _ = 0 := by rw [h1, h2, h3]; ring

/-- The `L Lᵀ` part is a sum of squares. -/
lemma llPart_nonneg (S : SigQ) (ν : RMat6) :
    0 ≤ ∑ x : I6 × I6, ∑ y : I6 × I6, (∑ z : I6 × I6, (S.L x.1 x.2 z.1 z.2 : ℝ) * S.L y.1 y.2 z.1 z.2) *
      ν x.1 x.2 * ν y.1 y.2 := by
  have e : ∑ x : I6 × I6, ∑ y : I6 × I6, (∑ z : I6 × I6, (S.L x.1 x.2 z.1 z.2 : ℝ) * S.L y.1 y.2 z.1 z.2) *
      ν x.1 x.2 * ν y.1 y.2 = ∑ z : I6 × I6, (∑ x : I6 × I6, (S.L x.1 x.2 z.1 z.2 : ℝ) * ν x.1 x.2) ^ 2 := by
    simp only [sq, Finset.sum_mul, Finset.mul_sum]
    calc _ = ∑ x : I6 × I6, ∑ z : I6 × I6, ∑ y : I6 × I6,
          (S.L x.1 x.2 z.1 z.2 : ℝ) * S.L y.1 y.2 z.1 z.2 * ν x.1 x.2 * ν y.1 y.2 :=
          Finset.sum_congr rfl fun x _ => Finset.sum_comm
      _ = ∑ z : I6 × I6, ∑ x : I6 × I6, ∑ y : I6 × I6,
          (S.L x.1 x.2 z.1 z.2 : ℝ) * S.L y.1 y.2 z.1 z.2 * ν x.1 x.2 * ν y.1 y.2 := Finset.sum_comm
      _ = _ := Finset.sum_congr rfl fun z _ => Finset.sum_congr rfl fun x _ =>
          Finset.sum_congr rfl fun y _ => by ring
  rw [e]
  exact Finset.sum_nonneg fun z _ => sq_nonneg _

lemma diagPart (s : ℝ) (ν : RMat6) :
    ∑ p, ∑ q, ∑ p', ∑ q', (if p = p' ∧ q = q' then s else 0) * ν p q * ν p' q' = s * sumsq ν := by
  rw [sumsq, Finset.mul_sum]
  refine Finset.sum_congr rfl fun p _ => ?_
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun q _ => ?_
  rw [Finset.sum_eq_single p (fun p' _ hp => Finset.sum_eq_zero fun q' _ => by simp [Ne.symm hp]) (by simp)]
  rw [Finset.sum_eq_single q (fun q' _ hq => by simp [Ne.symm hq]) (by simp)]
  simp; ring

/-- **`hσ`**: `σ ‖ν‖ ≤ ‖J ν‖` on the normal space. -/
theorem sigma_sound {tb : Tab} {F : QFrame} {S : SigQ} {σ : ℚ} (h : sigmaOK tb F S σ = true) (ν : RMat6)
    (hν : IsHorizontal ν) (horth : ∀ k, ∑ a, ∑ c, F.toR k a c * ν a c = 0) :
    (σ : ℝ) * frob ν ≤ outNorm (Jac (Pmat tb.pq) ν) := by
  simp only [sigmaOK, Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨⟨⟨⟨hep, hc0⟩, hs⟩, hσ0⟩, hdd⟩ := h
  have hs' : (σ : ℝ) ^ 2 + 36 * gammaQ tb ≤ S.s := by exact_mod_cast hs
  have hσ0' : (0 : ℝ) ≤ σ := by exact_mod_cast hσ0
  set Rr : I6 × I6 → I6 × I6 → ℝ := fun x y => (remQ tb F S x.1 x.2 y.1 y.2 : ℝ) with hRr
  have hrow : ∀ x, ∑ y, (if x = y then 0 else |Rr x y|) ≤ Rr x x := by
    rintro ⟨p, q⟩
    have h0 := allI6_spec (allI6_spec hdd p) q
    simp only [Bool.and_eq_true, decide_eq_true_eq] at h0
    have := (Rat.cast_le (K := ℝ)).mpr h0.1
    simp only [offRow, s6_cast] at this
    rw [Fintype.sum_prod_type]
    simpa [hRr, Prod.mk.injEq, apply_ite (fun x : ℚ => (x : ℝ))] using this
  have hcol : ∀ x, ∑ y, (if x = y then 0 else |Rr y x|) ≤ Rr x x := by
    rintro ⟨p, q⟩
    have h0 := allI6_spec (allI6_spec hdd p) q
    simp only [Bool.and_eq_true, decide_eq_true_eq] at h0
    have := (Rat.cast_le (K := ℝ)).mpr h0.2
    simp only [offCol, s6_cast] at this
    rw [Fintype.sum_prod_type]
    simpa [hRr, Prod.mk.injEq, apply_ite (fun x : ℚ => (x : ℝ))] using this
  have hq := quad_nonneg_gen hrow hcol (fun x => ν x.1 x.2)
  have hsplit : ∑ x : I6 × I6, ∑ y : I6 × I6, Rr x y * ν x.1 x.2 * ν y.1 y.2 =
      ∑ x : I6 × I6, ∑ y : I6 × I6, mR (fun a b c c' => (cq tb a b c c' : ℝ)) x.1 x.2 y.1 y.2 * ν x.1 x.2 * ν y.1 y.2 +
      (S.cpen : ℝ) * ∑ x : I6 × I6, ∑ y : I6 × I6, ((aQ F x.1 x.2 y.1 y.2 : ℚ) : ℝ) * ν x.1 x.2 * ν y.1 y.2 -
      ∑ x : I6 × I6, ∑ y : I6 × I6, (if x.1 = y.1 ∧ x.2 = y.2 then (S.s : ℝ) else 0) * ν x.1 x.2 * ν y.1 y.2 -
      ∑ x : I6 × I6, ∑ y : I6 × I6, (∑ z : I6 × I6, (S.L x.1 x.2 z.1 z.2 : ℝ) * S.L y.1 y.2 z.1 z.2) *
        ν x.1 x.2 * ν y.1 y.2 := by
    simp only [hRr, remQ_cast, llQ_castι, Finset.mul_sum, ← Finset.sum_add_distrib, ← Finset.sum_sub_distrib]
    exact Finset.sum_congr rfl fun x _ => Finset.sum_congr rfl fun y _ => by ring
  have hM : ∑ x : I6 × I6, ∑ y : I6 × I6, mR (fun a b c c' => (cq tb a b c c' : ℝ)) x.1 x.2 y.1 y.2 *
      ν x.1 x.2 * ν y.1 y.2 = ∑ a, ∑ b, ∑ c, ∑ c', (cq tb a b c c' : ℝ) / 2 * ((ν a c - ν b c) * (ν a c' - ν b c')) := by
    simp only [Fintype.sum_prod_type]; exact quadM _ ν
  have hA : ∑ x : I6 × I6, ∑ y : I6 × I6, ((aQ F x.1 x.2 y.1 y.2 : ℚ) : ℝ) * ν x.1 x.2 * ν y.1 y.2 = 0 := by
    simp only [Fintype.sum_prod_type]; exact aPart_zero F hν horth
  have hD : ∑ x : I6 × I6, ∑ y : I6 × I6, (if x.1 = y.1 ∧ x.2 = y.2 then (S.s : ℝ) else 0) * ν x.1 x.2 * ν y.1 y.2 =
      (S.s : ℝ) * sumsq ν := by
    simp only [Fintype.sum_prod_type]; exact diagPart _ ν
  have hL := llPart_nonneg S ν
  rw [hsplit, hM, hA, hD] at hq
  have happ := jac_sq_approx hep ν
  have hJ := jac_sq (Pmat tb.pq) ν
  have hss := sumsq_nonneg ν
  have hQ : (σ : ℝ) ^ 2 * sumsq ν ≤ outNorm (Jac (Pmat tb.pq) ν) ^ 2 := by
    rw [hJ]
    have := neg_abs_le (∑ a, ∑ b, ∑ c, ∑ c', cex (Pmat tb.pq) a b c c' / 2 * ((ν a c - ν b c) * (ν a c' - ν b c')) -
      ∑ a, ∑ b, ∑ c, ∑ c', (cq tb a b c c' : ℝ) / 2 * ((ν a c - ν b c) * (ν a c' - ν b c')))
    nlinarith
  rw [frob_eq_sqrt]
  have hO := outNorm_nonneg (Jac (Pmat tb.pq) ν)
  calc (σ : ℝ) * Real.sqrt (sumsq ν) = Real.sqrt ((σ : ℝ) ^ 2 * sumsq ν) := by
        rw [Real.sqrt_mul (sq_nonneg _), Real.sqrt_sq hσ0']
    _ ≤ Real.sqrt (outNorm (Jac (Pmat tb.pq) ν) ^ 2) := Real.sqrt_le_sqrt hQ
    _ = _ := Real.sqrt_sq hO

end NoFourMUBs.KernelAtlas
