import NoFourMUBs.PRM.Converse
import NoFourMUBs.PRM.Defs

/-!
# Conjugate signatures at every corner of a non-Tao Hadamard (return H, §2)

* `sig_lower_eq_or_conj` (D1): at a dephased corner the two side signatures are roots of the same real
  quadratic, so they are equal or conjugate.  When `g = 0` both vanish.
* `dephased_matched`: if they are equal and not real, `PRM.nonmatched_tao` (D2) puts the matrix in Tao's orbit;
  if they are real, equal means conjugate.
* `allCornersMatched`: dephasing changes no signature (`Step2.sideSignature_scale`) and no equivalence class,
  so every positional corner of a non-Tao Hadamard is matched: `PRM.AllCornersMatched H`.
-/

open Matrix Hadamard6 ComplexConjugate NoFourMUBs.Side

noncomputable section

namespace NoFourMUBs.FourierVanishing

open PRM L1 L1.FlatCircuits

/-- **(D1)** At a dephased corner of a Hadamard matrix the vertical signature is the horizontal one or its
conjugate. -/
theorem sig_lower_eq_or_conj (M : Mat6) (hM : Hadamard6.IsHadamard M) (hd : Step2.Dephased M) :
    Step2.sideSignature (Step2.lowerBlock M) = Step2.sideSignature (Step2.rightBlock M) ∨
      Step2.sideSignature (Step2.lowerBlock M) = conj (Step2.sideSignature (Step2.rightBlock M)) := by
  set ρ : Fin 4 → ℂ := ![M (.inl 1) (.inl 1), M (.inl 1) (.inl 2), M (.inl 2) (.inl 1), M (.inl 2) (.inl 2)]
    with hρ
  have hu : ∀ i, Complex.normSq (ρ i) = 1 := fun i => by fin_cases i <;> exact hM.1 _ _
  have hE : Matrix.toBlocks₁₁ M = Em ρ := by
    ext i j; fin_cases i <;> fin_cases j <;>
      simp [Matrix.toBlocks₁₁, Em, Hadamard6.corner, ρ, hd.1 (.inl _), hd.2 (.inl _)]
  -- the horizontal side
  set B := Step2.rightBlock M with hBdef
  set x : Fin 3 → ℂ := B 1
  set y : Fin 3 → ℂ := B 2
  have hB0 : ∀ j, B 0 j = 1 := fun j => hd.1 (.inr j)
  have hx : ∀ j, Complex.normSq (x j) = 1 := fun j => hM.1 _ _
  have hy : ∀ j, Complex.normSq (y j) = 1 := fun j => hM.1 _ _
  have gB : B * Bᴴ = Hadamard6.sixI3 - Em ρ * (Em ρ)ᴴ := by
    have := (Hadamard6.hadamard_row_block_grams hM).1
    rw [hE] at this
    rw [← this]; abel_nf; rfl
  obtain ⟨g1, g2, g3⟩ := Step2.gram_rows B hB0
  rw [gB, G_eq' hu] at g1 g2 g3
  have hs : sS x = sh ρ := by rw [← g1]; rfl
  have ht : sS y = th ρ := by rw [← g2]; rfl
  have hr : rS x y = rh ρ := by rw [← g3]; rfl
  have sigB : Step2.sideSignature B = TS x y := Step2.sig_rows B hB0
  -- the vertical side
  set C := Step2.lowerBlock M with hCdef
  set xv : Fin 3 → ℂ := fun j => C j 1
  set yv : Fin 3 → ℂ := fun j => C j 2
  have hC0 : ∀ i, C i 0 = 1 := fun i => hd.2 (.inr i)
  have hxv : ∀ j, Complex.normSq (xv j) = 1 := fun j => hM.1 _ _
  have hyv : ∀ j, Complex.normSq (yv j) = 1 := fun j => hM.1 _ _
  have gC : Cᴴ * C = Hadamard6.sixI3 - (Em ρ)ᴴ * Em ρ := by
    have := (Hadamard6.hadamard_column_block_grams hM).1
    rw [hE] at this
    rw [← this]; abel_nf; rfl
  obtain ⟨c1, c2, c3⟩ := Step2.gram_cols C hC0
  rw [gC, Gv_eq' hu] at c1 c2 c3
  have hsv : sS xv = sv ρ := by rw [← c1]; rfl
  have htv : sS yv = tv ρ := by rw [← c2]; rfl
  have hrv : rS xv yv = rv ρ := by rw [← c3]; rfl
  have sigC : Step2.sideSignature C = TS xv yv := Step2.sig_cols C hC0
  obtain ⟨eg, ee, ec⟩ := hv_eq hu
  -- `|h|² = g` on both sides, with the same `g`
  have Gh := (side_identities hx hy).2.2.2
  have Gv := (side_identities hxv hyv).2.2.2
  rw [hs, ht, hr, gS_eq] at Gh
  rw [hsv, htv, hrv, gS_eq, eg] at Gv
  rw [sigB, sigC]
  by_cases hh : hS x y = 0
  · have hhv : hS xv yv = 0 := by
      have : Complex.normSq (hS xv yv) = Complex.normSq (hS x y) := by exact_mod_cast Gv.trans Gh.symm
      rw [hh, map_zero] at this
      exact Complex.normSq_eq_zero.1 this
    left; simp [TS, hh, hhv]
  · have hhv : hS xv yv ≠ 0 := by
      intro h0
      have : Complex.normSq (hS x y) = Complex.normSq (hS xv yv) := by exact_mod_cast Gh.trans Gv.symm
      rw [h0, map_zero] at this
      exact hh (Complex.normSq_eq_zero.1 this)
    obtain ⟨r1, r2⟩ := TS_root hx hy hh
    obtain ⟨v1, v2⟩ := TS_root hxv hyv hhv
    simp only [hs, ht, hr, gS_eq, etaS_eq, chiS_eq] at r1 r2
    simp only [hsv, htv, hrv, gS_eq, etaS_eq, chiS_eq, eg, ee, ec] at v1 v2
    exact eq_or_eq_conj_of_roots v1 v2 r1 r2

/-- At a dephased corner of a non-Tao Hadamard the two sides are matched (D1 + D2). -/
theorem dephased_matched (M : Mat6) (hM : Hadamard6.IsHadamard M) (hd : Step2.Dephased M) (hT : ¬ IsTaoOrbit M) :
    Step2.sideSignature (Step2.rightBlock M) = conj (Step2.sideSignature (Step2.lowerBlock M)) := by
  rcases sig_lower_eq_or_conj M hM hd with h | h
  · by_cases him : (Step2.sideSignature (Step2.rightBlock M)).im = 0
    · rw [h, Complex.conj_eq_iff_im.2 him]
    · exfalso
      apply hT
      refine nonmatched_tao M hM hd him fun hc => him ?_
      exact Complex.conj_eq_iff_im.1 (hc.symm.trans h)
  · rw [h, Complex.conj_conj]

/-- **§2.** Every positional corner of a non-Tao Hadamard is matched. -/
theorem allCornersMatched (H : Mat6) (hH : Hadamard6.IsHadamard H) (hT : ¬ IsTaoOrbit H) : PRM.AllCornersMatched H := by
  intro σ τ
  set M := H.submatrix σ τ
  have hM : Hadamard6.IsHadamard M := reindexMatrix_isHadamard hH
  have hM' := dephase_isHadamard hM
  have hd : Step2.Dephased (dephase M) := dephase_isDephased hM.1
  have hT' : ¬ IsTaoOrbit (dephase M) := fun h =>
    hT (isTaoOrbit_of_equivalent
      (equivalent_trans (equivalent_reindexMatrix σ τ H) (equivalent_dephase hM.1)) h)
  have key := dephased_matched _ hM' hd hT'
  have hr : ∀ i, dephaseRowFactor M i * conj (dephaseRowFactor M i) = 1 :=
    fun i => mul_conj_of_normSq (dephaseRowFactor_unit hM.1 i)
  have hc : ∀ j, dephaseColumnFactor M j * conj (dephaseColumnFactor M j) = 1 :=
    fun j => mul_conj_of_normSq (dephaseColumnFactor_unit hM.1 j)
  have eR : Step2.sideSignature (Step2.rightBlock (dephase M)) = Step2.sideSignature (Step2.rightBlock M) :=
    Step2.sideSignature_scale (Step2.rightBlock M) (fun i => dephaseRowFactor M (.inl i))
      (fun j => dephaseColumnFactor M (.inr j)) (fun i => hr _) (fun j => hc _)
  have eL : Step2.sideSignature (Step2.lowerBlock (dephase M)) = Step2.sideSignature (Step2.lowerBlock M) :=
    Step2.sideSignature_scale (Step2.lowerBlock M) (fun i => dephaseRowFactor M (.inr i))
      (fun j => dephaseColumnFactor M (.inl j)) (fun i => hr _) (fun j => hc _)
  rw [eR, eL] at key
  exact key

end NoFourMUBs.FourierVanishing
