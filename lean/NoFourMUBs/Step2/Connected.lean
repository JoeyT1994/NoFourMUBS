import NoFourMUBs.Step2.Statements

/-!
# Coverage from connectedness (an alternative route for Step 2, not used by `Final`)

`coverage_of_connected` takes the connectedness of the non-Tao quotient `X` (`NonTaoPreconnected`, the
statement of `PROOF.md` Theorem 2) as a **hypothesis**; it is not proved here.  With the clopen covered set of
Step 4 and the Fourier class covered, connectedness gives coverage directly.  `Final.no_four_mubs` does not use
this route: it gets coverage from matched existence, matched uniqueness and density
(`coverage_of_matched_density`).  Only `ConnectedRoute` imports this module.

The Fourier class is not Tao (`fourier_not_tao`): the cross ratio `H₀₀H₁₁H̄₀₁H̄₁₀` of `F6` is `−1`, whereas every
cross ratio of a Tao matrix is a cube root of unity, and equivalence only permutes cross ratios.
-/

open Set Matrix Hadamard6 ComplexConjugate

namespace NoFourMUBs.Step2

/-- The cross ratio of a `2 × 2` minor. -/
def crossRatio (H : Mat6) (i j k l : I6) : ℂ := H i j * H k l * conj (H i l) * conj (H k j)

lemma crossRatio_of_equivalent {H K : Mat6} (h : Equivalent H K) :
    ∃ σ τ : Equiv.Perm I6, ∀ i j k l, crossRatio K i j k l = crossRatio H (σ i) (τ j) (σ k) (τ l) := by
  obtain ⟨σ, τ, r, c, hr, hc, hK⟩ := h
  refine ⟨σ, τ, fun i j k l => ?_⟩
  have u : ∀ z : ℂ, Complex.normSq z = 1 → z * conj z = 1 := fun _ hz => mul_conj_of_normSq hz
  simp only [crossRatio, hK, map_mul]
  linear_combination (H (σ i) (τ j) * H (σ k) (τ l) * conj (H (σ i) (τ l)) * conj (H (σ k) (τ j))) *
    ((r i * conj (r i)) * (r k * conj (r k)) * (c j * conj (c j)) * u (c l) (hc l) +
     (r i * conj (r i)) * (r k * conj (r k)) * u (c j) (hc j) +
     (r i * conj (r i)) * u (r k) (hr k) + u (r i) (hr i))

lemma tao_entry_cube {ω : ℂ} (hω : IsPrimitiveCubicPhase ω) (i j : I6) : (taoMatrix ω i j) ^ 3 = 1 := by
  have h3 : ω ^ 3 = 1 := by linear_combination (ω - 1) * hω.2
  have h6 : (ω ^ 2) ^ 3 = 1 := by rw [← pow_mul, show 2 * 3 = 3 * 2 by norm_num, pow_mul, h3, one_pow]
  rcases i with i | i <;> rcases j with j | j <;> fin_cases i <;> fin_cases j <;>
    simp [taoMatrix, h3, h6]

lemma tao_crossRatio_cube {ω : ℂ} (hω : IsPrimitiveCubicPhase ω) (i j k l : I6) :
    (crossRatio (taoMatrix ω) i j k l) ^ 3 = 1 := by
  simp only [crossRatio, mul_pow, ← map_pow, tao_entry_cube hω, map_one, one_mul]

lemma fourier_crossRatio : crossRatio fourierHadamard.1 (Sum.inl 0) (Sum.inl 0) (Sum.inl 1) (Sum.inl 1) = -1 := by
  simp [crossRatio, fourierHadamard, affineFourierMatrix]

/-- **The Fourier class is not Tao.** -/
theorem fourier_not_tao : ¬ TaoClass fourierClass := by
  rintro ⟨ω, hω, hT⟩
  obtain ⟨σ, τ, h⟩ := crossRatio_of_equivalent (equivalent_symm hT)
  have e := h (Sum.inl 0) (Sum.inl 0) (Sum.inl 1) (Sum.inl 1)
  rw [fourier_crossRatio] at e
  have := tao_crossRatio_cube hω (σ (Sum.inl 0)) (τ (Sum.inl 0)) (σ (Sum.inl 1)) (τ (Sum.inl 1))
  rw [← e] at this
  norm_num at this

/-- The non-Tao quotient is (pre)connected (the statement of `PROOF.md` Theorem 2; a hypothesis here). -/
def NonTaoPreconnected : Prop := IsPreconnected {q : HadamardClass6 | ¬ TaoClass q}

/-- **Coverage from connectedness.**  A clopen covered set containing the Fourier class contains every non-Tao
class. -/
theorem coverage_of_connected (Ball : Mat6 → Prop) (hX : NonTaoPreconnected) (hClopen : RecordClopen Ball)
    (hFourier : FourierAnchorCertificate Ball) :
    ∀ H, IsHadamard H → ¬ IsTaoOrbit H → ∃ G K, InGamma H G ∧ Ball K ∧ Equivalent G K := by
  intro H hH hnt
  have hsub := hX.subset_isClopen hClopen ⟨fourierClass, fourier_not_tao, hFourier⟩
  exact hsub (show ¬ TaoClass (Step2Topology.hadamardQuotient ⟨H, hH⟩) from hnt)

end NoFourMUBs.Step2
