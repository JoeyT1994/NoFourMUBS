import KernelAtlas.Seed.T1
import NoFourMUBs.SeedAtlas.Transfer

/-!
# Soundness of the T1 check (`t1OK_sound`, `t1Box_sound`)
-/

open Complex Matrix Hadamard6 NoFourMUBs.Side NoFourMUBs.Step2 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Seed

lemma hasAll_l4 {u : Fin 4 → ℝ} {g : ℕ → (ℤ × ℤ) × CT} {x : ℕ → ℂ} (h : ∀ k < 4, (g k).2.Has u (x k)) :
    HasAll u (l4 g) (l4 x) := by
  simp only [l4, HasAll]
  exact ⟨h 0 (by norm_num), h 1 (by norm_num), h 2 (by norm_num), h 3 (by norm_num), trivial⟩

lemma valS_l4 (g : ℕ → (ℤ × ℤ) × CT) (x : ℕ → ℂ) :
    valS (l4 g) (l4 x) = ∑ k : Fin 4, cz (g k).1 * x k := by
  simp only [l4, valS, Fin.sum_univ_four]; simp; ring

lemma l16_sum {M : Type} [AddCommMonoid M] (f : ℕ → M) :
    (l16 f).sum = ∑ i : Fin 4, ∑ k : Fin 4, f (4 * i + k) := by
  simp only [l16, List.sum_cons, List.sum_nil, Fin.sum_univ_four, Fin.val_zero, Fin.val_one, Fin.val_two,
    show ((3 : Fin 4) : ℕ) = 3 from rfl]
  norm_num
  abel

/-- A grid `4 × 4` matrix (row-major). -/
def Gmat (G : List ℤ) : Matrix (Fin 4) (Fin 4) ℝ := fun i k => rq (gi G (4 * i + k))

lemma MthR_eq (B : BallD) : MthR B = Gmat B.Mth := rfl

lemma qOK_sound {G M : List ℤ} {qg : ℕ} (h : qOK G M qg = true) :
    ∑ i, ∑ k, (1 - Gmat G * Gmat M) i k ^ 2 ≤ rn qg ^ 2 := by
  unfold qOK at h
  rw [decide_eq_true_eq] at h
  set X : Fin 4 → Fin 4 → ℤ := fun i k => (if (i : ℕ) = k then (2 : ℤ) ^ (2 * pp) else 0) -
    ∑ j : Fin 4, gi G (4 * i + j) * gi M (4 * j + k) with hX
  have hl : (l16 fun q => ((if q / 4 = q % 4 then (2 : ℤ) ^ (2 * pp) else 0) -
      (l4 fun k => gi G (4 * (q / 4) + k) * gi M (4 * k + q % 4)).sum).natAbs ^ 2).sum =
      ∑ i : Fin 4, ∑ k : Fin 4, (X i k).natAbs ^ 2 := by
    rw [l16_sum]
    refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun k _ => ?_
    have h1 : (4 * (i : ℕ) + k) / 4 = i := by omega
    have h2 : (4 * (i : ℕ) + k) % 4 = k := by omega
    simp only [h1, h2, hX, l4_sum]
  rw [hl] at h
  have hT := two_pow_pos pp
  have h2T : (2 : ℝ) ^ (2 * pp) = 2 ^ pp * 2 ^ pp := by rw [two_mul, pow_add]
  have hx : ∀ i k, (1 - Gmat G * Gmat M) i k = (X i k : ℝ) / 2 ^ (2 * pp) := by
    intro i k
    have e1 : ∀ j : Fin 4, Gmat G i j * Gmat M j k =
        ((gi G (4 * i + j) : ℝ) * (gi M (4 * j + k) : ℝ)) / (2 ^ pp * 2 ^ pp) := fun j => by
      unfold Gmat rq; rw [div_mul_div_comm]
    simp only [Matrix.sub_apply, Matrix.one_apply, Matrix.mul_apply, e1, ← Finset.sum_div, hX, h2T]
    push_cast
    by_cases hik : i = k
    · subst hik; simp only [if_true]; field_simp; rw [h2T]; ring
    · have : (i : ℕ) ≠ k := fun e => hik (Fin.ext e)
      simp only [hik, this, if_false]; field_simp; ring
  have h' : (∑ i : Fin 4, ∑ k : Fin 4, (X i k : ℝ) ^ 2) ≤ ((qg : ℝ) * 2 ^ pp) ^ 2 := by
    have : (((∑ i : Fin 4, ∑ k : Fin 4, (X i k).natAbs ^ 2 : ℕ)) : ℝ) ≤ ((qg * 2 ^ pp : ℕ) : ℝ) ^ 2 := by
      exact_mod_cast h
    push_cast [cast_natAbs_sq] at this
    simpa only [Nat.cast_natAbs, Int.cast_abs, sq_abs] using this
  calc ∑ i, ∑ k, (1 - Gmat G * Gmat M) i k ^ 2 = (∑ i : Fin 4, ∑ k : Fin 4, (X i k : ℝ) ^ 2) / (2 ^ (2 * pp)) ^ 2 := by
        simp only [hx, div_pow, Finset.sum_div]
    _ ≤ ((qg : ℝ) * 2 ^ pp) ^ 2 / (2 ^ (2 * pp)) ^ 2 := div_le_div_of_nonneg_right h' (by positivity)
    _ = rn qg ^ 2 := by unfold rn; rw [h2T]; field_simp

/-! ### The corner phases -/

lemma gphase_apply (k : Fin 4) (Q : RMat6) (x y : I6) :
    gphase k Q x y = (if (k : ℕ) % 2 = 1 then -1 else 1) * (if 2 ≤ (k : ℕ) then Q y x else Q x y) := by
  fin_cases k
  · show Q x y = (if (0 : ℕ) % 2 = 1 then -1 else 1) * (if 2 ≤ (0 : ℕ) then Q y x else Q x y); norm_num
  · show -Q x y = (if (1 : ℕ) % 2 = 1 then -1 else 1) * (if 2 ≤ (1 : ℕ) then Q y x else Q x y); norm_num
  · show Q y x = (if (2 : ℕ) % 2 = 1 then -1 else 1) * (if 2 ≤ (2 : ℕ) then Q y x else Q x y); norm_num
  · show -Q y x = (if (3 : ℕ) % 2 = 1 then -1 else 1) * (if 2 ≤ (3 : ℕ) then Q y x else Q x y); norm_num

lemma has_qpT {u : Fin 4 → ℝ} {qm : List CT} {Q : RMat6} (hQ : ∀ i j, (gT qm (ix i j)).Has u (Q i j : ℂ))
    {g : ℕ} {rows cols : List ℕ} {σ τ : Equiv.Perm I6} (hσ : ∀ i, σ i = permFun rows i)
    (hτ : ∀ j, τ j = permFun cols j) (a b : Fin 3) :
    (qpT qm g rows cols a b).Has u
      ((if 2 ≤ g then Q (τ (.inl b)) (σ (.inl a)) else Q (σ (.inl a)) (τ (.inl b)) : ℝ) : ℂ) := by
  have e1 : pidx rows a = sidx (σ (.inl a)) := by rw [hσ]; rfl
  have e2 : pidx cols b = sidx (τ (.inl b)) := by rw [hτ]; rfl
  unfold qpT
  rw [e1, e2]
  by_cases hg : 2 ≤ g
  · simp only [hg, if_true]; exact hQ _ _
  · simp only [hg, if_false]; exact hQ _ _

lemma has_thpT {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {qm : List CT} {Q : RMat6}
    (hQ : ∀ i j, (gT qm (ix i j)).Has u (Q i j : ℂ)) {T : T1D} {σ τ : Equiv.Perm I6}
    (hσ : ∀ i, σ i = permFun T.rows i) (hτ : ∀ j, τ j = permFun T.cols j) {kk : Fin 4} (hk : (kk : ℕ) = T.g)
    (k : Fin 4) : (thpT h qm T k).Has u (cornerTheta (gphase kk Q) σ τ k : ℂ) := by
  have q := fun a b => has_qpT (g := T.g) hQ hσ hτ a b
  set s : ℤ := if T.g % 2 = 1 then -1 else 1 with hs
  have hval : ∀ a b : Fin 3, cornerD (gphase kk Q) σ τ a b =
      s * (if 2 ≤ T.g then Q (τ (.inl b)) (σ (.inl a)) else Q (σ (.inl a)) (τ (.inl b))) -
      s * (if 2 ≤ T.g then Q (τ (.inl 0)) (σ (.inl a)) else Q (σ (.inl a)) (τ (.inl 0))) -
      s * (if 2 ≤ T.g then Q (τ (.inl b)) (σ (.inl 0)) else Q (σ (.inl 0)) (τ (.inl b))) +
      s * (if 2 ≤ T.g then Q (τ (.inl 0)) (σ (.inl 0)) else Q (σ (.inl 0)) (τ (.inl 0))) := by
    intro a b
    simp only [cornerD, gphase_apply, hk, hs]
    push_cast
    split_ifs <;> ring
  have key : ∀ a b : Fin 3, (lin h [(wT s, qpT qm T.g T.rows T.cols a b), (wT (-s), qpT qm T.g T.rows T.cols a 0),
      (wT (-s), qpT qm T.g T.rows T.cols 0 b), (wT s, qpT qm T.g T.rows T.cols 0 0)]).Has u
        (cornerD (gphase kk Q) σ τ a b : ℂ) := by
    intro a b
    have H := has_lin hu (hasAll_list4 (p := (wT s, qpT qm T.g T.rows T.cols a b))
      (q := (wT (-s), qpT qm T.g T.rows T.cols a 0)) (r := (wT (-s), qpT qm T.g T.rows T.cols 0 b))
      (s := (wT s, qpT qm T.g T.rows T.cols 0 0)) (q a b) (q a 0) (q 0 b) (q 0 0))
    convert H using 1
    rw [hval]
    simp only [valS, cz_wT]
    push_cast; ring
  fin_cases k
  · exact key 1 1
  · exact key 1 2
  · exact key 2 1
  · exact key 2 2

/-! ### Small facts for the T1 theorem -/

lemma rn_lt_one {q : ℕ} (h : q < 2 ^ pp) : rn q < 1 := by
  unfold rn; rw [div_lt_one (two_pow_pos pp)]; exact_mod_cast h

lemma rn_m_lt {m q r : ℕ} (hq : q < 2 ^ pp) (h : m * 2 ^ pp < (2 ^ pp - q) * r) : rn m < (1 - rn q) * rn r := by
  have hT := two_pow_pos pp
  have h' : ((m * 2 ^ pp : ℕ) : ℝ) < ((2 ^ pp - q) * r : ℕ) := by exact_mod_cast h
  rw [Nat.cast_mul, Nat.cast_mul, Nat.cast_sub hq.le] at h'
  push_cast at h'
  unfold rn
  rw [show (1 - (q : ℝ) / 2 ^ pp) * ((r : ℝ) / 2 ^ pp) = ((2 ^ pp - q) * r : ℝ) / 2 ^ pp / 2 ^ pp by field_simp]
  rw [div_lt_div_iff_of_pos_right hT, lt_div_iff₀ hT]
  linarith

lemma sumsq_embed4 (v : Fin 4 → ℝ) :
    sumsq (Matrix.of fun i j => if hix : ix i j < 4 then v ⟨ix i j, hix⟩ else 0) = ∑ k, v k ^ 2 := by
  have e : ∀ i j : I6, (Matrix.of fun i j => if hix : ix i j < 4 then v ⟨ix i j, hix⟩ else 0 : RMat6) i j ^ 2 =
      if hix : ix i j < 4 then v ⟨ix i j, hix⟩ ^ 2 else 0 := fun i j => by
    simp only [Matrix.of_apply]; split_ifs <;> simp
  simp only [sumsq, e, Fintype.sum_sum_type, Fin.sum_univ_three, Fin.sum_univ_four]
  simp only [ix, sidx, Fin.val_zero, Fin.val_one, Fin.val_two]
  norm_num
  rfl

/-- A vector of four models (the rest zero) bounded by `boundOK` is bounded in the Euclidean norm. -/
lemma wnorm_le_of_bound {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {vl : List CT} {v : Fin 4 → ℝ}
    (hvk : ∀ i : Fin 4, (gT vl i).Has u (v i : ℂ)) (hz : ∀ e, 4 ≤ e → gT vl e = const (0, 0)) {m : ℕ}
    (hb : boundOK h m vl = true) : wnorm v ≤ rn m := by
  have hRm : ∀ i j, (gT vl (ix i j)).Has u
      ((Matrix.of fun i j => if hix : ix i j < 4 then v ⟨ix i j, hix⟩ else 0 : RMat6) i j : ℂ) := fun i j => by
    simp only [Matrix.of_apply]
    by_cases hix : ix i j < 4
    · rw [dif_pos hix]; exact hvk ⟨ix i j, hix⟩
    · rw [dif_neg hix, hz _ (by omega)]; exact has_zero' u
  have := boundOK_sound hu hRm hb
  rwa [frob_eq_sqrt, sumsq_embed4] at this

lemma vT_zero (h : List ℕ) (qm : List CT) (T : T1D) (Bl : BallD) (e : ℕ) (he : 4 ≤ e) :
    gT (vT h qm T Bl) e = const (0, 0) := by
  by_cases h36 : e < 36
  · rw [vT, gT_l36 _ h36, if_neg (by omega)]
  · exact gT_ge _ (by simp [vT, l36]; omega)

/-! ### The T1 theorem -/

/-- **The T1 check is sound**: the corner condition of the target ball at `(g, σ, τ)`. -/
theorem t1OK_sound {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {qm km : List CT} {Q : RMat6}
    (hH : Hadamard6.IsHadamard (phaseMat Q))
    (hQ : ∀ i j, (gT qm (ix i j)).Has u (Q i j : ℂ)) (hK : ∀ i j, (gT km (ix i j)).Has u (phaseMat Q i j))
    {T : T1D} {Bl : BallD} {rl : ℕ} (hok : t1OK h qm km T Bl rl = true)
    {σ τ : Equiv.Perm I6} (hσ : ∀ i, σ i = permFun T.rows i) (hτ : ∀ j, τ j = permFun T.cols j)
    {kk : Fin 4} (hk : (kk : ℕ) = T.g) {ol : ℤˣ} (hol : Bl.o = (ol : ℤ)) (hM : IsUnit (MthR Bl).det) :
    (∃ w', wnorm w' < rn rl ∧
        leadingBlock (cornerMat kk σ τ (phaseMat Q)) = seedCorner (seedOf (th0R Bl + MthR Bl *ᵥ w'))) ∧
      0 < osgn ol * (psi (rightBlock (cornerMat kk σ τ (phaseMat Q)))).im ∧
      0 < -osgn ol * (psi (lowerBlock (cornerMat kk σ τ (phaseMat Q)))).im := by
  unfold t1OK at hok
  simp only [Bool.and_eq_true, decide_eq_true_eq] at hok
  obtain ⟨⟨⟨⟨⟨⟨-, hq1⟩, hqok⟩, hmr⟩, hbd⟩, hsB⟩, hsC⟩ := hok
  have hos : osgn ol = (Bl.o : ℝ) := by simp [osgn, hol]
  have ho' : Bl.o = 1 ∨ Bl.o = -1 := by rcases Int.units_eq_one_or ol with h1 | h1 <;> simp [hol, h1]
  have ho'' : -Bl.o = 1 ∨ -Bl.o = -1 := by rcases ho' with h1 | h1 <;> simp [h1]
  refine ⟨?_, ?_, ?_⟩
  -- the corner seed
  · set θ' := cornerTheta (gphase kk Q) σ τ with hθ'
    set Nv : Fin 4 → ℤ := fun k => gi T.N k with hNv
    set y : Fin 4 → ℝ := θ' + (2 * Real.pi) • (fun k => (Nv k : ℝ)) - th0R Bl with hy
    set v := Gmat T.G *ᵥ y with hv
    -- the models of `y` and `v`
    have hyk : ∀ k : Fin 4, (lin h [(wT 1, thpT h qm T k), (wT 1, addRho (const (gi T.N k * twoPiZ - gi Bl.th0 k, 0))
        (2 * (gi T.N k).natAbs))]).Has u (y k : ℂ) := fun k => by
      have H := has_lin hu (hasAll_list (p := (wT 1, thpT h qm T k))
        (q := (wT 1, addRho (const (gi T.N k * twoPiZ - gi Bl.th0 k, 0)) (2 * (gi T.N k).natAbs)))
        (has_thpT hu hQ hσ hτ hk k) (has_twoPiN u (gi T.N k) (gi Bl.th0 k)))
      convert H using 1
      simp only [valS, cz_wT, hy, hNv, Pi.add_apply, Pi.sub_apply, Pi.smul_apply, smul_eq_mul, th0R]
      push_cast; ring
    set ylist := l4 fun k => lin h [(wT 1, thpT h qm T k), (wT 1, addRho (const (gi T.N k * twoPiZ - gi Bl.th0 k, 0))
        (2 * (gi T.N k).natAbs))] with hylist
    have hvk : ∀ i : Fin 4, (gT (vT h qm T Bl) i).Has u (v i : ℂ) := fun i => by
      have e : gT (vT h qm T Bl) i = lin h (l4 fun k => ((gi T.G (4 * i + k), 0), gT ylist k)) := by
        rw [vT, gT_l36 _ (by omega), if_pos i.2, gT_l4 _ i.2]
      rw [e]
      have H := has_lin hu (hasAll_l4 (g := fun k => ((gi T.G (4 * i + k), 0), gT ylist k))
        (x := fun k => if hk : k < 4 then (y ⟨k, hk⟩ : ℂ) else 0) (fun k hk => by
          simp only [dif_pos hk]; rw [hylist, gT_l4 _ hk]; exact hyk ⟨k, hk⟩))
      convert H using 1
      rw [valS_l4]
      simp only [Fin.is_lt, ↓reduceDIte, Fin.eta, cz_real, hv, Matrix.mulVec, dotProduct, Gmat, rq]
      push_cast
      rfl
    -- the norm of `v`, and the ellipsoid
    obtain ⟨w', hw', hMw⟩ := ellipsoid hM (rn_nonneg _) (by rw [MthR_eq]; exact qOK_sound hqok) (rn_lt_one hq1)
      (wnorm_le_of_bound hu hvk (vT_zero h qm T Bl) hbd) (rn_m_lt hq1 hmr)
    refine ⟨w', hw', ?_⟩
    have e : th0R Bl + MthR Bl *ᵥ w' = θ' + (2 * Real.pi) • fun k => (Nv k : ℝ) := by
      rw [hMw, hy]; abel
    rw [e, seedOf_add_winding, hθ', leadingBlock_cornerMat_phaseMat]
  -- the signs
  · rw [psi_rightBlock_cornerMat kk σ τ hH, hos]
    have hb := has3_blockR hK kk hσ hτ
    rw [hk] at hb
    exact sign3Any_sound hu hb ho' hsB
  · rw [psi_lowerBlock_cornerMat kk σ τ hH, hos]
    have hb := has3_blockC hK kk hσ hτ
    rw [hk] at hb
    have := sign3Any_sound hu hb ho'' hsC
    push_cast at this; linarith

/-- **T1 on a box**: the core plus the T1 check give the target claim. -/
theorem t1Box_sound {B : BallD} {D : BoxD} (hcore : coreOK B D = true) {o : ℤˣ} (ho : B.o = (o : ℤ))
    {T : T1D} {Bl : BallD} {rl : ℕ} (hT : t1OK D.hb (qModels B D) (kModels B D) T Bl rl = true)
    {σ τ : Equiv.Perm I6} (hσ : ∀ i, σ i = permFun T.rows i) (hτ : ∀ j, τ j = permFun T.cols j)
    {kk : Fin 4} (hk : (kk : ℕ) = T.g) {ol : ℤˣ} (hol : Bl.o = (ol : ℤ)) (hM : IsUnit (MthR Bl).det)
    {u : Fin 4 → ℝ} (hu : InBox D.hb u) :
    ∃ K, Hadamard6.IsHadamard K ∧ MatchedO o (seedOf (th0R B + MthR B *ᵥ wOf D u)) K ∧
      (∃ w', wnorm w' < rn rl ∧
        leadingBlock (cornerMat kk σ τ K) = seedCorner (seedOf (th0R Bl + MthR Bl *ᵥ w'))) ∧
      0 < osgn ol * (psi (rightBlock (cornerMat kk σ τ K))).im ∧
      0 < -osgn ol * (psi (lowerBlock (cornerMat kk σ τ K))).im := by
  obtain ⟨-, Q, hH, hMt, hQ, hK⟩ := core_sound hcore ho hu
  exact ⟨phaseMat Q, hH, hMt, t1OK_sound hu hH hQ hK hT hσ hτ hk hol hM⟩

end NoFourMUBs.KernelAtlas.Seed
