import KernelAtlas.Seed.Ball

/-!
# The frame bounds of a kernel seed ball: `hcol`, `hfrob`, `hMth` (`KERNEL_SEED.md` §4)

For a kernel seed ball `D : SeedD` (grid integers, `2^{-pp}`), with `U = Um D.B`, `t = rn D.t`, `λ_F = rn D.lamF`:
* **`hcol`**: `‖(U w)_{:,i}‖ ≤ t ‖w‖` for the six columns `i`.  With the column Gram matrices
  `G⁽ⁱ⁾_kl = Σ_a U[4(6a+i)+k] U[4(6a+i)+l]` (`gramC`, integers at scale `2^{-2pp}`), this is `t² I − G⁽ⁱ⁾ ⪰ 0`.
* **`hfrob`**: `‖U w‖_F ≤ λ_F ‖w‖`, i.e. `λ_F² I − G ⪰ 0` with `G = Σ_i G⁽ⁱ⁾` (`gramF`).
* **`hMth`**: `M_θ` is invertible.  The data `InvD` (the adjugate `adj` of the integer matrix `M = 2^pp M_θ` and
  `det`, integers) satisfy `M · adj = det · I`, `det ≠ 0` exactly (`invOK`); then `M_θ · M_θ⁻¹ = I` for
  `M_θ⁻¹ = 2^pp adj / det` (`MinvR`, also used by T0).

**Positive semidefiniteness** (`psdOK`): the kernel computes `LDLᵀ` of the exact rational matrix (`ldl4`, no pivoting;
nothing is proved about it) and checks `A = L diag(d) Lᵀ` entrywise and `d ≥ 0` exactly; then
`wᵀ A w = Σ_m d_m (Lᵀ w)_m² ≥ 0` (`quad_nonneg_of_ldl`).  A zero pivot only makes the check fail.

`frameOK D I` bundles the seven `psdOK` checks and `invOK`; `frame_sound` gives the `SeedBallCert` fields
(`FrameFacts`).
-/

open Matrix Hadamard6 NoFourMUBs.StageC NoFourMUBs.SeedAtlas

namespace NoFourMUBs.KernelAtlas.Seed

/-! ### Exact `LDLᵀ` of a `4 × 4` rational matrix -/

/-- The factors of `A = L diag(d) Lᵀ`: the pivots and the strict lower part of the unit lower triangular `L`. -/
structure LDL4 where
  d0 : ℚ
  d1 : ℚ
  d2 : ℚ
  d3 : ℚ
  l10 : ℚ
  l20 : ℚ
  l30 : ℚ
  l21 : ℚ
  l31 : ℚ
  l32 : ℚ

/-- `LDLᵀ` without pivoting (a predictor: `ldlOK` checks the identity). -/
def ldl4 (a : ℕ → ℕ → ℚ) : LDL4 :=
  let d0 := a 0 0
  let l10 := a 1 0 / d0
  let l20 := a 2 0 / d0
  let l30 := a 3 0 / d0
  let d1 := a 1 1 - l10 * l10 * d0
  let l21 := (a 2 1 - l20 * l10 * d0) / d1
  let l31 := (a 3 1 - l30 * l10 * d0) / d1
  let d2 := a 2 2 - l20 * l20 * d0 - l21 * l21 * d1
  let l32 := (a 3 2 - l30 * l20 * d0 - l31 * l21 * d1) / d2
  let d3 := a 3 3 - l30 * l30 * d0 - l31 * l31 * d1 - l32 * l32 * d2
  ⟨d0, d1, d2, d3, l10, l20, l30, l21, l31, l32⟩

/-- The entry `L k m`. -/
def LDL4.L (F : LDL4) : ℕ → ℕ → ℚ
  | 0, 0 => 1
  | 1, 1 => 1
  | 2, 2 => 1
  | 3, 3 => 1
  | 1, 0 => F.l10
  | 2, 0 => F.l20
  | 3, 0 => F.l30
  | 2, 1 => F.l21
  | 3, 1 => F.l31
  | 3, 2 => F.l32
  | _, _ => 0

/-- The pivot `d m`. -/
def LDL4.d (F : LDL4) : ℕ → ℚ
  | 0 => F.d0
  | 1 => F.d1
  | 2 => F.d2
  | _ => F.d3

/-- `d ≥ 0` and `A = L diag(d) Lᵀ` (all 16 entries). -/
def ldlOK (a : ℕ → ℕ → ℚ) (F : LDL4) : Bool :=
  (l4 fun m => decide (0 ≤ F.d m)).all id &&
  (l16 fun q => decide (a (q / 4) (q % 4) = (l4 fun m => F.L (q / 4) m * F.d m * F.L (q % 4) m).sum)).all id

/-- `A ⪰ 0`, by the kernel's own `LDLᵀ`. -/
def psdOK (a : ℕ → ℕ → ℚ) : Bool := ldlOK a (ldl4 a)

/-! ### Explicit lists -/

lemma all_l16 {f : ℕ → Bool} (h : (l16 f).all id = true) {q : ℕ} (hq : q < 16) : f q = true := by
  simp only [l16, List.all_cons, List.all_nil, id, Bool.and_eq_true] at h
  interval_cases q <;> tauto

lemma all_l4' {f : ℕ → Bool} (h : (l4 f).all id = true) {q : ℕ} (hq : q < 4) : f q = true := by
  simp only [l4, List.all_cons, List.all_nil, id, Bool.and_eq_true] at h
  interval_cases q <;> tauto

lemma all_l6' {f : ℕ → Bool} (h : (l6 f).all id = true) {q : ℕ} (hq : q < 6) : f q = true := by
  simp only [l6, List.all_cons, List.all_nil, id, Bool.and_eq_true] at h
  interval_cases q <;> tauto

lemma sum_l4Q (g : ℕ → ℚ) : (l4 g).sum = g 0 + g 1 + g 2 + g 3 := by simp [l4]; ring
lemma sum_l4Z (g : ℕ → ℤ) : (l4 g).sum = g 0 + g 1 + g 2 + g 3 := by simp [l4]; ring
lemma sum_l6Z (g : ℕ → ℤ) : (l6 g).sum = g 0 + g 1 + g 2 + g 3 + g 4 + g 5 := by simp [l6]; ring

/-- `Σ_{k : Fin 4} f k` as four terms with `ℕ` indices. -/
lemma sum_fin4N (f : ℕ → ℝ) : ∑ k : Fin 4, f k = f 0 + f 1 + f 2 + f 3 := by
  rw [Fin.sum_univ_four]; rfl

/-- `Σ_{a : I6} f (sidx a)` as six terms. -/
lemma sum_I6_sidx (f : ℕ → ℝ) : ∑ a : I6, f (sidx a) = f 0 + f 1 + f 2 + f 3 + f 4 + f 5 := by
  rw [Fintype.sum_sum_type, Fin.sum_univ_three, Fin.sum_univ_three]
  simp only [sidx, Fin.val_zero, Fin.val_one, Fin.val_two]
  ring

/-! ### Soundness of `psdOK` -/

lemma ldlOK_parts {a : ℕ → ℕ → ℚ} {F : LDL4} (h : ldlOK a F = true) :
    (∀ m : Fin 4, (0 : ℝ) ≤ F.d m) ∧
      ∀ k l : Fin 4, (a k l : ℝ) = ∑ m : Fin 4, (F.L k m : ℝ) * F.d m * F.L l m := by
  simp only [ldlOK, Bool.and_eq_true] at h
  refine ⟨fun m => ?_, fun k l => ?_⟩
  · have := of_decide_eq_true (all_l4' h.1 m.2)
    exact_mod_cast this
  · have hq : 4 * (k : ℕ) + l < 16 := by omega
    have := of_decide_eq_true (all_l16 h.2 hq)
    have e1 : (4 * (k : ℕ) + l) / 4 = k := by omega
    have e2 : (4 * (k : ℕ) + l) % 4 = l := by omega
    rw [e1, e2, sum_l4Q] at this
    rw [this, sum_fin4N (fun m => (F.L k m : ℝ) * F.d m * F.L l m)]
    push_cast; ring

/-- **`LDLᵀ` with `d ≥ 0` gives a nonnegative quadratic form.** -/
theorem quad_nonneg_of_ldl {a : ℕ → ℕ → ℚ} {F : LDL4} (h : ldlOK a F = true) (w : Fin 4 → ℝ) :
    0 ≤ ∑ k : Fin 4, ∑ l : Fin 4, w k * w l * (a k l : ℝ) := by
  obtain ⟨hd, hA⟩ := ldlOK_parts h
  have e : ∑ k : Fin 4, ∑ l : Fin 4, w k * w l * (a k l : ℝ) =
      ∑ m : Fin 4, (F.d m : ℝ) * (∑ k : Fin 4, (F.L k m : ℝ) * w k) ^ 2 := by
    simp only [hA]
    simp only [Fin.sum_univ_four]
    ring
  rw [e]
  exact Finset.sum_nonneg fun m _ => mul_nonneg (hd m) (sq_nonneg _)

theorem quad_nonneg_of_psdOK {a : ℕ → ℕ → ℚ} (h : psdOK a = true) (w : Fin 4 → ℝ) :
    0 ≤ ∑ k : Fin 4, ∑ l : Fin 4, w k * w l * (a k l : ℝ) :=
  quad_nonneg_of_ldl h w

/-! ### The Gram matrices -/

/-- The column Gram `G⁽ⁱ⁾_kl = Σ_a U[4(6a+i)+k] U[4(6a+i)+l]` (integers, scale `2^{-2pp}`). -/
def gramC (U : List ℤ) (i k l : ℕ) : ℤ :=
  (l6 fun a => gi U (4 * (6 * a + i) + k) * gi U (4 * (6 * a + i) + l)).sum

/-- The Frobenius Gram `G = Σ_i G⁽ⁱ⁾`. -/
def gramF (U : List ℤ) (k l : ℕ) : ℤ := (l6 fun i => gramC U i k l).sum

/-- `s² I − G` as a rational matrix (scale `2^{-2pp}`). -/
def shiftA (s : ℕ) (G : ℕ → ℕ → ℤ) (k l : ℕ) : ℚ := (((if k = l then (s : ℤ) ^ 2 else 0) - G k l : ℤ) : ℚ)

lemma quad_shiftA (s : ℕ) (G : ℕ → ℕ → ℤ) (w : Fin 4 → ℝ) :
    ∑ k : Fin 4, ∑ l : Fin 4, w k * w l * (shiftA s G k l : ℝ) =
      (s : ℝ) ^ 2 * ∑ k : Fin 4, w k ^ 2 - ∑ k : Fin 4, ∑ l : Fin 4, w k * w l * (G k l : ℝ) := by
  simp only [shiftA, Fin.sum_univ_four, Fin.val_zero, Fin.val_one, Fin.val_two]
  rw [show ((3 : Fin 4) : ℕ) = 3 from rfl]
  simp only [if_true, show (0 : ℕ) ≠ 1 from by decide, show (0 : ℕ) ≠ 2 from by decide,
    show (0 : ℕ) ≠ 3 from by decide, show (1 : ℕ) ≠ 0 from by decide, show (1 : ℕ) ≠ 2 from by decide,
    show (1 : ℕ) ≠ 3 from by decide, show (2 : ℕ) ≠ 0 from by decide, show (2 : ℕ) ≠ 1 from by decide,
    show (2 : ℕ) ≠ 3 from by decide, show (3 : ℕ) ≠ 0 from by decide, show (3 : ℕ) ≠ 1 from by decide,
    show (3 : ℕ) ≠ 2 from by decide, if_false]
  push_cast; ring

/-- A column of `U w`: `Σ_a ((U w)_{a i})² = wᵀ G⁽ⁱ⁾ w / 2^{2pp}`. -/
lemma col_sq (B : BallD) (w : Fin 4 → ℝ) (i : I6) :
    ∑ a : I6, tang (Um B) w a i ^ 2 =
      (∑ k : Fin 4, ∑ l : Fin 4, w k * w l * (gramC B.U (sidx i) k l : ℝ)) / 2 ^ (2 * pp) := by
  set g : ℕ → ℕ → ℝ := fun n k => (gi B.U (4 * (6 * n + sidx i) + k) : ℝ) with hg
  have e1 : ∀ a : I6, tang (Um B) w a i = (fun n : ℕ => ∑ k : Fin 4, w k * (g n k / 2 ^ pp)) (sidx a) := by
    intro a
    simp only [tang, Matrix.sum_apply, Matrix.smul_apply, smul_eq_mul, Um, ix, rq, hg]
  have e2 : ∀ k l : ℕ, (gramC B.U (sidx i) k l : ℝ) =
      g 0 k * g 0 l + g 1 k * g 1 l + g 2 k * g 2 l + g 3 k * g 3 l + g 4 k * g 4 l + g 5 k * g 5 l := by
    intro k l
    simp only [gramC, sum_l6Z, hg]
    push_cast; ring
  simp only [e1, e2]
  rw [sum_I6_sidx (fun n => (∑ k : Fin 4, w k * (g n k / 2 ^ pp)) ^ 2)]
  simp only [Fin.sum_univ_four]
  rw [pow_mul']
  field_simp
  ring

/-- `Σ_i G⁽ⁱ⁾ = G` over the reals. -/
lemma gramF_cast (U : List ℤ) (k l : ℕ) : ∑ i : I6, (gramC U (sidx i) k l : ℝ) = (gramF U k l : ℝ) := by
  rw [sum_I6_sidx (fun n => (gramC U n k l : ℝ))]
  simp only [gramF, sum_l6Z]; push_cast; ring

/-! ### The checks -/

/-- The six column bounds `t² I − G⁽ⁱ⁾ ⪰ 0`. -/
def colOK (D : SeedD) : Bool := (l6 fun i => psdOK (shiftA D.t (gramC D.B.U i))).all id

/-- The Frobenius bound `λ_F² I − G ⪰ 0`. -/
def frobOK (D : SeedD) : Bool := psdOK (shiftA D.lamF (gramF D.B.U))

/-- The adjugate and determinant of the integer matrix `M = 2^pp M_θ` (row-major `adj`). -/
structure InvD where
  adj : List ℤ
  det : ℤ

/-- `det ≠ 0` and `M · adj = det · I`. -/
def invOK (B : BallD) (I : InvD) : Bool :=
  decide (I.det ≠ 0) &&
  (l16 fun q => decide ((l4 fun b => gi B.Mth (4 * (q / 4) + b) * gi I.adj (4 * b + q % 4)).sum =
    if q / 4 = q % 4 then I.det else 0)).all id

/-- **The frame check of a seed ball.** -/
def frameOK (D : SeedD) (I : InvD) : Bool := colOK D && frobOK D && invOK D.B I

/-! ### Soundness -/

/-- `M_θ⁻¹ = 2^pp adj / det`. -/
noncomputable def MinvR (I : InvD) : Matrix (Fin 4) (Fin 4) ℝ :=
  fun a c => 2 ^ pp * (gi I.adj (4 * a + c) : ℝ) / I.det

lemma invOK_det {B : BallD} {I : InvD} (h : invOK B I = true) : I.det ≠ 0 := by
  simp only [invOK, Bool.and_eq_true] at h
  exact of_decide_eq_true h.1

theorem mul_MinvR {B : BallD} {I : InvD} (h : invOK B I = true) : MthR B * MinvR I = 1 := by
  have hdet : (I.det : ℝ) ≠ 0 := by exact_mod_cast invOK_det h
  simp only [invOK, Bool.and_eq_true] at h
  ext a c
  have hq : 4 * (a : ℕ) + c < 16 := by omega
  have := of_decide_eq_true (all_l16 h.2 hq)
  have e1 : (4 * (a : ℕ) + c) / 4 = a := by omega
  have e2 : (4 * (a : ℕ) + c) % 4 = c := by omega
  rw [e1, e2, sum_l4Z] at this
  have hR := congrArg (fun z : ℤ => (z : ℝ)) this
  simp only [Matrix.mul_apply, MthR, MinvR, rq, Matrix.one_apply, sum_fin4N
    (fun b => (gi B.Mth (4 * a + b) : ℝ) / 2 ^ pp * (2 ^ pp * (gi I.adj (4 * b + c) : ℝ) / I.det))]
  have hpp : (2 : ℝ) ^ pp ≠ 0 := by positivity
  have hac : (a = c) ↔ ((a : ℕ) = c) := Fin.val_inj.symm
  by_cases hc : a = c
  · rw [if_pos hc]
    rw [if_pos (hac.mp hc)] at hR
    push_cast at hR
    field_simp
    linarith
  · rw [if_neg hc]
    rw [if_neg (fun h' => hc (hac.mpr h'))] at hR
    push_cast at hR
    field_simp
    linarith

theorem isUnit_MthR {B : BallD} {I : InvD} (h : invOK B I = true) : IsUnit (MthR B).det :=
  Matrix.isUnit_det_of_right_inverse (mul_MinvR h)

/-- The `SeedBallCert` frame fields of a kernel seed ball. -/
structure FrameFacts (D : SeedD) : Prop where
  hMth : IsUnit (MthR D.B).det
  ht0 : 0 ≤ rn D.t
  hF0 : 0 ≤ rn D.lamF
  hcol : ∀ (w : Fin 4 → ℝ) (i : I6), colnorm (tang (Um D.B) w) i ≤ rn D.t * wnorm w
  hfrob : ∀ w : Fin 4 → ℝ, frob (tang (Um D.B) w) ≤ rn D.lamF * wnorm w

lemma wq_le {G : ℕ → ℕ → ℤ} {s : ℕ} (h : psdOK (shiftA s G) = true) (w : Fin 4 → ℝ) :
    ∑ k : Fin 4, ∑ l : Fin 4, w k * w l * (G k l : ℝ) ≤ (s : ℝ) ^ 2 * ∑ k : Fin 4, w k ^ 2 := by
  have := quad_nonneg_of_psdOK h w
  rw [quad_shiftA] at this
  linarith

/-- `√(Q / 2^{2pp}) ≤ rn s · ‖w‖` from `Q ≤ s² ‖w‖²`. -/
lemma sqrt_scaled_le {Q : ℝ} {s : ℕ} {w : Fin 4 → ℝ} (hQ : Q ≤ (s : ℝ) ^ 2 * ∑ k : Fin 4, w k ^ 2) :
    Real.sqrt (Q / 2 ^ (2 * pp)) ≤ rn s * wnorm w := by
  have hs : 0 ≤ rn s := rn_nonneg s
  rw [show rn s * wnorm w = Real.sqrt (rn s ^ 2 * ∑ k : Fin 4, w k ^ 2) by
    rw [Real.sqrt_mul (sq_nonneg _), Real.sqrt_sq hs]; rfl]
  apply Real.sqrt_le_sqrt
  have hp : (0 : ℝ) < 2 ^ (2 * pp) := by positivity
  have e : rn s ^ 2 * ∑ k : Fin 4, w k ^ 2 = ((s : ℝ) ^ 2 * ∑ k : Fin 4, w k ^ 2) / 2 ^ (2 * pp) := by
    unfold rn; rw [pow_mul']; ring
  rw [e]
  exact div_le_div_of_nonneg_right hQ hp.le

/-- **The frame bounds** from `frameOK`. -/
theorem frame_sound {D : SeedD} {I : InvD} (h : frameOK D I = true) : FrameFacts D := by
  simp only [frameOK, Bool.and_eq_true] at h
  obtain ⟨⟨hc, hf⟩, hi⟩ := h
  refine ⟨isUnit_MthR hi, rn_nonneg _, rn_nonneg _, fun w i => ?_, fun w => ?_⟩
  · have hpsd : psdOK (shiftA D.t (gramC D.B.U (sidx i))) = true := all_l6' hc (sidx_lt i)
    unfold colnorm vnorm
    rw [col_sq]
    exact sqrt_scaled_le (wq_le hpsd w)
  · rw [← vnorm_colnorm]
    unfold vnorm colnorm vnorm
    have e : ∑ i : I6, Real.sqrt (∑ j : I6, tang (Um D.B) w j i ^ 2) ^ 2 =
        (∑ k : Fin 4, ∑ l : Fin 4, w k * w l * (gramF D.B.U k l : ℝ)) / 2 ^ (2 * pp) := by
      have h1 : ∀ i : I6, Real.sqrt (∑ j : I6, tang (Um D.B) w j i ^ 2) ^ 2 =
          (∑ k : Fin 4, ∑ l : Fin 4, w k * w l * (gramC D.B.U (sidx i) k l : ℝ)) / 2 ^ (2 * pp) := by
        intro i
        rw [Real.sq_sqrt (Finset.sum_nonneg fun j _ => sq_nonneg (tang (Um D.B) w j i)), col_sq]
      simp only [h1]
      rw [← Finset.sum_div]
      congr 1
      rw [Finset.sum_comm]
      refine Finset.sum_congr rfl fun k _ => ?_
      rw [Finset.sum_comm]
      refine Finset.sum_congr rfl fun l _ => ?_
      rw [← Finset.mul_sum, gramF_cast]
    rw [e]
    exact sqrt_scaled_le (wq_le hf w)

end NoFourMUBs.KernelAtlas.Seed
