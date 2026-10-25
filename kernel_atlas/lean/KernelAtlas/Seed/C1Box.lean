import KernelAtlas.Seed.C1Forced
import KernelAtlas.Seed.C1Bound

/-!
# Soundness of the C1 box check, part 5: the phases and the box theorem

`c1Box_sound`: if `c1Box B D = true`, then for every `u` in the box, at `w = w_c + u`,
`θ(w) = θ₀ + M_θ w` is strict and the matched completion with orientation `o` at `θ(w)` is `e^{iQ}` with
`‖Q − P − U w − 2πN‖_F ≤ n` — the conclusion of the field `hC1` of `SeedBallCert` at the point `w`.

`Q` is read off the models: `0` on the first row and column, `θ` in the corner, the side phases (`side_sound`), and
`arg D` (`has_argT`, `|D_ab| = 1` from the Hadamard property).  `Qf` mirrors `QT` index by index.
-/

open Complex Matrix Hadamard6 NoFourMUBs.Side NoFourMUBs.Step2 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Seed

/-! ### Natural-index extensions -/

def e4 (f : Fin 4 → ℝ) (k : ℕ) : ℝ := if hk : k < 4 then f ⟨k, hk⟩ else 0
def e6 (f : Fin 6 → ℝ) (k : ℕ) : ℝ := if hk : k < 6 then f ⟨k, hk⟩ else 0
def e9 (f : Fin 3 → Fin 3 → ℝ) (k : ℕ) : ℝ := if hk : k < 9 then f ⟨k / 3, by omega⟩ ⟨k % 3, by omega⟩ else 0

lemma gT_ge (l : List CT) {k : ℕ} (hk : l.length ≤ k) : gT l k = const (0, 0) := by
  unfold gT; exact List.getD_eq_default _ _ hk

lemma has_zero' (u : Fin 4 → ℝ) : (const (0, 0)).Has u ((0 : ℝ) : ℂ) := by
  rw [Complex.ofReal_zero]; exact has_zero u

/-! ### The phase representative -/

/-- Entry `e = 6a + b` of the phases (mirrors `QT`). -/
def Qf (θ φH φV Φ : ℕ → ℝ) (e : ℕ) : ℝ :=
  if e / 6 = 0 ∨ e % 6 = 0 then 0
  else if e / 6 < 3 ∧ e % 6 < 3 then θ (2 * (e / 6 - 1) + (e % 6 - 1))
  else if e / 6 < 3 then φH (3 * (e / 6 - 1) + (e % 6 - 3))
  else if e % 6 < 3 then φV (3 * (e % 6 - 1) + (e / 6 - 3))
  else Φ (3 * (e / 6 - 3) + (e % 6 - 3))

theorem has_QT {h : List ℕ} {u : Fin 4 → ℝ} {th sH sV argD : List CT} {θ φH φV Φ : ℕ → ℝ}
    (hth : ∀ k, (gT th k).Has u (θ k : ℂ)) (hH : ∀ k, (gT sH k).Has u (φH k : ℂ))
    (hV : ∀ k, (gT sV k).Has u (φV k : ℂ)) (hA : ∀ k, (gT argD k).Has u (Φ k : ℂ)) {e : ℕ} (he : e < 36) :
    (gT (QT h th sH sV argD) e).Has u (Qf θ φH φV Φ e : ℂ) := by
  rw [QT, gT_l36 _ he]
  simp only [Qf]
  split_ifs
  all_goals first | exact has_zero' u | exact hth _ | exact hH _ | exact hV _ | exact hA _

/-! ### The residual -/

lemma twoPi_bound : |(twoPiZ : ℝ) / 2 ^ pp - 2 * Real.pi| ≤ 2 / 2 ^ pp := by
  have h1 := Real.pi_gt_d20
  have h2 := Real.pi_lt_d20
  have hT : (2 : ℝ) ^ pp = 1152921504606846976 := by norm_num [pp]
  rw [hT, abs_le]
  unfold twoPiZ
  constructor <;> norm_num <;> linarith

/-- Models with the same coefficients (as numbers) and a smaller remainder. -/
lemma has_congr {T1 T2 : CT} {u : Fin 4 → ℝ} {x : ℂ} (hc : ∀ m < 15, cz (T1.cg m) = cz (T2.cg m))
    (hρ : T1.ρ ≤ T2.ρ) (h : T1.Has u x) : T2.Has u x := by
  unfold CT.Has at *
  have : T1.eval u = T2.eval u := Finset.sum_congr rfl fun m hm => by rw [hc m (Finset.mem_range.1 hm)]
  rw [← this]; exact h.trans (rn_mono hρ)

/-- One residual model: `Q_e − P_e − Σ U_el (w_c,l + u_l) − 2πN_e`. -/
theorem has_resQ1 {u : Fin 4 → ℝ} {A : CT} {x : ℝ} (hx : A.Has u (x : ℂ)) (P : ℤ) (U wc : ℕ → ℤ) (N : ℤ) :
    (mk (fun m => if m = 0 then ((A.cg 0).1 - (P + fdivZ ((l4 fun l => U l * wc l).sum) pp + N * twoPiZ), 0)
        else if m ≤ 4 then ((A.cg m).1 - U (m - 1), 0) else ((A.cg m).1, 0)) (A.ρ + 1 + 2 * N.natAbs)).Has u
      ((x - rq P - ∑ l : Fin 4, rq (U l) * (rq (wc l) + u l) - 2 * Real.pi * N : ℝ) : ℂ) := by
  set S : ℤ := (l4 fun l => U l * wc l).sum with hS
  set c0 : ℤ := P + fdivZ S pp + N * twoPiZ with hc0
  have hT := two_pow_pos pp
  -- `Re A`
  have hre : (re A).Has u (x : ℂ) := by have := has_re hx; rwa [Complex.ofReal_re] at this
  -- the affine model `P + U (w_c + u) + 2πN`
  set aff := mk (fun m => if m = 0 then rz c0 else if m ≤ 4 then rz (U (m - 1)) else (0, 0))
    (1 + 2 * N.natAbs) with haff
  have hSr : (S : ℝ) = ∑ l : Fin 4, (U l : ℝ) * wc l := by rw [hS, l4_sum]; push_cast; rfl
  have hA : aff.Has u ((rq P + ∑ l : Fin 4, rq (U l) * (rq (wc l) + u l) + 2 * Real.pi * N : ℝ) : ℂ) := by
    unfold CT.Has
    rw [haff, eval_affine, ← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs]
    have hf := fdivZ_spec S pp
    have key : rq P + ∑ l : Fin 4, rq (U l) * (rq (wc l) + u l) + 2 * Real.pi * N -
        (rq c0 + rq (U 0) * u 0 + rq (U 1) * u 1 + rq (U 2) * u 2 + rq (U 3) * u 3) =
        ((S : ℝ) / 2 ^ pp - fdivZ S pp) / 2 ^ pp - (N : ℝ) * ((twoPiZ : ℝ) / 2 ^ pp - 2 * Real.pi) := by
      rw [hSr, hc0]
      simp only [rq, Fin.sum_univ_four, Fin.val_zero, Fin.val_one, Fin.val_two,
        show ((3 : Fin 4) : ℕ) = 3 from rfl]
      push_cast
      field_simp
      ring
    rw [key]
    show _ ≤ rn (1 + 2 * N.natAbs)
    rw [rn_add]
    refine (abs_sub _ _).trans (add_le_add ?_ ?_)
    · rw [abs_div, abs_of_pos hT]; unfold rn; push_cast
      exact div_le_div_of_nonneg_right hf hT.le
    · rw [abs_mul]
      calc |(N : ℝ)| * |(twoPiZ : ℝ) / 2 ^ pp - 2 * Real.pi| ≤ |(N : ℝ)| * (2 / 2 ^ pp) :=
            mul_le_mul_of_nonneg_left twoPi_bound (abs_nonneg _)
        _ = rn (2 * N.natAbs) := by unfold rn; push_cast [Nat.cast_natAbs, Int.cast_abs]; ring
  have H := has_sub hre hA
  have ev : ((x - rq P - ∑ l : Fin 4, rq (U l) * (rq (wc l) + u l) - 2 * Real.pi * N : ℝ) : ℂ) =
      (x : ℂ) - ((rq P + ∑ l : Fin 4, rq (U l) * (rq (wc l) + u l) + 2 * Real.pi * N : ℝ) : ℂ) := by
    push_cast; ring
  rw [ev]
  refine has_congr (T1 := sub (re A) aff) (fun m hm => ?_) ?_ H
  · rw [cg_mk _ _ hm]
    simp only [sub, add, neg, re, haff]
    rw [cg_mk _ _ hm, cg_mk _ _ hm, cg_mk _ _ hm, cg_mk _ _ hm]
    interval_cases m <;> simp [zadd, zneg, rz, cz, hc0] <;> ring
  · show A.ρ + (1 + 2 * N.natAbs) ≤ A.ρ + 1 + 2 * N.natAbs
    omega

/-! ### Blocks of the completion -/

lemma cross_of_hadamard {E B C : Mat3} (h : Hadamard6.IsHadamard (Hadamard6.completion E B C)) :
    E * Cᴴ + B * (Hadamard6.forcedD E B C)ᴴ = 0 := by
  have hg := h.2
  rw [Hadamard6.completion, Matrix.fromBlocks_conjTranspose, Matrix.fromBlocks_multiply] at hg
  have := congrArg Matrix.toBlocks₁₂ hg
  rw [Matrix.toBlocks_fromBlocks₁₂] at this
  rw [this]
  ext i j
  simp [Matrix.toBlocks₁₂]

set_option maxHeartbeats 4000000 in
/-- The phases of the completion. -/
theorem phaseMat_Qf {θ : Fin 4 → ℝ} {φH φV : Fin 6 → ℝ} {Φ : Fin 3 → Fin 3 → ℝ} {Dm : Mat3}
    (hD : ∀ a b, Dm a b = Complex.exp ((Φ a b : ℂ) * I)) :
    phaseMat (Matrix.of fun i j => Qf (e4 θ) (e6 φH) (e6 φV) (e9 Φ) (ix i j)) =
      Matrix.fromBlocks (L1.FlatCircuits.Em (L1.seedVec (seedOf θ))) (L1.sideMat (sx φH) (sy φH))
        (L1.sideMat (sx φV) (sy φV))ᵀ Dm := by
  ext i j
  rcases i with a | a <;> rcases j with b | b <;> fin_cases a <;> fin_cases b <;>
    simp [phaseMat, Qf, ix, sidx, e4, e6, e9, L1.FlatCircuits.Em, Hadamard6.corner, L1.seedVec, seedOf,
      Circle.coe_exp, L1.sideMat, sx, sy, hD]

/-! ### The box theorem -/

/-- **The C1 box check is sound.** -/
theorem c1Box_sound {B : BallD} {D : BoxD} (hok : c1Box B D = true) {o : ℤˣ} (ho : B.o = (o : ℤ))
    {u : Fin 4 → ℝ} (hu : InBox D.hb u) :
    0 < seedR (seedOf (th0R B + MthR B *ᵥ wOf D u)) ∧ ∃ Q : RMat6, ∃ N : Matrix I6 I6 ℤ,
      Hadamard6.IsHadamard (phaseMat Q) ∧ MatchedO o (seedOf (th0R B + MthR B *ᵥ wOf D u)) (phaseMat Q) ∧
      frob (Q - Pm B - tang (Um B) (wOf D u) - wind N) ≤ rn B.n := by
  have hθ : (th0R B + MthR B *ᵥ wOf D u) = fun k : Fin 4 => thR B (wOf D u) k :=
    funext fun k => (thR_eq B _ k).symm
  rw [hθ]
  set h := D.hb with hh
  set th := l4 (thetaT B D) with hth
  set e := th.map (expI h nT) with he
  set GH := gramH h e with hGH
  set GV := gramV h e with hGV
  set kH := sideK h GH D.phH D.YH D.tubeH with hkH
  set kV := sideK h GV D.phV D.YV D.tubeV with hkV
  set sH := tubeT D.phH kH.e with hsH
  set sV := tubeT D.phV kV.e with hsV
  set xyH := tubeRows h D.phH kH.e with hxyH
  set xyV := tubeRows h D.phV kV.e with hxyV
  set Bm := BT xyH with hBm
  set C := CT3 xyV with hC
  set Dk := forcedT h D.Xp D.A0 (ET e) Bm C with hDk
  set argD := l9 fun q => argT h nT (gi D.argA q) (gT Dk.D q) with hargD
  set res := resQ h B D (QT h th sH sV argD) with hres
  have hK : c1Box B D = (th.all (fun t => expOK t nT) && kH.ok && kV.ok && signAny h B.o xyH &&
      signAny h (-B.o) xyV && Dk.ok && (l9 fun q => argOK h nT (gi D.argA q) (gT Dk.D q)).all id &&
      boundOK h B.n res) := rfl
  rw [hK] at hok
  simp only [Bool.and_eq_true] at hok
  obtain ⟨⟨⟨⟨⟨⟨⟨hexp, hokH⟩, hokV⟩, hsgH⟩, hsgV⟩, hDok⟩, hargok⟩, hbd⟩ := hok
  -- corner, Gram data, sides
  have hcor := has_corner (B := B) (D := D) hu hexp
  obtain ⟨hGHh, hGVh⟩ := has_gram hu hcor
  obtain ⟨φH, hs, ht, hr, hphH, hxH, hyH⟩ := side_sound hu hGHh hokH
  obtain ⟨φV, hs', ht', hr', hphV, hxV, hyV⟩ := side_sound hu hGVh hokV
  -- signs
  have ho' : B.o = 1 ∨ B.o = -1 := by rcases Int.units_eq_one_or o with h1 | h1 <;> simp [ho, h1]
  have ho'' : -B.o = 1 ∨ -B.o = -1 := by rcases ho' with h1 | h1 <;> simp [h1]
  have hsB := signAny_sound hu hxH hyH ho' hsgH
  have hsC := signAny_sound hu hxV hyV ho'' hsgV
  have hos : osgn o = (B.o : ℝ) := by simp [osgn, ho]
  set p := seedOf fun k : Fin 4 => thR B (wOf D u) k with hp
  obtain ⟨hR, hHad, hM⟩ := matched_of_sides (o := o) (p := p) hs ht hr hs' ht' hr'
    (by rw [hos]; exact hsB) (by rw [hos]; push_cast at hsC; linarith)
  refine ⟨hR, ?_⟩
  -- the forced block
  set E3 := L1.FlatCircuits.Em (L1.seedVec p) with hE3
  set B3 := L1.sideMat (sx φH) (sy φH) with hB3
  set C3 := (L1.sideMat (sx φV) (sy φV))ᵀ with hC3
  have hDmul : Hadamard6.forcedD E3 B3 C3 * B3ᴴ = -(C3 * E3ᴴ) :=
    Method.forced_mul (cross_of_hadamard hHad)
  have hDh := forced_sound hu (has3_ET hcor) (has3_BT hxH hyH) (has3_CT3 hxV hyV) hDmul hDok
  -- `arg D`
  have hunit : ∀ a b : Fin 3, ‖Hadamard6.forcedD E3 B3 C3 a b‖ = 1 := fun a b => by
    have := hHad.1 (.inr a) (.inr b)
    rw [Complex.normSq_eq_norm_sq] at this
    have h0 : 0 ≤ ‖Hadamard6.forcedD E3 B3 C3 a b‖ := norm_nonneg _
    exact (pow_eq_one_iff_of_nonneg h0 (by norm_num)).1 this
  have harg : ∀ a b : Fin 3, ∃ Φ : ℝ, Hadamard6.forcedD E3 B3 C3 a b = Complex.exp ((Φ : ℂ) * I) ∧
      (gT argD (3 * a + b)).Has u (Φ : ℂ) := fun a b => by
    have hk : (3 * (a : ℕ) + b) < 9 := by omega
    have hok1 := all_l9 hargok hk
    obtain ⟨Φ, hΦ, hm⟩ := has_argT hu hok1 (hDh a b)
    refine ⟨Φ, ?_, ?_⟩
    · rw [hΦ, hunit, Complex.ofReal_one, one_mul]
    · rw [hargD, gT_l9 _ hk]; exact hm
  choose Φ hΦD hΦm using harg
  -- the phase models
  have hthk : ∀ k, (gT th k).Has u (e4 (fun k => thR B (wOf D u) k) k : ℂ) := fun k => by
    by_cases hk : k < 4
    · rw [hth, gT_l4 _ hk]; simp only [e4, dif_pos hk]; exact has_thetaT B D k
    · rw [gT_ge _ (by simp [hth, l4]; omega)]; simp only [e4, dif_neg hk]; exact has_zero' u
  have hHk : ∀ k, (gT sH k).Has u (e6 φH k : ℂ) := fun k => by
    by_cases hk : k < 6
    · simp only [e6, dif_pos hk]; exact hphH ⟨k, hk⟩
    · rw [gT_ge _ (by simp [hsH, tubeT, l6]; omega)]; simp only [e6, dif_neg hk]; exact has_zero' u
  have hVk : ∀ k, (gT sV k).Has u (e6 φV k : ℂ) := fun k => by
    by_cases hk : k < 6
    · simp only [e6, dif_pos hk]; exact hphV ⟨k, hk⟩
    · rw [gT_ge _ (by simp [hsV, tubeT, l6]; omega)]; simp only [e6, dif_neg hk]; exact has_zero' u
  have hAk : ∀ k, (gT argD k).Has u (e9 Φ k : ℂ) := fun k => by
    by_cases hk : k < 9
    · simp only [e9, dif_pos hk]
      have := hΦm ⟨k / 3, by omega⟩ ⟨k % 3, by omega⟩
      simp only [] at this
      rwa [show 3 * (k / 3) + k % 3 = k by omega] at this
    · rw [gT_ge _ (by simp [hargD, l9]; omega)]; simp only [e9, dif_neg hk]; exact has_zero' u
  set Qm : RMat6 := Matrix.of fun i j =>
    Qf (e4 fun k => thR B (wOf D u) k) (e6 φH) (e6 φV) (e9 Φ) (ix i j) with hQm
  have hphase : phaseMat Qm = Hadamard6.completion E3 B3 C3 := by
    rw [hQm, phaseMat_Qf hΦD]; rfl
  -- the residual
  set Nm : Matrix I6 I6 ℤ := Matrix.of fun i j => gi D.wind (ix i j) with hNm
  have hres : ∀ i j, (gT res (ix i j)).Has u ((Qm - Pm B - tang (Um B) (wOf D u) - wind Nm) i j : ℂ) := by
    intro i j
    have hq := has_QT (h := h) hthk hHk hVk hAk (ix_lt i j)
    rw [hres, resQ, gT_l36 _ (ix_lt i j)]
    have H := has_resQ1 hq (gi B.P (ix i j)) (fun l => gi B.U (4 * ix i j + l)) (fun l => gi D.wc l)
      (gi D.wind (ix i j))
    convert H using 2
    simp only [Matrix.sub_apply, hQm, Matrix.of_apply, Pm, tang, Um, wind, Matrix.sum_apply, Matrix.smul_apply,
      smul_eq_mul, Matrix.map_apply, hNm, wOf]
    rw [Fin.sum_univ_four, Fin.sum_univ_four]
    ring
  refine ⟨Qm, Nm, ?_, ?_, boundOK_sound hu hres hbd⟩
  · rw [hphase]; exact hHad
  · rw [hphase]; exact hM

end NoFourMUBs.KernelAtlas.Seed
