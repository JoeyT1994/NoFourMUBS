import KernelAtlas.Seed.T2

/-!
# The transfer T1 at a general corner on a seed-boundary box (`FORMAT.md` §4)

On a box of the seed sphere of ball `j`, the C1 core encloses the phases `Q` and the entries of the matched
completion `K = e^{iQ}`.  T1 into seed ball `l` at the ordered corner `(rows, cols)` after `g ∈ Γ`:
* the corner seed `θ′ = cornerTheta (g·Q) σ τ` (`Seed.leadingBlock_cornerMat_phaseMat`), `y = θ′ + 2πN − θ₀_l`,
  `v = G y` with a grid matrix `G ≈ M_l⁻¹`; `‖I − G M_l‖_F ≤ q < 1` exactly, `‖v‖ ≤ m` on the box (`boundOK`), and
  `m < (1 − q) r_l`; then `w′ = M_l⁻¹ y` has `‖w′‖ ≤ m / (1 − q) < r_l` (`ellipsoid`);
* `o_l · Im Ψ(K[I, Jᶜ]) > 0` and `−o_l · Im Ψ(K[Iᶜ, J]) > 0` on the box (`psi3T` on the entry models).
Together: `CornerIn` for ball `l` (`t1Box_sound`).
-/

open Complex Matrix Hadamard6 NoFourMUBs.Side NoFourMUBs.Step2 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Seed

/-! ### Euclidean norms on `ℝ⁴` -/

lemma wnorm_sq (w : Fin 4 → ℝ) : wnorm w ^ 2 = ∑ k, w k ^ 2 :=
  Real.sq_sqrt (Finset.sum_nonneg fun _ _ => sq_nonneg _)

lemma wnorm_add_le (a b : Fin 4 → ℝ) : wnorm (a + b) ≤ wnorm a + wnorm b := by
  have hcs := Finset.sum_mul_sq_le_sq_mul_sq Finset.univ a b
  have ha := wnorm_nonneg a
  have hb := wnorm_nonneg b
  have hab : ∑ k, a k * b k ≤ wnorm a * wnorm b := by
    have h2 : (∑ k, a k * b k) ^ 2 ≤ (wnorm a * wnorm b) ^ 2 := by rw [mul_pow, wnorm_sq, wnorm_sq]; exact hcs
    exact (abs_le_of_sq_le_sq' h2 (mul_nonneg ha hb)).2
  rw [wnorm]
  calc Real.sqrt (∑ k, (a + b) k ^ 2) ≤ Real.sqrt ((wnorm a + wnorm b) ^ 2) := by
        refine Real.sqrt_le_sqrt ?_
        have e : ∑ k, (a + b) k ^ 2 = ∑ k, a k ^ 2 + ∑ k, b k ^ 2 + 2 * ∑ k, a k * b k := by
          simp only [Pi.add_apply, add_sq, Finset.sum_add_distrib, Finset.mul_sum]; ring_nf
        rw [e, add_sq, wnorm_sq, wnorm_sq]; nlinarith
    _ = wnorm a + wnorm b := Real.sqrt_sq (add_nonneg ha hb)

lemma wnorm_mulVec_le (A : Matrix (Fin 4) (Fin 4) ℝ) (x : Fin 4 → ℝ) :
    wnorm (A *ᵥ x) ≤ Real.sqrt (∑ i, ∑ k, A i k ^ 2) * wnorm x := by
  have hA : (0 : ℝ) ≤ ∑ i, ∑ k, A i k ^ 2 :=
    Finset.sum_nonneg fun i _ => Finset.sum_nonneg fun k _ => sq_nonneg (A i k)
  rw [wnorm, wnorm, ← Real.sqrt_mul hA]
  refine Real.sqrt_le_sqrt ?_
  rw [Finset.sum_mul]
  refine Finset.sum_le_sum fun i _ => ?_
  simp only [Matrix.mulVec, dotProduct]
  exact Finset.sum_mul_sq_le_sq_mul_sq Finset.univ (A i) x

/-- **The ellipsoid test**: `‖G y‖ ≤ m`, `‖I − G M‖_F ≤ q < 1`, `m < (1 − q) r` put `M⁻¹ y` in the open ball. -/
theorem ellipsoid {G M : Matrix (Fin 4) (Fin 4) ℝ} (hM : IsUnit M.det) {q m r : ℝ} (hq0 : 0 ≤ q)
    (hq : ∑ i, ∑ k, (1 - G * M) i k ^ 2 ≤ q ^ 2) (hq1 : q < 1) {y : Fin 4 → ℝ} (hv : wnorm (G *ᵥ y) ≤ m)
    (hmr : m < (1 - q) * r) : ∃ w', wnorm w' < r ∧ M *ᵥ w' = y := by
  refine ⟨M⁻¹ *ᵥ y, ?_, by rw [Matrix.mulVec_mulVec, Matrix.mul_nonsing_inv _ hM, Matrix.one_mulVec]⟩
  set w' := M⁻¹ *ᵥ y
  have hMw : M *ᵥ w' = y := by rw [Matrix.mulVec_mulVec, Matrix.mul_nonsing_inv _ hM, Matrix.one_mulVec]
  have e : w' = G *ᵥ y + (1 - G * M) *ᵥ w' := by
    rw [Matrix.sub_mulVec, Matrix.one_mulVec, ← Matrix.mulVec_mulVec, hMw]; abel
  have h1 : wnorm ((1 - G * M) *ᵥ w') ≤ q * wnorm w' :=
    (wnorm_mulVec_le _ _).trans (mul_le_mul_of_nonneg_right
      (Real.sqrt_le_sqrt hq |>.trans (Real.sqrt_sq hq0).le) (wnorm_nonneg _))
  have h2 : wnorm w' ≤ m + q * wnorm w' := by
    calc wnorm w' = wnorm (G *ᵥ y + (1 - G * M) *ᵥ w') := by rw [← e]
      _ ≤ _ := (wnorm_add_le _ _).trans (add_le_add hv h1)
  nlinarith [wnorm_nonneg w']

/-! ### `Ψ` of a general `3 × 3` block -/

def psi3T (h : List ℕ) (L : List CT) : CT :=
  let M := fun a b => gT L (3 * a + b)
  let m3 := fun a b c => mul h (mul h a b) c
  let t1 := m3 (M 0 0) (M 1 1) (M 2 2)
  let t2 := m3 (M 0 0) (M 1 2) (M 2 1)
  let t3 := m3 (M 0 1) (M 1 0) (M 2 2)
  let t4 := m3 (M 0 1) (M 1 2) (M 2 0)
  let t5 := m3 (M 0 2) (M 1 0) (M 2 1)
  let t6 := m3 (M 0 2) (M 1 1) (M 2 0)
  let perm := sumT [t1, t2, t3, t4, t5, t6]
  let det := sumT [t1, neg t2, neg t3, t4, t5, neg t6]
  let pr := mul h (mul h (m3 (M 0 0) (M 0 1) (M 0 2)) (m3 (M 1 0) (M 1 1) (M 1 2))) (m3 (M 2 0) (M 2 1) (M 2 2))
  mul h (mul h perm (mul h det det)) (conj pr)

theorem has_psi3T {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {L : List CT} {M : Mat3} (hM : Has3 u L M) :
    (psi3T h L).Has u (psi M) := by
  have m00 : (gT L (3 * 0 + 0)).Has u (M 0 0) := hM 0 0
  have m01 : (gT L (3 * 0 + 1)).Has u (M 0 1) := hM 0 1
  have m02 : (gT L (3 * 0 + 2)).Has u (M 0 2) := hM 0 2
  have m10 : (gT L (3 * 1 + 0)).Has u (M 1 0) := hM 1 0
  have m11 : (gT L (3 * 1 + 1)).Has u (M 1 1) := hM 1 1
  have m12 : (gT L (3 * 1 + 2)).Has u (M 1 2) := hM 1 2
  have m20 : (gT L (3 * 2 + 0)).Has u (M 2 0) := hM 2 0
  have m21 : (gT L (3 * 2 + 1)).Has u (M 2 1) := hM 2 1
  have m22 : (gT L (3 * 2 + 2)).Has u (M 2 2) := hM 2 2
  have t1 := has_mul hu (has_mul hu m00 m11) m22
  have t2 := has_mul hu (has_mul hu m00 m12) m21
  have t3 := has_mul hu (has_mul hu m01 m10) m22
  have t4 := has_mul hu (has_mul hu m01 m12) m20
  have t5 := has_mul hu (has_mul hu m02 m10) m21
  have t6 := has_mul hu (has_mul hu m02 m11) m20
  have hperm := has_sumT_cons t1 (has_sumT_cons t2 (has_sumT_cons t3 (has_sumT_cons t4 (has_sumT_cons t5
    (has_sumT_cons t6 (has_sumT_nil u))))))
  have hdet := has_sumT_cons t1 (has_sumT_cons (has_neg t2) (has_sumT_cons (has_neg t3) (has_sumT_cons t4
    (has_sumT_cons t5 (has_sumT_cons (has_neg t6) (has_sumT_nil u))))))
  have hpr := has_mul hu (has_mul hu (has_mul hu (has_mul hu m00 m01) m02) (has_mul hu (has_mul hu m10 m11) m12))
    (has_mul hu (has_mul hu m20 m21) m22)
  have H := has_mul hu (has_mul hu hperm (has_mul hu hdet hdet)) (has_conj hpr)
  have e : psi M = (M 0 0 * M 1 1 * M 2 2 + (M 0 0 * M 1 2 * M 2 1 + (M 0 1 * M 1 0 * M 2 2 +
      (M 0 1 * M 1 2 * M 2 0 + (M 0 2 * M 1 0 * M 2 1 + (M 0 2 * M 1 1 * M 2 0 + 0)))))) *
      ((M 0 0 * M 1 1 * M 2 2 + (-(M 0 0 * M 1 2 * M 2 1) + (-(M 0 1 * M 1 0 * M 2 2) +
        (M 0 1 * M 1 2 * M 2 0 + (M 0 2 * M 1 0 * M 2 1 + (-(M 0 2 * M 1 1 * M 2 0) + 0)))))) *
       (M 0 0 * M 1 1 * M 2 2 + (-(M 0 0 * M 1 2 * M 2 1) + (-(M 0 1 * M 1 0 * M 2 2) +
        (M 0 1 * M 1 2 * M 2 0 + (M 0 2 * M 1 0 * M 2 1 + (-(M 0 2 * M 1 1 * M 2 0) + 0))))))) *
      (starRingEnd ℂ) (M 0 0 * M 0 1 * M 0 2 * (M 1 0 * M 1 1 * M 1 2) * (M 2 0 * M 2 1 * M 2 2)) := by
    rw [psi, permanent3_expand, Matrix.det_fin_three]
    simp only [Fin.prod_univ_three, map_mul, Complex.star_def]
    ring
  rw [e]
  exact H

/-! ### Blocks and corner phases of `g · K` -/

/-- Entry `(x, y)` of `g · K` from the entry models (`g = 0, 1, 2, 3`: `id, conj, T, conjT`). -/
def gEntry (km : List CT) (g x y : ℕ) : CT :=
  let A := if 2 ≤ g then gT km (6 * y + x) else gT km (6 * x + y)
  if g % 2 = 1 then conj A else A

/-- A `3 × 3` block of `g · K` at rows `rows[ro + a]`, columns `cols[co + b]`. -/
def blockT (km : List CT) (g : ℕ) (rows cols : List ℕ) (ro co : ℕ) : List CT :=
  l9 fun q => gEntry km g (pidx rows (q / 3 + ro)) (pidx cols (q % 3 + co))

lemma has_gEntry {u : Fin 4 → ℝ} {km : List CT} {K : Mat6} (hK : ∀ i j, (gT km (ix i j)).Has u (K i j))
    (k : Fin 4) (x y : I6) : (gEntry km k (sidx x) (sidx y)).Has u (gfun k K x y) := by
  fin_cases k
  · exact hK x y
  · exact has_conj (hK x y)
  · exact hK y x
  · exact has_conj (hK y x)

lemma has3_blockR {u : Fin 4 → ℝ} {km : List CT} {K : Mat6} (hK : ∀ i j, (gT km (ix i j)).Has u (K i j))
    (k : Fin 4) {rows cols : List ℕ} {σ τ : Equiv.Perm I6} (hσ : ∀ i, σ i = permFun rows i)
    (hτ : ∀ j, τ j = permFun cols j) :
    Has3 u (blockT km k rows cols 0 3) (Matrix.of fun a b => gfun k K (σ (.inl a)) (τ (.inr b))) := by
  intro a b
  rw [blockT, gT_l9 _ (by omega), (idx3 a b).1, (idx3 a b).2]
  have e1 : pidx rows ((a : ℕ) + 0) = sidx (σ (.inl a)) := by rw [hσ]; rfl
  have e2 : pidx cols ((b : ℕ) + 3) = sidx (τ (.inr b)) := by rw [hτ]; rfl
  rw [e1, e2]
  exact has_gEntry hK k _ _

lemma has3_blockC {u : Fin 4 → ℝ} {km : List CT} {K : Mat6} (hK : ∀ i j, (gT km (ix i j)).Has u (K i j))
    (k : Fin 4) {rows cols : List ℕ} {σ τ : Equiv.Perm I6} (hσ : ∀ i, σ i = permFun rows i)
    (hτ : ∀ j, τ j = permFun cols j) :
    Has3 u (blockT km k rows cols 3 0) (Matrix.of fun a b => gfun k K (σ (.inr a)) (τ (.inl b))) := by
  intro a b
  rw [blockT, gT_l9 _ (by omega), (idx3 a b).1, (idx3 a b).2]
  have e1 : pidx rows ((a : ℕ) + 3) = sidx (σ (.inr a)) := by rw [hσ]; rfl
  have e2 : pidx cols ((b : ℕ) + 0) = sidx (τ (.inl b)) := by rw [hτ]; rfl
  rw [e1, e2]
  exact has_gEntry hK k _ _

/-- The model of `Q′_{σ(inl a), τ(inl b)}` up to the sign of `g`. -/
def qpT (qm : List CT) (g : ℕ) (rows cols : List ℕ) (a b : ℕ) : CT :=
  gT qm (if 2 ≤ g then 6 * pidx cols b + pidx rows a else 6 * pidx rows a + pidx cols b)

/-- A T1 target at a general corner: `g`, the corner orders (full permutations), the winding, `G ≈ M_l⁻¹`, `q`, and
the bound `m` on `‖G y‖`. -/
structure T1D where
  g : ℕ
  rows : List ℕ
  cols : List ℕ
  N : List ℤ
  G : List ℤ
  qg : ℕ
  m : ℕ

/-- `θ′_k`, `k = 0..3` ↔ corner entries `(1,1), (1,2), (2,1), (2,2)`. -/
def thpT (h : List ℕ) (qm : List CT) (T : T1D) (k : ℕ) : CT :=
  let a := k / 2 + 1
  let b := k % 2 + 1
  let s : ℤ := if T.g % 2 = 1 then -1 else 1
  lin h [(wT s, qpT qm T.g T.rows T.cols a b), (wT (-s), qpT qm T.g T.rows T.cols a 0),
    (wT (-s), qpT qm T.g T.rows T.cols 0 b), (wT s, qpT qm T.g T.rows T.cols 0 0)]

/-- `v = G (θ′ + 2πN − θ₀_l)`, embedded in a `6 × 6` list (entries `0..3`). -/
def vT (h : List ℕ) (qm : List CT) (T : T1D) (Bl : BallD) : List CT :=
  let y := l4 fun k => lin h [(wT 1, thpT h qm T k),
    (wT 1, addRho (const (gi T.N k * twoPiZ - gi Bl.th0 k, 0)) (2 * (gi T.N k).natAbs))]
  let v := l4 fun i => lin h (l4 fun k => ((gi T.G (4 * i + k), 0), gT y k))
  l36 fun e => if e < 4 then gT v e else const (0, 0)

/-- `‖I − G M‖_F ≤ q` (all on the grid, compared through squares). -/
def qOK (G M : List ℤ) (qg : ℕ) : Bool :=
  decide ((l16 fun q => ((if q / 4 = q % 4 then (2 : ℤ) ^ (2 * pp) else 0) -
    (l4 fun k => gi G (4 * (q / 4) + k) * gi M (4 * k + q % 4)).sum).natAbs ^ 2).sum ≤ (qg * 2 ^ pp) ^ 2)

/-- **The T1 check** on the core's models. -/
def t1OK (h : List ℕ) (qm km : List CT) (T : T1D) (Bl : BallD) (rl : ℕ) : Bool :=
  decide (T.g < 4) && decide (T.qg < 2 ^ pp) && qOK T.G Bl.Mth T.qg &&
    decide (T.m * 2 ^ pp < (2 ^ pp - T.qg) * rl) && boundOK h T.m (vT h qm T Bl) &&
    signOK h Bl.o (psi3T h (blockT km T.g T.rows T.cols 0 3)) &&
    signOK h (-Bl.o) (psi3T h (blockT km T.g T.rows T.cols 3 0))

end NoFourMUBs.KernelAtlas.Seed
