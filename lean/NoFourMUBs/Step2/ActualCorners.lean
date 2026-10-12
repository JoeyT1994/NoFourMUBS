import NoFourMUBs.Step2.SideDiscriminant
import NoFourMUBs.Step2.MatchedUnique
import NoFourMUBs.Step2.RepairedCoverage

/-! Connect the universal side algebra to the actual framed Hadamard matrix. -/

open Matrix Hadamard6 ComplexConjugate NoFourMUBs.Side

noncomputable section
namespace NoFourMUBs.Step2

def transposedSeed (p : Seed) : Seed := ![p 0, p 2, p 1, p 3]

theorem transposedSeed_invariants (p : Seed) :
    seedR (transposedSeed p) = seedR p ∧ seedChi (transposedSeed p) = seedChi p := by
  have cx : ∀ i, star (p i : ℂ) = (p i : ℂ)⁻¹ := by
    intro i
    rw [Complex.star_def, ← Circle.coe_inv_eq_conj, Circle.coe_inv]
  have h0 := Circle.coe_ne_zero (p 0)
  have h1 := Circle.coe_ne_zero (p 1)
  have h2 := Circle.coe_ne_zero (p 2)
  have h3 := Circle.coe_ne_zero (p 3)
  have hP : seedP (transposedSeed p) = seedP p := by
    apply Complex.ofReal_injective
    simp only [seedP, seedX, seedY, seedZ, Complex.ofReal_add, ← Complex.mul_conj]
    simp [transposedSeed, seedS, seedT, seedRho, ← Complex.star_def, cx]
    field_simp
    ring
  have hJ : seedJ (transposedSeed p) = seedJ p := by
    apply Complex.ofReal_injective
    simp only [seedJ, Complex.ofReal_mul, Complex.ofReal_ofNat, Complex.re_eq_add_conj]
    simp [transposedSeed, seedS, seedT, seedRho, ← Complex.star_def, cx]
    field_simp
    ring
  have hχ : seedChi (transposedSeed p) = seedChi p := by
    unfold seedChi
    rw [hP, hJ]
    apply Complex.ofReal_injective
    simp only [seedX, seedY, seedZ, Complex.ofReal_sub, Complex.ofReal_add,
      Complex.ofReal_mul, ← Complex.mul_conj]
    simp [transposedSeed, seedS, seedT, seedRho, ← Complex.star_def, cx]
    field_simp
    ring
  refine ⟨?_, hχ⟩
  simp only [seedR, seedG, seedEta, hP, hJ, hχ]

theorem scalar_agreement (p : Seed) :
    gS (seedS p) (seedT p) (seedRho p) = seedG p ∧
    etaS (seedS p) (seedT p) (seedRho p) = seedEta p ∧
    chiS (seedS p) (seedT p) (seedRho p) = seedChi p := by
  have hJ : jS (seedS p) (seedT p) (seedRho p) = seedJ p := by
    have he : conj (seedS p) * conj (seedRho p) * seedT p =
        conj (seedS p * seedRho p * star (seedT p)) := by simp
    simp only [jS, seedJ, he, Complex.conj_re]
  have hP : pS (seedS p) (seedT p) (seedRho p) = seedP p := rfl
  refine ⟨?_, ?_, ?_⟩
  · change 27 - 3 * pS (seedS p) (seedT p) (seedRho p) +
        jS (seedS p) (seedT p) (seedRho p) = _
    rw [hP, hJ]
    rfl
  · change 9 - pS (seedS p) (seedT p) (seedRho p) +
        jS (seedS p) (seedT p) (seedRho p) = _
    rw [hP, hJ]
    rfl
  · simp only [chiS, hP, hJ]
    rfl

theorem right_gram_data {H : Had6} {p : Seed}
    (hD : Dephased H.1) (hE : leadingBlock H.1 = seedCorner p) :
    sS (rightBlock H.1 1) = seedS p ∧
    sS (rightBlock H.1 2) = seedT p ∧
    rS (rightBlock H.1 1) (rightBlock H.1 2) = seedRho p := by
  have hg := (hadamard_row_block_grams H.2).1
  change leadingBlock H.1 * (leadingBlock H.1)ᴴ +
    rightBlock H.1 * (rightBlock H.1)ᴴ = sixI3 at hg
  rw [hE] at hg
  have h0 : ∀ j, rightBlock H.1 0 j = 1 := fun j => hD.1 (.inr j)
  obtain ⟨hs, ht, hr⟩ := gram_rows (rightBlock H.1) h0
  have h10 := congrArg (fun M : Mat3 => M 1 0) hg
  have h20 := congrArg (fun M : Mat3 => M 2 0) hg
  have h21 := congrArg (fun M : Mat3 => M 2 1) hg
  simp only [Matrix.add_apply, hs, ht, hr] at h10 h20 h21
  simp [seedCorner, corner, Matrix.mul_apply, Fin.sum_univ_three, sixI3] at h10 h20 h21
  refine ⟨?_, ?_, ?_⟩
  · unfold seedS
    linear_combination h10
  · unfold seedT
    linear_combination h20
  · unfold seedRho
    simp only [Complex.star_def]
    linear_combination h21

theorem lower_gram_data {H : Had6} {p : Seed}
    (hD : Dephased H.1) (hE : leadingBlock H.1 = seedCorner p) :
    sS (fun i => lowerBlock H.1 i 1) = seedS (transposedSeed p) ∧
    sS (fun i => lowerBlock H.1 i 2) = seedT (transposedSeed p) ∧
    rS (fun i => lowerBlock H.1 i 1) (fun i => lowerBlock H.1 i 2) =
      seedRho (transposedSeed p) := by
  have hg := (hadamard_column_block_grams H.2).1
  change (leadingBlock H.1)ᴴ * leadingBlock H.1 +
    (lowerBlock H.1)ᴴ * lowerBlock H.1 = sixI3 at hg
  rw [hE] at hg
  have h0 : ∀ i, lowerBlock H.1 i 0 = 1 := fun i => hD.2 (.inr i)
  obtain ⟨hs, ht, hr⟩ := gram_cols (lowerBlock H.1) h0
  have h01 := congrArg (fun M : Mat3 => M 0 1) hg
  have h02 := congrArg (fun M : Mat3 => M 0 2) hg
  have h12 := congrArg (fun M : Mat3 => M 1 2) hg
  simp only [Matrix.add_apply, hs, ht, hr] at h01 h02 h12
  simp [seedCorner, corner, Matrix.mul_apply, Fin.sum_univ_three, sixI3] at h01 h02 h12
  refine ⟨?_, ?_, ?_⟩
  · simp only [seedS, transposedSeed, Matrix.cons_val_zero, Matrix.cons_val_one]
    linear_combination h01
  · simp [seedT, transposedSeed]
    linear_combination h02
  · simp [seedRho, transposedSeed]
    linear_combination h12

theorem actual_right_identities {H : Had6} {p : Seed}
    (hD : Dephased H.1) (hE : leadingBlock H.1 = seedCorner p) :
    2 * (sideSignature (rightBlock H.1)).re = seedChi p ∧
    4 * (sideSignature (rightBlock H.1)).im ^ 2 = seedR p := by
  have hx : ∀ j, Complex.normSq (rightBlock H.1 1 j) = 1 := fun j => H.2.1 _ _
  have hy : ∀ j, Complex.normSq (rightBlock H.1 2 j) = 1 := fun j => H.2.1 _ _
  obtain ⟨hs, ht, hr⟩ := right_gram_data hD hE
  obtain ⟨hg, he, hc⟩ := scalar_agreement p
  have hsigr := signature_real hx hy
  have hsigR := signature_discriminant hx hy
  rw [hs, ht, hr, hc] at hsigr
  rw [hs, ht, hr, hg, he, hc] at hsigR
  rw [sig_rows _ (fun j => hD.1 (.inr j))]
  exact ⟨hsigr, hsigR⟩

theorem actual_lower_identities {H : Had6} {p : Seed}
    (hD : Dephased H.1) (hE : leadingBlock H.1 = seedCorner p) :
    2 * (sideSignature (lowerBlock H.1)).re = seedChi p ∧
    4 * (sideSignature (lowerBlock H.1)).im ^ 2 = seedR p := by
  have hx : ∀ i, Complex.normSq (lowerBlock H.1 i 1) = 1 := fun i => H.2.1 _ _
  have hy : ∀ i, Complex.normSq (lowerBlock H.1 i 2) = 1 := fun i => H.2.1 _ _
  obtain ⟨hs, ht, hr⟩ := lower_gram_data hD hE
  obtain ⟨hg, he, hc⟩ := scalar_agreement (transposedSeed p)
  obtain ⟨htR, htχ⟩ := transposedSeed_invariants p
  have hsigr := signature_real hx hy
  have hsigR := signature_discriminant hx hy
  rw [hs, ht, hr, hc, htχ] at hsigr
  rw [hs, ht, hr, hg, he, hc] at hsigR
  change 4 * (TS _ _).im ^ 2 = seedR (transposedSeed p) at hsigR
  rw [htR] at hsigR
  rw [sig_cols _ (fun i => hD.2 (.inr i))]
  exact ⟨hsigr, hsigR⟩

/-- The local scalar input to the repaired coverage theorem is proved on
all actual matrices. No exceptional seed or singular minor is removed. -/
theorem frameScalarIdentities : FrameScalarIdentities := by
  intro H f
  have hD := framed_dephased H f
  have hE := leadingBlock_eq_seed hD
  obtain ⟨hB, hBR⟩ := actual_right_identities hD hE
  obtain ⟨hC, hCR⟩ := actual_lower_identities hD hE
  exact ⟨hB, hC, hBR, hCR⟩

end NoFourMUBs.Step2
