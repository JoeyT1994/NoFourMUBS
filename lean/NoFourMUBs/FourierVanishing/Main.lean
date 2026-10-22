import NoFourMUBs.FourierVanishing.Corners
import NoFourMUBs.FourierVanishing.Criterion
import NoFourMUBs.Final
import NoFourMUBs.PRM.CoverageFourierLocus


/-!
# Fourier vanishing for non-Tao order-six Hadamards (return H, §§0, 7, 8)

**`fourierVanishing`.**  Let `H` be an order-six complex Hadamard matrix (`Hadamard6.IsHadamard H`) outside the
Tao orbit.  For every three-element row set `I`,

  `Σ_j ∏_{a ∈ I} H a j · ∏_{d ∉ I} conj (H d j) = 0`,

and likewise for every three-element column set.

* `moments_vanish` (the complementary-invariant criterion, §0): corner conjugacy (0.2) and one nonsingular
  `3 × 3` minor of `H^[2]` kill all twenty row moments.  The nine mixed moments of a good arrangement come from
  `mixed_moments`, their conjugates from `moment_compl`, and the last two from one exchange (`good_swap`).
* `exists_good` (§§7–8): a strict corner (`PRM.strictCornerCoverage` with the Fourier critical locus,
  `PRM.Coverage.strictCorner_of_not_F6`) has a nonsingular square
  (`det_sqMat_ne_zero`); the Fourier class has the explicit minor on rows and columns `{0, 2, 4}`.
* Columns follow by transposition: the Tao matrix is symmetric (`taoMatrix_transpose`).
-/

open Matrix Equiv Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.FourierVanishing

lemma isHadamard_row {H : Mat6} (hH : Hadamard6.IsHadamard H) (σ : Perm I6) :
    Hadamard6.IsHadamard (H.submatrix σ id) :=
  reindexMatrix_isHadamard (σ := σ) (τ := Equiv.refl I6) hH

/-- The top and bottom row triples. -/
abbrev topSet : Finset I6 := Finset.univ.map Function.Embedding.inl
abbrev botSet : Finset I6 := Finset.univ.map Function.Embedding.inr

/-- Every row triple is the top, the bottom, a mixed triple or the complement of one. -/
lemma classify : ∀ U : Finset I6, U.card = 3 → U = topSet ∨ U = botSet ∨
    ∃ r s, U = mixedSet r s ∨ U = (mixedSet r s)ᶜ := by
  decide

lemma mixedSet_swap (t : Fin 3) :
    (mixedSet t 0).map (swap (.inl t) (.inr 0)).toEmbedding = botSet := by
  fin_cases t <;> decide

lemma topSet_eq : topSet = botSetᶜ := by decide

/-- **The complementary-invariant criterion (§0).** -/
theorem moments_vanish {H : Mat6} (hH : Hadamard6.IsHadamard H) (hm : PRM.AllCornersMatched H)
    {σ₀ τ₀ : Perm I6} (hg : (sqMat (blockE (H.submatrix σ₀ id) τ₀)).det ≠ 0) (T : Finset I6)
    (hT : T.card = 3) : moment H T = 0 := by
  set K := H.submatrix σ₀ id
  have hK := isHadamard_row hH σ₀
  have mix := mixed_moments hK (cornerConj_of_matched hm σ₀) hg
  have bot : moment K botSet = 0 := by
    obtain ⟨t, ht⟩ := good_swap hK.1 hg 0
    set π := swap (Sum.inl t : I6) (.inr 0)
    have hK' : K.submatrix π id = H.submatrix (σ₀ * π) id := rfl
    rw [hK'] at ht
    have := mixed_moments (isHadamard_row hH _) (cornerConj_of_matched hm (σ₀ * π)) ht t 0
    rw [← hK', moment_submatrix, mixedSet_swap] at this
    exact this
  have key : ∀ U : Finset I6, U.card = 3 → moment K U = 0 := by
    intro U hU
    rcases classify U hU with rfl | rfl | ⟨r, s, rfl | rfl⟩
    · rw [topSet_eq, moment_compl, bot, map_zero]
    · exact bot
    · exact mix r s
    · rw [moment_compl, mix r s, map_zero]
  have e : moment H T = moment K (T.map σ₀.symm.toEmbedding) := by
    rw [moment_submatrix]; congr 1; ext x; simp
  rw [e]
  exact key _ (by rw [Finset.card_map, hT])

/-! ### The rank hypothesis (§§7–8) -/

/-- The Fourier block on rows and columns `{inl 0, inr 1, inl 2}` has a nonsingular square. -/
lemma fourier_block {ω : ℂ} (hω : IsPrimitiveCubicPhase ω) :
    (sqMat (Matrix.of fun i j => affineFourierMatrix ω 1 1 (swap (.inl 1) (.inr 1) (.inl i))
      (swap (.inl 1) (.inr 1) (.inl j)) : Mat3)).det ≠ 0 := by
  have hd : (sqMat (Matrix.of fun i j => affineFourierMatrix ω 1 1 (swap (.inl 1) (.inr 1) (.inl i))
      (swap (.inl 1) (.inr 1) (.inl j)) : Mat3)).det = 3 * ω * (1 - ω) := by
    rw [det_fin_three]
    simp [sqMat, affineFourierMatrix, swap_apply_def]
    linear_combination (-ω ^ 6 + ω ^ 5 - ω ^ 3 + 4 * ω ^ 2 - 3 * ω) * hω.2
  rw [hd]
  have h0 : ω ≠ 0 := Side.ne_zero_of_normSq hω.1
  have h1 : 1 - ω ≠ 0 := by
    intro h; have : ω = 1 := by linear_combination -h
    have := hω.2; rw [‹ω = 1›] at this; norm_num at this
  exact mul_ne_zero (mul_ne_zero (by norm_num) h0) h1

lemma sqMat_phase (X : Mat3) (a b : Fin 3 → ℂ) :
    sqMat (Matrix.of fun i j => a i * X i j * b j : Mat3) =
      diagonal (fun i => a i ^ 2) * sqMat X * diagonal (fun j => b j ^ 2) := by
  ext i j; simp [sqMat, mul_diagonal, diagonal_mul]; ring

/-- **§§7–8.** A non-Tao Hadamard has a row arrangement and split with nonsingular `H[I,J]^[2]`. -/
theorem exists_good {H : Mat6} (hH : Hadamard6.IsHadamard H) :
    ∃ σ₀ τ₀ : Perm I6, (sqMat (blockE (H.submatrix σ₀ id) τ₀)).det ≠ 0 := by
  by_cases hF : Equivalent H Step2.fourierHadamard.1
  · obtain ⟨σ, τ, r, c, hr, hc, hrel⟩ := hF
    set π : Perm I6 := swap (.inl 1) (.inr 1)
    refine ⟨σ * π, τ * π, ?_⟩
    set X : Mat3 := Matrix.of fun i j => affineFourierMatrix standardOmega 1 1 (π (.inl i)) (π (.inl j))
    have e : blockE (H.submatrix (σ * π) id) (τ * π) = Matrix.of fun i j =>
        conj (r (π (.inl i))) * X i j * conj (c (π (.inl j))) := by
      ext i j
      simp only [X, blockE, Matrix.of_apply, Matrix.submatrix_apply, id, Perm.mul_apply]
      have h := hrel (π (.inl i)) (π (.inl j))
      have hrr := mul_conj_of_normSq (hr (π (.inl i)))
      have hcc := mul_conj_of_normSq (hc (π (.inl j)))
      simp only [Step2.fourierHadamard] at h
      rw [h]
      linear_combination (-(H (σ (π (.inl i))) (τ (π (.inl j)))) * (c (π (.inl j)) * conj (c (π (.inl j))))) *
        hrr - H (σ (π (.inl i))) (τ (π (.inl j))) * hcc
    rw [e, sqMat_phase, det_mul, det_mul, det_diagonal, det_diagonal]
    refine mul_ne_zero (mul_ne_zero ?_ (fourier_block standardOmega_isPrimitiveCubicPhase)) ?_
    · exact Finset.prod_ne_zero_iff.2 fun i _ =>
        pow_ne_zero _ ((map_ne_zero _).2 (Side.ne_zero_of_normSq (hr _)))
    · exact Finset.prod_ne_zero_iff.2 fun j _ =>
        pow_ne_zero _ ((map_ne_zero _).2 (Side.ne_zero_of_normSq (hc _)))
  · obtain ⟨σ, τ, hIm⟩ := PRM.Coverage.strictCorner_of_not_F6 PRM.strictCornerCoverage hH hF
    refine ⟨σ, τ * swapHalves, ?_⟩
    have e : blockE (H.submatrix σ id) (τ * swapHalves) = Step2.rightBlock (H.submatrix σ τ) := by
      ext i j; rfl
    rw [e]
    exact det_sqMat_ne_zero _ (fun i j => hH.1 _ _) hIm

/-! ### Rows, columns and the statement -/

lemma moment_eq (K : Mat6) (T : Finset I6) :
    moment K T = ∑ j, (∏ a ∈ T, K a j) * ∏ d ∈ Tᶜ, conj (K d j) := by
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [Finset.prod_ite]
  congr 2 <;> ext x <;> simp

/-- Row Fourier vanishing. -/
theorem rowVanishing (H : Mat6) (hH : Hadamard6.IsHadamard H) (hT : ¬ IsTaoOrbit H) (I : Finset I6)
    (hI : I.card = 3) : ∑ j, (∏ a ∈ I, H a j) * ∏ d ∈ Iᶜ, conj (H d j) = 0 := by
  obtain ⟨σ₀, τ₀, hg⟩ := exists_good hH
  rw [← moment_eq]
  exact moments_vanish hH (allCornersMatched H hH hT) hg I hI

lemma taoMatrix_transpose (ω : ℂ) : (taoMatrix ω)ᵀ = taoMatrix ω := by
  ext i j
  rcases i with i | i <;> rcases j with j | j <;> fin_cases i <;> fin_cases j <;> rfl

lemma not_tao_transpose {H : Mat6} (hT : ¬ IsTaoOrbit H) : ¬ IsTaoOrbit Hᵀ := by
  rintro ⟨ω, hω, he⟩
  refine hT ⟨ω, hω, ?_⟩
  have := equivalent_transpose he
  rwa [Matrix.transpose_transpose, taoMatrix_transpose] at this

/-- **Fourier vanishing (return H).**  For an order-six complex Hadamard matrix outside the Tao orbit, every
row triple `I` and every column triple `J` has vanishing Fourier moment. -/
theorem fourierVanishing (H : Mat6) (hH : Hadamard6.IsHadamard H) (hT : ¬ IsTaoOrbit H) :
    (∀ I : Finset I6, I.card = 3 → ∑ j, (∏ a ∈ I, H a j) * ∏ d ∈ Iᶜ, conj (H d j) = 0) ∧
    (∀ J : Finset I6, J.card = 3 → ∑ i, (∏ b ∈ J, H i b) * ∏ d ∈ Jᶜ, conj (H i d) = 0) :=
  ⟨rowVanishing H hH hT, fun J hJ => by
    simpa using rowVanishing Hᵀ (transpose_isHadamard hH) (not_tao_transpose hT) J hJ⟩

end NoFourMUBs.FourierVanishing
