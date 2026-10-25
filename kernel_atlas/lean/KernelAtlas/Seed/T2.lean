import KernelAtlas.Seed.Core

/-!
# The transfer T2 on a seed-boundary box (`FORMAT.md` §4)

On a box of the seed sphere, the C1 core (`coreOK`, run over the box) encloses the phases `Q` of the matched
completion.  T2 into a record `t` with alignment `(g, rows, cols)` and winding `N`: with `Q″ = π(g·Q)`
(`SignedPerm.act`), `‖hor(Q″ + 2πN − P_t)‖_F ≤ n_b`, where the target centre is given on the grid (`Pt`); the strict
inequality `n_b + ‖P_grid − P_t‖ < R_t` is the target's business (exact, at assembly).

The 36 entries of `36·hor(Y)` are computed by exact integer combinations (`lin` with integer weights) of the
models of `Y = Q″ + 2πN − P`, and bounded by `boundOK`.
-/

open Complex Matrix Hadamard6 NoFourMUBs.Side NoFourMUBs.Step2 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Seed

/-! ### Permutations of the six indices given as lists -/

/-- `0,1,2 ↦ inl`, `3,4,5 ↦ inr` (and anything larger somewhere in `inr`). -/
def toI6 (k : ℕ) : I6 := if h : k < 3 then .inl ⟨k, h⟩ else .inr ⟨(k - 3) % 3, Nat.mod_lt _ (by norm_num)⟩

lemma toI6_sidx (i : I6) : toI6 (sidx i) = i := by
  rcases i with i | i
  · simp [toI6, sidx, i.2]
  · have h : ¬ ((i : ℕ) + 3 < 3) := by omega
    have h2 := i.2
    show toI6 (i + 3) = .inr i
    unfold toI6; rw [dif_neg h]
    congr 1; exact Fin.ext (by simp only [Nat.add_sub_cancel]; omega)

/-- The index map of a list (entry `sidx i` of the list). -/
def permFun (l : List ℕ) (i : I6) : I6 := toI6 (l.getD (sidx i) 0)

/-- `sidx (permFun l i)`, computed on naturals. -/
def pidx (l : List ℕ) (a : ℕ) : ℕ := sidx (toI6 (l.getD a 0))

lemma pidx_sidx (l : List ℕ) (i : I6) : pidx l (sidx i) = sidx (permFun l i) := rfl

def all6 (f : I6 → Bool) : Bool :=
  f (.inl 0) && f (.inl 1) && f (.inl 2) && f (.inr 0) && f (.inr 1) && f (.inr 2)

lemma all6_spec {f : I6 → Bool} (h : all6 f = true) : ∀ i, f i = true := by
  unfold all6 at h
  simp only [Bool.and_eq_true] at h
  obtain ⟨⟨⟨⟨⟨h0, h1⟩, h2⟩, h3⟩, h4⟩, h5⟩ := h
  intro i; rcases i with i | i <;> fin_cases i <;> assumption

/-- The list is a permutation: its index map is injective. -/
def permOK (l : List ℕ) : Bool := all6 fun i => all6 fun j => decide (permFun l i = permFun l j → i = j)

lemma permOK_inj {l : List ℕ} (h : permOK l = true) : Function.Injective (permFun l) := by
  intro i j hij
  exact of_decide_eq_true (all6_spec (all6_spec h i) j) hij

/-- The permutation of a list that passes `permOK`. -/
def permOf (l : List ℕ) (h : permOK l = true) : Equiv.Perm I6 :=
  Equiv.ofBijective (permFun l) (Finite.injective_iff_bijective.1 (permOK_inj h))

lemma permOf_apply (l : List ℕ) (h : permOK l = true) (i : I6) : permOf l h i = permFun l i := rfl

/-! ### Flat indices -/

lemma ix_div6 (i j : I6) : ix i j / 6 = sidx i := by
  have := sidx_lt j; unfold ix; omega

lemma ix_mod6 (i j : I6) : ix i j % 6 = sidx j := by
  have := sidx_lt j; unfold ix; omega

/-- Sums over six natural indices as sums over `I6`. -/
lemma sum_fin6_I6 {M : Type} [AddCommMonoid M] (f : ℕ → M) :
    ∑ k : Fin 6, f k = ∑ j : I6, f (sidx j) := by
  simp only [Fin.sum_univ_six, Fintype.sum_sum_type, Fin.sum_univ_three, sidx, Fin.val_zero, Fin.val_one,
    Fin.val_two]
  norm_num
  abel

/-- An integer weight on the grid. -/
def wT (k : ℤ) : ℤ × ℤ := (k * 2 ^ pp, 0)

lemma cz_wT (k : ℤ) : cz (wT k) = k := by
  have hT := two_pow_pos pp
  rw [cz_eq]
  simp only [wT, Int.cast_zero, zero_div, Complex.ofReal_zero, zero_mul, add_zero, Int.cast_mul, Int.cast_pow,
    Int.cast_ofNat]
  rw [mul_div_cancel_right₀ _ hT.ne']
  norm_cast

/-! ### The T2 data and check -/

/-- A T2 target: alignment `(g, rows, cols)` as `tr` (transpose), `cj` (conjugate), the winding `N` and the grid
centre `Pt` (36 entries, row-major in the target's coordinates), and the bound `nb`. -/
structure T2D where
  rows : List ℕ
  cols : List ℕ
  tr : Bool
  cj : Bool
  N : List ℤ
  Pt : List ℤ
  nb : ℕ

/-- The flat index in `Q` of `Q″_e` (`e = 6a + b`). -/
def t2src (T : T2D) (e : ℕ) : ℕ :=
  if T.tr then 6 * pidx T.cols (e % 6) + pidx T.rows (e / 6) else 6 * pidx T.rows (e / 6) + pidx T.cols (e % 6)

/-- The model of `Y_e = ±Q_{src} + 2πN_e − Pt_e`. -/
def x2T (h : List ℕ) (T : T2D) (qm : List CT) (e : ℕ) : CT :=
  lin h [(wT (if T.cj then -1 else 1), gT qm (t2src T e)),
    (wT 1, addRho (const (gi T.N e * twoPiZ - gi T.Pt e, 0)) (2 * (gi T.N e).natAbs))]

/-- Row sums, column sums, total, and `36 · hor`. -/
def hor36T (h : List ℕ) (X : List CT) : List CT :=
  let R := l6 fun a => lin h (l6 fun b => (wT 1, gT X (6 * a + b)))
  let C := l6 fun b => lin h (l6 fun a => (wT 1, gT X (6 * a + b)))
  let S := lin h (l6 fun a => (wT 1, gT R a))
  l36 fun e => lin h [(wT 36, gT X e), (wT (-6), gT R (e / 6)), (wT (-6), gT C (e % 6)), (wT 1, S)]

/-- **The T2 check** on the core's phase models `qm`. -/
def t2OK (h : List ℕ) (qm : List CT) (T : T2D) : Bool :=
  boundOK h (36 * T.nb) (hor36T h (l36 (x2T h T qm)))

/-! ### Soundness -/

/-- The grid centre and the winding as matrices. -/
def Pg (Pt : List ℤ) : RMat6 := Matrix.of fun i j => rq (gi Pt (ix i j))
def Nmat (N : List ℤ) : Matrix I6 I6 ℤ := Matrix.of fun i j => gi N (ix i j)

lemma hasAll_list {u : Fin 4 → ℝ} {p q : (ℤ × ℤ) × CT} {x y : ℂ} (hp : p.2.Has u x) (hq : q.2.Has u y) :
    HasAll u [p, q] [x, y] := ⟨hp, hq, trivial⟩

lemma hasAll_list4 {u : Fin 4 → ℝ} {p q r s : (ℤ × ℤ) × CT} {x y z t : ℂ} (hp : p.2.Has u x) (hq : q.2.Has u y)
    (hr : r.2.Has u z) (hs : s.2.Has u t) : HasAll u [p, q, r, s] [x, y, z, t] := ⟨hp, hq, hr, hs, trivial⟩

lemma has_twoPiN (u : Fin 4 → ℝ) (N P : ℤ) :
    (addRho (const (N * twoPiZ - P, 0)) (2 * N.natAbs)).Has u ((2 * Real.pi * N - rq P : ℝ) : ℂ) := by
  refine has_addRho (has_const _ u) ?_
  rw [cz_real]
  rw [← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs]
  have hb := twoPi_bound
  have e : 2 * Real.pi * N - rq P - (((N * twoPiZ - P : ℤ) : ℝ) / 2 ^ pp) =
      -((N : ℝ) * ((twoPiZ : ℝ) / 2 ^ pp - 2 * Real.pi)) := by
    unfold rq; push_cast; ring
  rw [e, abs_neg, abs_mul]
  calc |(N : ℝ)| * |(twoPiZ : ℝ) / 2 ^ pp - 2 * Real.pi| ≤ |(N : ℝ)| * (2 / 2 ^ pp) :=
        mul_le_mul_of_nonneg_left hb (abs_nonneg _)
    _ = rn (2 * N.natAbs) := by unfold rn; push_cast [Nat.cast_natAbs, Int.cast_abs]; ring

/-- `hor` scaled by 36, entrywise. -/
lemma hor36_apply (Y : RMat6) (i j : I6) :
    36 * hor Y i j = 36 * Y i j - 6 * ∑ j', Y i j' - 6 * ∑ i', Y i' j + ∑ i', ∑ j', Y i' j' := by
  rw [hor_apply]; simp only [rowMean, colMean, allMean]; ring

theorem t2OK_sound {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {qm : List CT} {Q : RMat6}
    (hQ : ∀ i j, (gT qm (ix i j)).Has u (Q i j : ℂ)) {T : T2D} (hok : t2OK h qm T = true)
    {σ τ : Equiv.Perm I6} (hσ : ∀ i, σ i = permFun T.rows i) (hτ : ∀ j, τ j = permFun T.cols j) :
    frob (hor ((SignedPerm.mk σ τ T.tr T.cj).act Q + wind (Nmat T.N) - Pg T.Pt)) ≤ rn T.nb := by
  set A : SignedPerm := SignedPerm.mk σ τ T.tr T.cj with hA
  set Y : RMat6 := A.act Q + wind (Nmat T.N) - Pg T.Pt with hY
  set X := l36 (x2T h T qm) with hX
  -- the entries of `Y`
  have hXY : ∀ i j, (gT X (ix i j)).Has u (Y i j : ℂ) := by
    intro i j
    rw [hX, gT_l36 _ (ix_lt i j)]
    have hsrc : (gT qm (t2src T (ix i j))).Has u
        ((if T.tr then Q (τ j) (σ i) else Q (σ i) (τ j) : ℝ) : ℂ) := by
      unfold t2src
      rw [ix_div6, ix_mod6, pidx_sidx, pidx_sidx, ← hσ, ← hτ]
      by_cases ht : T.tr
      · simp only [ht, if_true]; exact hQ _ _
      · simp only [ht, Bool.false_eq_true, if_false]; exact hQ _ _
    have H : (x2T h T qm (ix i j)).Has u _ := has_lin hu
      (hasAll_list (p := (wT (if T.cj then -1 else 1), gT qm (t2src T (ix i j))))
        (q := (wT 1, addRho (const (gi T.N (ix i j) * twoPiZ - gi T.Pt (ix i j), 0))
          (2 * (gi T.N (ix i j)).natAbs))) hsrc (has_twoPiN u (gi T.N (ix i j)) (gi T.Pt (ix i j))))
    convert H using 1
    simp only [valS, cz_wT, hY, hA, Matrix.sub_apply, Matrix.add_apply, SignedPerm.act, SignedPerm.sgn,
      Matrix.of_apply, wind, Matrix.smul_apply, Matrix.map_apply, Nmat, Pg, smul_eq_mul, Matrix.transpose_apply]
    by_cases hc : T.cj <;> by_cases ht : T.tr <;> simp [hc, ht] <;> ring
  -- the flat form
  set Yf : ℕ → ℝ := fun e => Y (toI6 (e / 6)) (toI6 (e % 6)) with hYf
  have hYf' : ∀ i j, Yf (ix i j) = Y i j := fun i j => by simp only [hYf, ix_div6, ix_mod6, toI6_sidx]
  have hXf : ∀ e < 36, (gT X e).Has u (Yf e : ℂ) := fun e he => by
    have h1 : e = ix (toI6 (e / 6)) (toI6 (e % 6)) := by
      unfold ix toI6 sidx
      by_cases a : e / 6 < 3 <;> by_cases b : e % 6 < 3 <;> simp [a, b] <;> omega
    rw [h1, hYf']; exact hXY _ _
  -- rows, columns, total
  set R := l6 fun a => lin h (l6 fun b => (wT 1, gT X (6 * a + b))) with hR
  set C := l6 fun b => lin h (l6 fun a => (wT 1, gT X (6 * a + b))) with hC
  set S := lin h (l6 fun a => (wT 1, gT R a)) with hS
  have hRow : ∀ i : I6, (gT R (sidx i)).Has u ((∑ j', Y i j' : ℝ) : ℂ) := fun i => by
    rw [hR, gT_l6 _ (sidx_lt i)]
    have H := has_lin hu (hasAll_l6 (g := fun b => (wT 1, gT X (6 * sidx i + b)))
      (x := fun b => (Yf (6 * sidx i + b) : ℂ)) (fun k hk => hXf _ (by have := sidx_lt i; omega)))
    convert H using 1
    rw [valS_l6]; simp only [cz_wT, Int.cast_one, one_mul]
    rw [sum_fin6_I6 (fun b => (Yf (6 * sidx i + b) : ℂ))]
    push_cast
    exact Finset.sum_congr rfl fun j _ => by rw [show 6 * sidx i + sidx j = ix i j from rfl, hYf']
  have hCol : ∀ j : I6, (gT C (sidx j)).Has u ((∑ i', Y i' j : ℝ) : ℂ) := fun j => by
    rw [hC, gT_l6 _ (sidx_lt j)]
    have H := has_lin hu (hasAll_l6 (g := fun a => (wT 1, gT X (6 * a + sidx j)))
      (x := fun a => (Yf (6 * a + sidx j) : ℂ)) (fun k hk => hXf _ (by have := sidx_lt j; omega)))
    convert H using 1
    rw [valS_l6]; simp only [cz_wT, Int.cast_one, one_mul]
    rw [sum_fin6_I6 (fun a => (Yf (6 * a + sidx j) : ℂ))]
    push_cast
    exact Finset.sum_congr rfl fun i _ => by rw [show 6 * sidx i + sidx j = ix i j from rfl, hYf']
  have hTot : S.Has u ((∑ i', ∑ j', Y i' j' : ℝ) : ℂ) := by
    rw [hS]
    set Rf : ℕ → ℂ := fun a => ((∑ j', Y (toI6 a) j' : ℝ) : ℂ) with hRf
    have H := has_lin hu (hasAll_l6 (g := fun a => (wT 1, gT R a)) (x := Rf) (fun k hk => by
      have := hRow (toI6 k)
      have e : sidx (toI6 k) = k := by unfold toI6 sidx; split_ifs <;> simp <;> omega
      rwa [e] at this))
    convert H using 1
    rw [valS_l6]; simp only [cz_wT, Int.cast_one, one_mul]
    rw [sum_fin6_I6 Rf]
    simp only [hRf, toI6_sidx]
    push_cast; rfl
  -- `36 hor Y`
  have hH : ∀ i j, (gT (hor36T h X) (ix i j)).Has u (((36 : ℝ) • hor Y) i j : ℂ) := by
    intro i j
    have e : hor36T h X = l36 fun e => lin h [(wT 36, gT X e), (wT (-6), gT R (e / 6)), (wT (-6), gT C (e % 6)),
        (wT 1, S)] := rfl
    rw [e, gT_l36 _ (ix_lt i j), ix_div6, ix_mod6]
    have H := has_lin hu (hasAll_list4 (p := (wT 36, gT X (ix i j))) (q := (wT (-6), gT R (sidx i)))
      (r := (wT (-6), gT C (sidx j))) (s := (wT 1, S)) (hXY i j) (hRow i) (hCol j) hTot)
    convert H using 1
    simp only [valS, cz_wT, Matrix.smul_apply, smul_eq_mul]
    rw [hor36_apply]
    push_cast; ring
  have hb := boundOK_sound hu hH hok
  rw [frob_smul, abs_of_pos (by norm_num : (0 : ℝ) < 36)] at hb
  rw [show (36 * T.nb : ℕ) = 36 * T.nb from rfl] at hb
  unfold rn at hb ⊢
  push_cast at hb
  have : frob (hor Y) ≤ (T.nb : ℝ) / 2 ^ pp := by
    have h36 : (0 : ℝ) < 36 := by norm_num
    rw [mul_div_assoc] at hb
    exact le_of_mul_le_mul_left hb h36
  exact this

/-- **T2 on a box**: the core plus the T2 check give the target claim with the grid centre. -/
theorem t2Box_sound {B : BallD} {D : BoxD} (hcore : coreOK B D = true) {o : ℤˣ} (ho : B.o = (o : ℤ))
    {T : T2D} (hT : t2OK D.hb (qModels B D) T = true) {σ τ : Equiv.Perm I6} (hσ : ∀ i, σ i = permFun T.rows i)
    (hτ : ∀ j, τ j = permFun T.cols j) {u : Fin 4 → ℝ} (hu : InBox D.hb u) :
    ∃ Q : RMat6, Hadamard6.IsHadamard (phaseMat Q) ∧
      MatchedO o (seedOf (th0R B + MthR B *ᵥ wOf D u)) (phaseMat Q) ∧
      frob (hor ((SignedPerm.mk σ τ T.tr T.cj).act Q + wind (Nmat T.N) - Pg T.Pt)) ≤ rn T.nb := by
  obtain ⟨-, Q, hH, hM, hQ, -⟩ := core_sound hcore ho hu
  exact ⟨Q, hH, hM, t2OK_sound hu hQ hT hσ hτ⟩

end NoFourMUBs.KernelAtlas.Seed
