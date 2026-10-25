import KernelAtlas.Seed.BallCert

/-!
# C1 in the horizontal gauge (`proof/seed_atlas/SPEC.md` §11)

A `"gauge": "hor"` ball stores `P = h(P_g)` and `U = h(T) M_θ` (horizontal).  The completion's phases `Q_g` are in the
dephased gauge, so `Q_g − P − U w` is not small: it carries the row and column pattern `P_g − P + (U_g − U) w` and the
residual's own non-horizontal part.  A row and column phase shift removes both:

  `S(w)_ij = α_i(w) + β_j(w)`, `α_i(w) = α_{i,0} + Σ_l α_{i,l+1} w_l`, `β_j` likewise (per box, on the grid),

and C1 holds for `Q = Q_g + S(w)`: `e^{iQ} = D_r e^{iQ_g} D_c` is a representative (`RepO`) whatever `S` is, and the
box check bounds `‖Q_g + S(w) − P − U w − 2πN‖`.  The check is the dephased one, `c1Box`, run on the ball with
`P − S₀` and `U − S_l` in place of `P` and `U` (`shiftB`): nothing in `c1Box` but the residual reads `P` or `U`.
The generator picks `S` as the grid rounding of the pattern part of the residual's affine model; any `S` is sound.

Shift data `sh : List ℤ` (60 entries): `α_{i,m}` at `5 i + m`, `β_{j,m}` at `30 + 5 j + m`, `i, j < 6`, `m < 5`.
-/

open Complex Matrix Hadamard6 NoFourMUBs.Side NoFourMUBs.Step2 NoFourMUBs.SeedAtlas NoFourMUBs.StageC

noncomputable section

namespace NoFourMUBs.KernelAtlas.Seed

/-- The shift coefficient `α_{e / 6, m} + β_{e % 6, m}` of entry `e`. -/
def shA (sh : List ℤ) (e m : ℕ) : ℤ := gi sh (5 * (e / 6) + m) + gi sh (30 + 5 * (e % 6) + m)

/-- The ball with `P − S₀` and `U − S_l`. -/
def shiftB (B : BallD) (sh : List ℤ) : BallD :=
  { B with P := l36 fun e => gi B.P e - shA sh e 0
           U := List.ofFn (n := 144) fun q => gi B.U q - shA sh (q / 4) (q % 4 + 1) }

/-- The pattern `S_m`: `(S_m)_ij = α_{i,m} + β_{j,m}`. -/
def patM (sh : List ℤ) (m : ℕ) : RMat6 := fun i j => rq (shA sh (ix i j) m)

/-- `S(w) = S₀ + Σ_l w_l S_{l+1}`. -/
def shiftS (sh : List ℤ) (w : Fin 4 → ℝ) : RMat6 := patM sh 0 + tang (fun l => patM sh (l + 1)) w

lemma gi_l36 (f : ℕ → ℤ) {e : ℕ} (he : e < 36) : gi (l36 f) e = f e := by
  unfold gi l36; interval_cases e <;> rfl

lemma Pm_shiftB (B : BallD) (sh : List ℤ) : Pm (shiftB B sh) = Pm B - patM sh 0 := by
  ext i j
  simp only [Pm, shiftB, patM, Matrix.sub_apply, gi_l36 _ (ix_lt i j), rq]
  push_cast; ring

lemma Um_shiftB (B : BallD) (sh : List ℤ) (k : Fin 4) : Um (shiftB B sh) k = Um B k - patM sh (k + 1) := by
  ext i j
  have hq : 4 * ix i j + k < 144 := by have := ix_lt i j; omega
  have e1 : gi (List.ofFn (n := 144) fun q => gi B.U q - shA sh (q / 4) (q % 4 + 1)) (4 * ix i j + k) =
      gi B.U (4 * ix i j + k) - shA sh (ix i j) (k + 1) := by
    unfold gi
    rw [List.getD_eq_getElem?_getD, List.getElem?_ofFn]
    simp only [hq, dite_true, Option.getD_some]
    congr 3 <;> omega
  simp only [Um, shiftB, patM, Matrix.sub_apply, e1, rq]
  push_cast; ring

/-- `S(w)` is a row and column pattern: `S_ij = a_i + b_j`. -/
lemma shiftS_apply (sh : List ℤ) (w : Fin 4 → ℝ) (i j : I6) : shiftS sh w i j =
    (rq (gi sh (5 * sidx i)) + ∑ l : Fin 4, w l * rq (gi sh (5 * sidx i + (l + 1)))) +
      (rq (gi sh (30 + 5 * sidx j)) + ∑ l : Fin 4, w l * rq (gi sh (30 + 5 * sidx j + (l + 1)))) := by
  simp only [shiftS, tang, patM, shA, ix_div6, ix_mod6, Matrix.add_apply, Matrix.sum_apply, Matrix.smul_apply,
    smul_eq_mul, rq, add_zero]
  push_cast
  rw [Fin.sum_univ_four, Fin.sum_univ_four, Fin.sum_univ_four]
  ring

/-- Adding a row and column pattern rephases rows and columns. -/
lemma rowColEquiv_add_pattern (Y : RMat6) (a b : I6 → ℝ) :
    RowColEquiv (phaseMat Y) (phaseMat (Y + Matrix.of fun i j => a i + b j)) := by
  refine ⟨fun i => Complex.exp ((a i : ℝ) * Complex.I), fun j => Complex.exp ((b j : ℝ) * Complex.I),
    fun i => normSq_exp_real_mul_I _, fun j => normSq_exp_real_mul_I _, fun i j => ?_⟩
  simp only [phaseMat, Matrix.of_apply, Matrix.add_apply]
  rw [← Complex.exp_add, ← Complex.exp_add]
  congr 1
  push_cast; ring

lemma rowColEquiv_shiftS (Y : RMat6) (sh : List ℤ) (w : Fin 4 → ℝ) :
    RowColEquiv (phaseMat Y) (phaseMat (Y + shiftS sh w)) := by
  have e : shiftS sh w = Matrix.of fun i j =>
      (rq (gi sh (5 * sidx i)) + ∑ l : Fin 4, w l * rq (gi sh (5 * sidx i + (l + 1)))) +
      (rq (gi sh (30 + 5 * sidx j)) + ∑ l : Fin 4, w l * rq (gi sh (30 + 5 * sidx j + (l + 1)))) := by
    ext i j; rw [shiftS_apply]; rfl
  rw [e]
  exact rowColEquiv_add_pattern Y _ _

/-- **C1 on a box, horizontal gauge.** -/
theorem c1BoxH_sound {B : BallD} {D : BoxD} {sh : List ℤ} (hok : c1Box (shiftB B sh) D = true) {o : ℤˣ}
    (ho : B.o = (o : ℤ)) {u : Fin 4 → ℝ} (hu : InBox D.hb u) :
    0 < seedR (seedOf (th0R B + MthR B *ᵥ wOf D u)) ∧ ∃ Q : RMat6, ∃ N : Matrix I6 I6 ℤ,
      RepO o (seedOf (th0R B + MthR B *ᵥ wOf D u)) (phaseMat Q) ∧
      frob (Q - Pm B - tang (Um B) (wOf D u) - wind N) ≤ rn B.n := by
  obtain ⟨hR, Q, N, hH, hM, hb⟩ := c1Box_sound (B := shiftB B sh) hok ho hu
  refine ⟨hR, Q + shiftS sh (wOf D u), N, ⟨phaseMat Q, hH, hM, rowColEquiv_shiftS Q sh _⟩, ?_⟩
  have e : Q + shiftS sh (wOf D u) - Pm B - tang (Um B) (wOf D u) - wind N =
      Q - Pm (shiftB B sh) - tang (Um (shiftB B sh)) (wOf D u) - wind N := by
    rw [Pm_shiftB]
    have hU : tang (Um (shiftB B sh)) (wOf D u) =
        tang (Um B) (wOf D u) - tang (fun l => patM sh (l + 1)) (wOf D u) := by
      simp only [tang, Um_shiftB, smul_sub, Finset.sum_sub_distrib]
    rw [hU, shiftS]; abel
  rw [e]; exact hb

/-- **C1 from the boxes, horizontal gauge**: each box with its shift. -/
theorem hC1H_of_boxes {B : BallD} {o : ℤˣ} (ho : B.o = (o : ℤ)) {r : ℝ} {boxes : List (BoxD × List ℤ)}
    (hall : ∀ x ∈ boxes, c1Box (shiftB B x.2) x.1 = true)
    (hcov : ∀ w, wnorm w ≤ r → ∃ x ∈ boxes, InBox x.1.hb (fun l => w l - rq (gi x.1.wc l))) :
    ∀ w : Fin 4 → ℝ, wnorm w ≤ r →
      0 < seedR (seedOf (th0R B + MthR B *ᵥ w)) ∧
      ∃ Q : RMat6, ∃ N : Matrix I6 I6 ℤ, RepO o (seedOf (th0R B + MthR B *ᵥ w)) (phaseMat Q) ∧
        frob (Q - Pm B - tang (Um B) w - wind N) ≤ rn B.n := by
  intro w hw
  obtain ⟨x, hx, hu⟩ := hcov w hw
  have e : wOf x.1 (fun l => w l - rq (gi x.1.wc l)) = w := by funext l; simp [wOf]
  have := c1BoxH_sound (hall x hx) ho hu
  rwa [e] at this

/-- **The kernel seed ball, horizontal gauge**: `ballCert` with C1 in `RepO` form. -/
def ballCertH (D : SeedD) (o : ℤˣ) (hMth : IsUnit (MthR D.B).det)
    (hcol : ∀ (w : Fin 4 → ℝ) (i : I6), colnorm (tang (Um D.B) w) i ≤ rn D.t * wnorm w)
    (hfrob : ∀ w : Fin 4 → ℝ, frob (tang (Um D.B) w) ≤ rn D.lamF * wnorm w)
    (hC1 : ∀ w : Fin 4 → ℝ, wnorm w ≤ rn D.r →
      0 < seedR (seedOf (th0R D.B + MthR D.B *ᵥ w)) ∧
      ∃ Q : RMat6, ∃ N : Matrix I6 I6 ℤ, RepO o (seedOf (th0R D.B + MthR D.B *ᵥ w)) (phaseMat Q) ∧
        frob (Q - Pm D.B - tang (Um D.B) w - wind N) ≤ rn D.B.n)
    (stageC : StageC.StageCCert ((1 / (2 * Real.pi)) • Pm D.B) (Um D.B) (rn D.r / (2 * Real.pi))
      (rn D.B.n / (2 * Real.pi)) ((rn D.t * rn D.r + rn D.B.n) / (2 * Real.pi))
      ((rn D.lamF * rn D.r + rn D.B.n) / (2 * Real.pi))) : SeedBallCert where
  theta0 := th0R D.B
  Mth := MthR D.B
  r := rn D.r
  o := o
  P := Pm D.B
  U := Um D.B
  n := rn D.B.n
  t := rn D.t
  lamF := rn D.lamF
  hMth := hMth
  ht0 := rn_nonneg _
  hF0 := rn_nonneg _
  hcol := hcol
  hfrob := hfrob
  hC1 := hC1
  stageC := stageC

end NoFourMUBs.KernelAtlas.Seed
