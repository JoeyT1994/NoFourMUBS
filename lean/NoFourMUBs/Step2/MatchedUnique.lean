import NoFourMUBs.Step2.SidePerm
import NoFourMUBs.Step2.Statements

/-!
# Matched uniqueness (L2, `PROOF.md` Theorem 2.3)

**Theorem (`matchedUniqueness`).** Two positive matched completions of the same strict seed are equivalent.

Both horizontal sides satisfy `BB* = 6I − EE*` and have the same signature `T = (χ + i√R)/2`, with `Im T > 0`;
`side_unique` gives a column permutation `σ` with `B_K = B_H σ`.  Likewise the vertical sides (`C*C = 6I − E*E`,
`T = (χ − i√R)/2`) differ by a row permutation `ρ`.  Permuting the last three rows and columns of `H` by `ρ`
and `σ` matches `E`, `B` and `C`; orthogonality forces the lower-right block (`eq_forcedD_of_row_cross`), so `K`
is that permutation of `H`.
-/

open Matrix Hadamard6 ComplexConjugate NoFourMUBs.Side

noncomputable section

namespace NoFourMUBs.Step2

lemma univ_perm3 : (Finset.univ : Finset (Equiv.Perm (Fin 3))) =
    {Equiv.refl _, Equiv.swap 0 1, Equiv.swap 0 2, Equiv.swap 1 2, Equiv.swap 0 1 * Equiv.swap 1 2,
      Equiv.swap 1 2 * Equiv.swap 0 1} := by decide

lemma permanent3_expand (B : Mat3) : permanent3 B =
    B 0 0 * B 1 1 * B 2 2 + B 0 0 * B 1 2 * B 2 1 + B 0 1 * B 1 0 * B 2 2 + B 0 1 * B 1 2 * B 2 0 +
    B 0 2 * B 1 0 * B 2 1 + B 0 2 * B 1 1 * B 2 0 := by
  rw [permanent3, univ_perm3]
  rw [Finset.sum_insert (by decide), Finset.sum_insert (by decide), Finset.sum_insert (by decide),
    Finset.sum_insert (by decide), Finset.sum_insert (by decide), Finset.sum_singleton]
  simp [Fin.prod_univ_three, Equiv.swap_apply_def, Equiv.Perm.mul_apply]
  ring

lemma sig_rows (B : Mat3) (h0 : ∀ j, B 0 j = 1) : sideSignature B = TS (B 1) (B 2) := by
  rw [sideSignature, permanent3_expand, Matrix.det_fin_three]
  simp only [Fin.prod_univ_three, h0, TS, piS, hS, uS, Complex.star_def, map_mul, map_one]
  ring

lemma sig_cols (C : Mat3) (h0 : ∀ i, C i 0 = 1) :
    sideSignature C = TS (fun j => C j 1) (fun j => C j 2) := by
  rw [sideSignature, permanent3_expand, Matrix.det_fin_three]
  simp only [Fin.prod_univ_three, h0, TS, piS, hS, uS, Complex.star_def, map_mul, map_one]
  ring

lemma gram_rows (B : Mat3) (h0 : ∀ j, B 0 j = 1) :
    (B * Bᴴ) 1 0 = sS (B 1) ∧ (B * Bᴴ) 2 0 = sS (B 2) ∧ (B * Bᴴ) 2 1 = rS (B 1) (B 2) := by
  refine ⟨?_, ?_, ?_⟩ <;>
    simp [Matrix.mul_apply, Fin.sum_univ_three, h0, sS, rS]

lemma gram_cols (C : Mat3) (h0 : ∀ i, C i 0 = 1) :
    (Cᴴ * C) 0 1 = sS (fun j => C j 1) ∧ (Cᴴ * C) 0 2 = sS (fun j => C j 2) ∧
      (Cᴴ * C) 1 2 = rS (fun j => C j 1) (fun j => C j 2) := by
  refine ⟨?_, ?_, ?_⟩ <;>
    simp [Matrix.mul_apply, Fin.sum_univ_three, h0, sS, rS] <;> ring

lemma im_of_matched {χ R : ℝ} {S : ℂ} (hR : 0 < R) (h : 2 * S = (χ : ℂ) + (Real.sqrt R : ℂ) * Complex.I ∨
    2 * S = (χ : ℂ) - (Real.sqrt R : ℂ) * Complex.I) : S.im ≠ 0 := by
  have hs : 0 < Real.sqrt R := Real.sqrt_pos.mpr hR
  rcases h with h | h <;> have := congrArg Complex.im h <;> simp at this <;> intro h0 <;>
    rw [h0] at this <;> linarith

lemma det_ne_of_sig {B : Mat3} (h : (sideSignature B).im ≠ 0) : IsUnit B.det := by
  refine isUnit_iff_ne_zero.mpr fun h0 => h ?_
  simp [sideSignature, h0]

/-- The data of one side of a matched matrix. -/
lemma unit_entry (H : Had6) (i j : I6) : Complex.normSq (H.1 i j) = 1 := H.2.1 i j

/-- **L2: matched uniqueness.** -/
theorem matchedUniqueness : MatchedUniqueness := by
  intro s H K hH hK
  obtain ⟨dH, eH, tH, lH⟩ := hH
  obtain ⟨dK, eK, tK, lK⟩ := hK
  have hR := s.2
  set E := seedCorner s.1
  have hEH : toBlocks₁₁ H.1 = E := eH
  have hEK : toBlocks₁₁ K.1 = E := eK
  set BH := toBlocks₁₂ H.1 with hBHdef
  set BK := toBlocks₁₂ K.1 with hBKdef
  set CH := toBlocks₂₁ H.1 with hCHdef
  set CK := toBlocks₂₁ K.1 with hCKdef
  have rH0 : ∀ j, BH 0 j = 1 := fun j => dH.1 (Sum.inr j)
  have rK0 : ∀ j, BK 0 j = 1 := fun j => dK.1 (Sum.inr j)
  have cH0 : ∀ i, CH i 0 = 1 := fun i => dH.2 (Sum.inr i)
  have cK0 : ∀ i, CK i 0 = 1 := fun i => dK.2 (Sum.inr i)
  -- Gram equations
  have gBH := (hadamard_row_block_grams H.2).1
  have gBK := (hadamard_row_block_grams K.2).1
  have gCH := (hadamard_column_block_grams H.2).1
  have gCK := (hadamard_column_block_grams K.2).1
  rw [hEH] at gBH gCH; rw [hEK] at gBK gCK
  have hBB : BK * BKᴴ = BH * BHᴴ := add_left_cancel (gBK.trans gBH.symm)
  have hCC : CKᴴ * CK = CHᴴ * CH := add_left_cancel (gCK.trans gCH.symm)
  -- signatures
  have tBH : sideSignature BH = sideSignature BK := by
    apply mul_left_cancel₀ (two_ne_zero (α := ℂ)); exact tH.trans tK.symm
  have tCH : sideSignature CH = sideSignature CK := by
    apply mul_left_cancel₀ (two_ne_zero (α := ℂ)); exact lH.trans lK.symm
  have imB : (sideSignature BH).im ≠ 0 := im_of_matched hR (Or.inl tH)
  have imC : (sideSignature CH).im ≠ 0 := im_of_matched hR (Or.inr lH)
  -- horizontal sides
  obtain ⟨gH1, gH2, gH3⟩ := gram_rows BH rH0
  obtain ⟨gK1, gK2, gK3⟩ := gram_rows BK rK0
  rw [hBB] at gK1 gK2 gK3
  obtain ⟨σ, hσ⟩ := side_unique (x := BH 1) (y := BH 2) (x' := BK 1) (y' := BK 2)
    (fun j => unit_entry H _ _) (fun j => unit_entry H _ _) (fun j => unit_entry K _ _)
    (fun j => unit_entry K _ _) (gK1.symm.trans gH1) (gK2.symm.trans gH2) (gK3.symm.trans gH3)
    (by rw [← sig_rows BK rK0, ← sig_rows BH rH0, tBH]) (by rwa [← sig_rows BH rH0])
  have hBσ : ∀ i j, BK i j = BH i (σ j) := by
    intro i j; fin_cases i
    · show BK 0 j = BH 0 (σ j); rw [rK0, rH0]
    · exact (hσ j).1
    · exact (hσ j).2
  -- vertical sides
  obtain ⟨cH1, cH2, cH3⟩ := gram_cols CH cH0
  obtain ⟨cK1, cK2, cK3⟩ := gram_cols CK cK0
  rw [hCC] at cK1 cK2 cK3
  obtain ⟨ρ, hρ⟩ := side_unique (x := fun j => CH j 1) (y := fun j => CH j 2) (x' := fun j => CK j 1)
    (y' := fun j => CK j 2)
    (fun j => unit_entry H _ _) (fun j => unit_entry H _ _) (fun j => unit_entry K _ _)
    (fun j => unit_entry K _ _) (cK1.symm.trans cH1) (cK2.symm.trans cH2) (cK3.symm.trans cH3)
    (by rw [← sig_cols CK cK0, ← sig_cols CH cH0, tCH]) (by rwa [← sig_cols CH cH0])
  have hCρ : ∀ i j, CK i j = CH (ρ i) j := by
    intro i j; fin_cases j
    · show CK i 0 = CH (ρ i) 0; rw [cK0, cH0]
    · exact (hρ i).1
    · exact (hρ i).2
  -- the permuted matrix
  let ρ6 : Equiv.Perm I6 := Equiv.sumCongr (Equiv.refl I3) ρ
  let σ6 : Equiv.Perm I6 := Equiv.sumCongr (Equiv.refl I3) σ
  let K' : Mat6 := Matrix.of fun i j => H.1 (ρ6 i) (σ6 j)
  have hEq : Equivalent H.1 K' :=
    ⟨ρ6, σ6, fun _ => 1, fun _ => 1, fun _ => by simp, fun _ => by simp, fun i j => by simp [K']⟩
  have hK'had := isHadamard_of_equivalent hEq H.2
  have bE : toBlocks₁₁ K' = E := by
    rw [← hEH]; ext i j; simp [K', ρ6, σ6, toBlocks₁₁]
  have bB : toBlocks₁₂ K' = BK := by
    ext i j; rw [hBσ]; simp [K', ρ6, σ6, toBlocks₁₂, hBHdef]
  have bC : toBlocks₂₁ K' = CK := by
    ext i j; rw [hCρ]; simp [K', ρ6, σ6, toBlocks₂₁, hCHdef]
  have hdet : IsUnit BK.det := det_ne_of_sig (by rwa [← tBH])
  have crossK := hadamard_top_row_cross K.2
  have crossK' := hadamard_top_row_cross hK'had
  rw [bE, bB, bC] at crossK'
  rw [hEK] at crossK
  have dK := eq_forcedD_of_row_cross hdet crossK
  have dK' := eq_forcedD_of_row_cross hdet crossK'
  have hKK : K.1 = K' := by
    rw [← Matrix.fromBlocks_toBlocks K.1, ← Matrix.fromBlocks_toBlocks K', hEK, bE, bB, bC, dK, dK']
  rw [hKK]; exact hEq

end NoFourMUBs.Step2
