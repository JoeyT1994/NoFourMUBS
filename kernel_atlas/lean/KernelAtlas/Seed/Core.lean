import KernelAtlas.Seed.C1Box

/-!
# The C1 pipeline as a reusable core (for the T1 and T2 transfer boxes)

`coreOK B D` is `c1Box` without the per-box bound (`c1Box_eq`); `qModels B D` are the 36 phase models `QT` and
`kModels B D` the 36 complex models of the completion's entries (row-major, `ix`).  `core_sound`: on the box, the
matched completion with orientation `o` at `θ(w)` is `e^{iQ}`, with `Q` enclosed by `qModels` and `e^{iQ}` by
`kModels`.  The transfer boxes of a seed ball (T1 at a general corner, T2) run this core over their own box and then
test the transfer on the models.
-/

open Complex Matrix Hadamard6 NoFourMUBs.Side NoFourMUBs.Step2 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Seed

/-- `c1Box` without the bound. -/
def coreOK (B : BallD) (D : BoxD) : Bool :=
  let h := D.hb
  let th := l4 (thetaT B D)
  let e := th.map (expI h nT)
  let GH := gramH h e
  let GV := gramV h e
  let kH := sideK h GH D.phH D.YH D.tubeH
  let kV := sideK h GV D.phV D.YV D.tubeV
  let sH := tubeT D.phH kH.e
  let sV := tubeT D.phV kV.e
  let xyH := tubeRows h D.phH kH.e
  let xyV := tubeRows h D.phV kV.e
  let Bm := BT xyH
  let C := CT3 xyV
  let Dk := forcedT h D.Xp D.A0 (ET e) Bm C
  th.all (fun t => expOK t nT) && kH.ok && kV.ok &&
    signOK h B.o (psiT h xyH) && signOK h (-B.o) (psiT h xyV) && Dk.ok &&
    (l9 fun q => argOK h nT (gi D.argA q) (gT Dk.D q)).all id

/-- The 36 phase models. -/
def qModels (B : BallD) (D : BoxD) : List CT :=
  let h := D.hb
  let th := l4 (thetaT B D)
  let e := th.map (expI h nT)
  let kH := sideK h (gramH h e) D.phH D.YH D.tubeH
  let kV := sideK h (gramV h e) D.phV D.YV D.tubeV
  let sH := tubeT D.phH kH.e
  let sV := tubeT D.phV kV.e
  let Dk := forcedT h D.Xp D.A0 (ET e) (BT (tubeRows h D.phH kH.e)) (CT3 (tubeRows h D.phV kV.e))
  QT h th sH sV (l9 fun q => argT h nT (gi D.argA q) (gT Dk.D q))

/-- The 36 entry models of the completion `[[E, B], [C, D]]` (row-major). -/
def blocksT (E Bm C Dm : List CT) : List CT :=
  l36 fun q =>
    let j := q / 6
    let k := q % 6
    if j < 3 ∧ k < 3 then gT E (3 * j + k)
    else if j < 3 then gT Bm (3 * j + (k - 3))
    else if k < 3 then gT C (3 * (j - 3) + k)
    else gT Dm (3 * (j - 3) + (k - 3))

def kModels (B : BallD) (D : BoxD) : List CT :=
  let h := D.hb
  let e := (l4 (thetaT B D)).map (expI h nT)
  let kH := sideK h (gramH h e) D.phH D.YH D.tubeH
  let kV := sideK h (gramV h e) D.phV D.YV D.tubeV
  let Bm := BT (tubeRows h D.phH kH.e)
  let C := CT3 (tubeRows h D.phV kV.e)
  blocksT (ET e) Bm C (forcedT h D.Xp D.A0 (ET e) Bm C).D

lemma c1Box_eq (B : BallD) (D : BoxD) :
    c1Box B D = (coreOK B D && boundOK D.hb B.n (resQ D.hb B D (qModels B D))) := rfl

lemma ix_div (a : Fin 3) (b : ℕ) (hb : b < 6) : (6 * (a : ℕ) + b) / 6 = a ∧ (6 * (a : ℕ) + b) % 6 = b := by omega

theorem has_blocksT {u : Fin 4 → ℝ} {E Bm C Dm : List CT} {E3 B3 C3 D3 : Mat3} (hE : Has3 u E E3)
    (hB : Has3 u Bm B3) (hC : Has3 u C C3) (hD : Has3 u Dm D3) (i j : I6) :
    (gT (blocksT E Bm C Dm) (ix i j)).Has u (Matrix.fromBlocks E3 B3 C3 D3 i j) := by
  rw [blocksT, gT_l36 _ (ix_lt i j)]
  rcases i with a | a <;> rcases j with b | b
  · have h1 : ix (.inl a) (.inl b) / 6 = a := by simp [ix, sidx]; omega
    have h2 : ix (.inl a) (.inl b) % 6 = b := by simp [ix, sidx]; omega
    simp only [h1, h2, a.2, b.2, and_self, if_true, Matrix.fromBlocks_apply₁₁]
    exact hE a b
  · have h1 : ix (.inl a) (.inr b) / 6 = a := by simp [ix, sidx]; omega
    have h2 : ix (.inl a) (.inr b) % 6 = b + 3 := by simp [ix, sidx]; omega
    simp only [h1, h2, a.2, show ¬ ((b : ℕ) + 3 < 3) by omega, and_false, if_false, if_true,
      Nat.add_sub_cancel, Matrix.fromBlocks_apply₁₂]
    exact hB a b
  · have h1 : ix (.inr a) (.inl b) / 6 = a + 3 := by simp [ix, sidx]; omega
    have h2 : ix (.inr a) (.inl b) % 6 = b := by simp [ix, sidx]; omega
    simp only [h1, h2, b.2, show ¬ ((a : ℕ) + 3 < 3) by omega, false_and, if_false, if_true,
      Nat.add_sub_cancel, Matrix.fromBlocks_apply₂₁]
    exact hC a b
  · have h1 : ix (.inr a) (.inr b) / 6 = a + 3 := by simp [ix, sidx]; omega
    have h2 : ix (.inr a) (.inr b) % 6 = b + 3 := by simp [ix, sidx]; omega
    simp only [h1, h2, show ¬ ((a : ℕ) + 3 < 3) by omega, show ¬ ((b : ℕ) + 3 < 3) by omega, false_and,
      if_false, Nat.add_sub_cancel, Matrix.fromBlocks_apply₂₂]
    exact hD a b

/-- **The core is sound.** -/
theorem core_sound {B : BallD} {D : BoxD} (hok : coreOK B D = true) {o : ℤˣ} (ho : B.o = (o : ℤ))
    {u : Fin 4 → ℝ} (hu : InBox D.hb u) :
    0 < seedR (seedOf (th0R B + MthR B *ᵥ wOf D u)) ∧ ∃ Q : RMat6,
      Hadamard6.IsHadamard (phaseMat Q) ∧ MatchedO o (seedOf (th0R B + MthR B *ᵥ wOf D u)) (phaseMat Q) ∧
      (∀ i j, (gT (qModels B D) (ix i j)).Has u (Q i j : ℂ)) ∧
      ∀ i j, (gT (kModels B D) (ix i j)).Has u (phaseMat Q i j) := by
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
  have hK : coreOK B D = (th.all (fun t => expOK t nT) && kH.ok && kV.ok && signOK h B.o (psiT h xyH) &&
      signOK h (-B.o) (psiT h xyV) && Dk.ok && (l9 fun q => argOK h nT (gi D.argA q) (gT Dk.D q)).all id) := rfl
  have hQ : qModels B D = QT h th sH sV argD := rfl
  have hKm : kModels B D = blocksT (ET e) Bm C Dk.D := rfl
  rw [hK] at hok
  simp only [Bool.and_eq_true] at hok
  obtain ⟨⟨⟨⟨⟨⟨hexp, hokH⟩, hokV⟩, hsgH⟩, hsgV⟩, hDok⟩, hargok⟩ := hok
  have hcor := has_corner (B := B) (D := D) hu hexp
  obtain ⟨hGHh, hGVh⟩ := has_gram hu hcor
  obtain ⟨φH, hs, ht, hr, hphH, hxH, hyH⟩ := side_sound hu hGHh hokH
  obtain ⟨φV, hs', ht', hr', hphV, hxV, hyV⟩ := side_sound hu hGVh hokV
  have ho' : B.o = 1 ∨ B.o = -1 := by rcases Int.units_eq_one_or o with h1 | h1 <;> simp [ho, h1]
  have ho'' : -B.o = 1 ∨ -B.o = -1 := by rcases ho' with h1 | h1 <;> simp [h1]
  have hsB := signOK_sound hu (has_psiT hu hxH hyH) ho' hsgH
  have hsC := signOK_sound hu (has_psiT hu hxV hyV) ho'' hsgV
  have hos : osgn o = (B.o : ℝ) := by simp [osgn, ho]
  set p := seedOf fun k : Fin 4 => thR B (wOf D u) k with hp
  obtain ⟨hR, hHad, hM⟩ := matched_of_sides (o := o) (p := p) hs ht hr hs' ht' hr'
    (by rw [hos]; exact hsB) (by rw [hos]; push_cast at hsC; linarith)
  refine ⟨hR, ?_⟩
  set E3 := L1.FlatCircuits.Em (L1.seedVec p) with hE3
  set B3 := L1.sideMat (sx φH) (sy φH) with hB3
  set C3 := (L1.sideMat (sx φV) (sy φV))ᵀ with hC3
  have hDmul : Hadamard6.forcedD E3 B3 C3 * B3ᴴ = -(C3 * E3ᴴ) :=
    Method.forced_mul (cross_of_hadamard hHad)
  have hDh := forced_sound hu (has3_ET hcor) (has3_BT hxH hyH) (has3_CT3 hxV hyV) hDmul hDok
  have hunit : ∀ a b : Fin 3, ‖Hadamard6.forcedD E3 B3 C3 a b‖ = 1 := fun a b => by
    have := hHad.1 (.inr a) (.inr b)
    rw [Complex.normSq_eq_norm_sq] at this
    exact (pow_eq_one_iff_of_nonneg (norm_nonneg _) (by norm_num)).1 this
  have harg : ∀ a b : Fin 3, ∃ Φ : ℝ, Hadamard6.forcedD E3 B3 C3 a b = Complex.exp ((Φ : ℂ) * I) ∧
      (gT argD (3 * a + b)).Has u (Φ : ℂ) := fun a b => by
    have hk : (3 * (a : ℕ) + b) < 9 := by omega
    obtain ⟨Φ, hΦ, hm⟩ := has_argT hu (all_l9 hargok hk) (hDh a b)
    refine ⟨Φ, ?_, ?_⟩
    · rw [hΦ, hunit, Complex.ofReal_one, one_mul]
    · rw [hargD, gT_l9 _ hk]; exact hm
  choose Φ hΦD hΦm using harg
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
  refine ⟨Qm, ?_, ?_, fun i j => ?_, fun i j => ?_⟩
  · rw [hphase]; exact hHad
  · rw [hphase]; exact hM
  · rw [hQ]; exact has_QT (h := h) hthk hHk hVk hAk (ix_lt i j)
  · rw [hKm, hphase]
    exact has_blocksT (has3_ET hcor) (has3_BT hxH hyH) (has3_CT3 hxV hyV) hDh i j

end NoFourMUBs.KernelAtlas.Seed
