import NoFourMUBs.PRM.CoverageInputs

/-!
# The geometric-row route (`PRM.md` §7.1, `FOURIER_ROUTING.md` §2)

**`geometricRowRoute : GeometricRowRoute`.**  If three rows of a Hadamard matrix phase into
`(1, …, 1)`, `(x₁, …, x₆)`, `(x̄₁, …, x̄₆)`, then the matrix contains a `3 × 3` Hadamard submatrix.

Orthogonality gives `Σ xⱼ = Σ xⱼ² = 0`, so `e₁ = e₂ = 0`; for unit roots `e₅ = e₆ ē₁` and
`e₄ = e₆ ē₂` vanish too, so `P(t) = ∏ (t − xⱼ) = t⁶ − e₃ t³ + e₆` and `P(ω t) = P(t)`
(`prod_shift`).  Hence with `x₀` also `ω x₀` and `ω² x₀` occur among the `xⱼ` (`geometric_columns`),
and the three rows on these three columns are, up to phases, `[1, 1, 1; X, Xω, Xω²; X̄, X̄ω², X̄ω]`,
a `3 × 3` Hadamard matrix.  With `equivalent_F6_of_block` this is the step of §7.1 that the paper
completes to the Fourier family.
-/

open Matrix Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage

/-! ### Injections into `I6` extend to permutations -/

theorem exists_perm_inr {f : Fin 3 → I6} (hf : Function.Injective f) :
    ∃ π : Equiv.Perm I6, ∀ i, π (Sum.inr i) = f i := by
  obtain ⟨k, m, hk⟩ := cover (fun i => e6 (f i)) (e6.injective.comp hf)
  refine ⟨(Equiv.sumCongr (Equiv.refl _) (p3 m)).trans (triPerm k), fun i => ?_⟩
  simp only [Equiv.trans_apply, Equiv.sumCongr_apply, Sum.map_inr, triPerm_inr]
  rw [← hk i, Equiv.symm_apply_apply]

theorem exists_perm_inl {f : Fin 3 → I6} (hf : Function.Injective f) :
    ∃ π : Equiv.Perm I6, ∀ i, π (Sum.inl i) = f i := by
  obtain ⟨k, m, hk⟩ := cover (fun i => e6 (f i)) (e6.injective.comp hf)
  refine ⟨(Equiv.sumCongr (p3 m) (Equiv.refl _)).trans (triPerm (19 - k)), fun i => ?_⟩
  simp only [Equiv.trans_apply, Equiv.sumCongr_apply, Sum.map_inl, triPerm_inl]
  rw [← hk i, Equiv.symm_apply_apply]

/-- Three rows and three columns forming a `3 × 3` Hadamard matrix give `HasHadamardBlock`. -/
theorem hasHadamardBlock_of {H : Mat6} {r c : Fin 3 → I6} (hr : Function.Injective r)
    (hc : Function.Injective c) (h : IsHadamard3 (Matrix.of fun i j => H (r i) (c j))) :
    HasHadamardBlock H := by
  obtain ⟨σ, hσ⟩ := exists_perm_inl hr
  obtain ⟨τ, hτ⟩ := exists_perm_inr hc
  refine ⟨σ, τ, ?_⟩
  have e : Step2.rightBlock (H.submatrix σ τ) = Matrix.of fun i j => H (r i) (c j) := by
    ext i j; simp [Step2.rightBlock, hσ, hτ]
  rw [e]; exact h

/-! ### Six unit numbers with `Σ x = Σ x² = 0` -/

/-- The elementary symmetric function `e2` of six numbers. -/
def esym2 (u : Fin 6 → ℂ) : ℂ :=
  u 0 * u 1 + u 0 * u 2 + u 0 * u 3 + u 0 * u 4 + u 0 * u 5
    + u 1 * u 2 + u 1 * u 3 + u 1 * u 4 + u 1 * u 5 + u 2 * u 3 + u 2 * u 4 + u 2 * u 5 + u 3 * u 4
    + u 3 * u 5 + u 4 * u 5

/-- The elementary symmetric function `e3` of six numbers. -/
def esym3 (u : Fin 6 → ℂ) : ℂ :=
  u 0 * u 1 * u 2 + u 0 * u 1 * u 3 + u 0 * u 1 * u 4
    + u 0 * u 1 * u 5 + u 0 * u 2 * u 3 + u 0 * u 2 * u 4 + u 0 * u 2 * u 5 + u 0 * u 3 * u 4
    + u 0 * u 3 * u 5 + u 0 * u 4 * u 5 + u 1 * u 2 * u 3 + u 1 * u 2 * u 4 + u 1 * u 2 * u 5
    + u 1 * u 3 * u 4 + u 1 * u 3 * u 5 + u 1 * u 4 * u 5 + u 2 * u 3 * u 4 + u 2 * u 3 * u 5
    + u 2 * u 4 * u 5 + u 3 * u 4 * u 5

/-- The elementary symmetric function `e4` of six numbers. -/
def esym4 (u : Fin 6 → ℂ) : ℂ :=
  u 0 * u 1 * u 2 * u 3 + u 0 * u 1 * u 2 * u 4
    + u 0 * u 1 * u 2 * u 5 + u 0 * u 1 * u 3 * u 4 + u 0 * u 1 * u 3 * u 5 + u 0 * u 1 * u 4 * u 5
    + u 0 * u 2 * u 3 * u 4 + u 0 * u 2 * u 3 * u 5 + u 0 * u 2 * u 4 * u 5 + u 0 * u 3 * u 4 * u 5
    + u 1 * u 2 * u 3 * u 4 + u 1 * u 2 * u 3 * u 5 + u 1 * u 2 * u 4 * u 5 + u 1 * u 3 * u 4 * u 5
    + u 2 * u 3 * u 4 * u 5

/-- The elementary symmetric function `e5` of six numbers. -/
def esym5 (u : Fin 6 → ℂ) : ℂ :=
  u 0 * u 1 * u 2 * u 3 * u 4 + u 0 * u 1 * u 2 * u 3 * u 5
    + u 0 * u 1 * u 2 * u 4 * u 5 + u 0 * u 1 * u 3 * u 4 * u 5 + u 0 * u 2 * u 3 * u 4 * u 5
    + u 1 * u 2 * u 3 * u 4 * u 5

theorem esym2_eq (u : Fin 6 → ℂ) :
    2 * esym2 u = (∑ j, u j) ^ 2 - ∑ j, u j ^ 2 := by
  simp only [esym2, Fin.sum_univ_six]; ring

private lemma conj_eq_inv' {z : ℂ} (h : Complex.normSq z = 1) : conj z = z⁻¹ := by
  rw [Complex.inv_def, h, inv_one, Complex.ofReal_one, mul_one]

private lemma ne_zero' {z : ℂ} (h : Complex.normSq z = 1) : z ≠ 0 := by
  rintro rfl; simp at h

/-- `e₅ = e₆ ē₁` for unit numbers. -/
theorem esym5_eq {u : Fin 6 → ℂ} (hu : ∀ j, Complex.normSq (u j) = 1) :
    esym5 u = (∏ j, u j) * conj (∑ j, u j) := by
  have c := fun j => conj_eq_inv' (hu j)
  have n0 := ne_zero' (hu 0); have n1 := ne_zero' (hu 1); have n2 := ne_zero' (hu 2)
  have n3 := ne_zero' (hu 3); have n4 := ne_zero' (hu 4); have n5 := ne_zero' (hu 5)
  simp only [esym5, Fin.sum_univ_six, Fin.prod_univ_six, map_add, c]
  field_simp
  ring

/-- `e₄ = e₆ ē₂` for unit numbers. -/
theorem esym4_eq {u : Fin 6 → ℂ} (hu : ∀ j, Complex.normSq (u j) = 1) :
    esym4 u = (∏ j, u j) * conj (esym2 u) := by
  have c := fun j => conj_eq_inv' (hu j)
  have n0 := ne_zero' (hu 0); have n1 := ne_zero' (hu 1); have n2 := ne_zero' (hu 2)
  have n3 := ne_zero' (hu 3); have n4 := ne_zero' (hu 4); have n5 := ne_zero' (hu 5)
  simp only [esym4, esym2, Fin.prod_univ_six, map_add, map_mul, c]
  field_simp
  ring

/-- `P(ω t) = P(t)` for `P = ∏ (t − uⱼ)` when `e₁ = e₂ = e₄ = e₅ = 0` and `ω³ = 1`. -/
theorem prod_shift (u : Fin 6 → ℂ) (ω t : ℂ) (h1 : ∑ j, u j = 0) (h2 : esym2 u = 0)
    (h4 : esym4 u = 0) (h5 : esym5 u = 0) (h3 : ω ^ 3 = 1) :
    ∏ j, (ω * t - u j) = ∏ j, (t - u j) := by
  simp only [Fin.sum_univ_six] at h1
  simp only [esym2] at h2
  simp only [esym4] at h4
  simp only [esym5] at h5
  simp only [Fin.prod_univ_six]
  linear_combination (norm := skip) ((ω ^ 3 + 1) * t ^ 6 - esym3 u * t ^ 3) * h3 -
    (ω ^ 5 - 1) * t ^ 5 * h1 + (ω ^ 4 - 1) * t ^ 4 * h2 + (ω ^ 2 - 1) * t ^ 2 * h4 -
    (ω - 1) * t * h5
  simp only [esym3]
  ring

/-- **Two equilateral triples.**  With `x₀` also `ω x₀` and `ω² x₀` are among the `xⱼ`. -/
theorem geometric_columns {x : I6 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1) (hs1 : ∑ j, x j = 0)
    (hs2 : ∑ j, x j ^ 2 = 0) {ω : ℂ} (hω3 : ω ^ 3 = 1) (j0 : I6) :
    ∃ j1 j2 : I6, x j1 = ω * x j0 ∧ x j2 = ω ^ 2 * x j0 := by
  set u : Fin 6 → ℂ := fun k => x (e6.symm k) with hu_def
  have hu : ∀ k, Complex.normSq (u k) = 1 := fun k => hx _
  have h1 : ∑ k, u k = 0 := by rw [← hs1, ← Equiv.sum_comp e6.symm x]
  have h1' : ∑ k, u k ^ 2 = 0 := by rw [← hs2, ← Equiv.sum_comp e6.symm (fun j => x j ^ 2)]
  have h2 : esym2 u = 0 := by
    have := esym2_eq u
    rw [h1, h1'] at this
    linear_combination this / 2
  have h5 : esym5 u = 0 := by rw [esym5_eq hu, h1, map_zero, mul_zero]
  have h4 : esym4 u = 0 := by rw [esym4_eq hu, h2, map_zero, mul_zero]
  have hP : ∀ t, ∏ k, (ω * t - u k) = ∏ k, (t - u k) := fun t => prod_shift u ω t h1 h2 h4 h5 hω3
  have root : ∀ t : ℂ, (∃ k, u k = t) → ∃ k, u k = ω * t := by
    rintro t ⟨k0, hk0⟩
    have hz : ∏ k, (t - u k) = 0 := Finset.prod_eq_zero (Finset.mem_univ k0) (by rw [hk0, sub_self])
    rw [← hP t] at hz
    obtain ⟨k, -, hk⟩ := Finset.prod_eq_zero_iff.1 hz
    exact ⟨k, (sub_eq_zero.1 hk).symm⟩
  obtain ⟨k1, hk1⟩ := root (x j0) ⟨e6 j0, by simp [u]⟩
  obtain ⟨k2, hk2⟩ := root (ω * x j0) ⟨k1, hk1⟩
  exact ⟨e6.symm k1, e6.symm k2, hk1, by rw [show x (e6.symm k2) = u k2 from rfl, hk2]; ring⟩

/-! ### The Fourier block -/

/-- `[1, 1, 1; X, Xω, Xω²; X̄, X̄ω², X̄ω]`. -/
def geoBlock (ω X : ℂ) : Mat3 :=
  !![1, 1, 1; X, X * ω, X * ω ^ 2; conj X, conj X * ω ^ 2, conj X * ω]

set_option linter.unusedSimpArgs false in
set_option linter.unusedTactic false in
set_option linter.unreachableTactic false in
theorem geoBlock_isHadamard3 {ω X : ℂ} (hω : IsPrimitiveCubicPhase ω) (hX : Complex.normSq X = 1) :
    IsHadamard3 (geoBlock ω X) := by
  have hs : conj ω = ω ^ 2 := primitiveCubicPhase_star hω
  have h3 : ω ^ 3 = 1 := by linear_combination (ω - 1) * hω.2
  have hXX : X * conj X = 1 := by rw [Complex.mul_conj, hX, Complex.ofReal_one]
  have hω1 : Complex.normSq ω = 1 := hω.1
  have h4 : ω ^ 4 = ω := by rw [pow_succ, h3, one_mul]
  have h5 : ω ^ 5 = ω ^ 2 := by rw [show 5 = 3 + 2 by rfl, pow_add, h3, one_mul]
  have h6 : ω ^ 6 = 1 := by rw [show 6 = 3 * 2 by rfl, pow_mul, h3, one_pow]
  constructor
  · intro i j
    fin_cases i <;> fin_cases j <;>
      simp [geoBlock, Complex.normSq_mul, Complex.normSq_conj, hX, hω1]
  · ext i j
    fin_cases i <;> fin_cases j <;>
      simp [geoBlock, Matrix.mul_apply, Fin.sum_univ_three, Matrix.conjTranspose_apply, hs] <;>
      ring_nf <;> (try simp only [h3, h4, h5, h6]) <;>
      first
        | ring1
        | linear_combination X * hω.2
        | linear_combination conj X * hω.2
        | linear_combination X ^ 2 * hω.2
        | linear_combination conj X ^ 2 * hω.2
        | linear_combination 3 * hXX

/-! ### The route -/

theorem row_orth {H : Mat6} (hH : Hadamard6.IsHadamard H) {a b : I6} (hab : a ≠ b) :
    ∑ j, H a j * conj (H b j) = 0 := by
  have h := congrArg (fun M : Mat6 => M a b) hH.2
  simpa [Matrix.mul_apply, Matrix.conjTranspose_apply, Matrix.one_apply, Complex.star_def, hab] using h

private lemma mc {z : ℂ} (h : Complex.normSq z = 1) : z * conj z = 1 := by
  rw [Complex.mul_conj, h, Complex.ofReal_one]

/-- Solving `a H c = N` for the entry `H`. -/
private lemma solve_entry {a h c n : ℂ} (ha : Complex.normSq a = 1) (hc : Complex.normSq c = 1)
    (e : a * h * c = n) : h = conj a * n * conj c := by
  rw [← e]
  linear_combination (-h * (c * conj c)) * mc ha + (-h) * mc hc

theorem primitive_ne {ω : ℂ} (hω : IsPrimitiveCubicPhase ω) :
    ω ≠ 1 ∧ ω ^ 2 ≠ 1 ∧ ω ≠ ω ^ 2 := by
  have h2 := hω.2
  refine ⟨fun h => ?_, fun h => ?_, fun h => ?_⟩
  · rw [h] at h2; norm_num at h2
  · have : ω = -2 := by linear_combination h2 - h
    have hn := hω.1
    rw [this] at hn; norm_num [Complex.normSq_apply] at hn
  · have : ω * (ω - 1) = 0 := by linear_combination -h
    rcases mul_eq_zero.1 this with h0 | h1
    · rw [h0] at h2; norm_num at h2
    · rw [sub_eq_zero.1 h1] at h2; norm_num at h2

/-- **The geometric-row route of `PRM.md` §7.1.** -/
theorem geometricRowRoute : GeometricRowRoute := by
  intro H hH r hr ⟨a, c, x, ha, hc, hrow⟩
  have e0 : ∀ j, H (r 0) j = conj (a 0) * 1 * conj (c j) := fun j =>
    solve_entry (ha 0) (hc j) (hrow j).1
  have e1 : ∀ j, H (r 1) j = conj (a 1) * x j * conj (c j) := fun j =>
    solve_entry (ha 1) (hc j) (hrow j).2.1
  have e2 : ∀ j, H (r 2) j = conj (a 2) * conj (x j) * conj (c j) := fun j =>
    solve_entry (ha 2) (hc j) (hrow j).2.2
  have hx : ∀ j, Complex.normSq (x j) = 1 := by
    intro j
    rw [← (hrow j).2.1, Complex.normSq_mul, Complex.normSq_mul, ha, hc, hH.1 (r 1) j]
    ring
  have hs1 : ∑ j, x j = 0 := by
    have h := row_orth hH (hr.ne (show (1 : Fin 3) ≠ 0 by decide))
    have e : ∑ j, H (r 1) j * conj (H (r 0) j) = conj (a 1) * a 0 * ∑ j, x j := by
      rw [Finset.mul_sum]
      refine Finset.sum_congr rfl fun j _ => ?_
      rw [e1, e0]
      simp only [map_mul, Complex.conj_conj, map_one]
      linear_combination (conj (a 1) * a 0 * x j) * mc (hc j)
    rw [e] at h
    have hne : conj (a 1) * a 0 ≠ 0 :=
      mul_ne_zero ((map_ne_zero _).2 (ne_zero' (ha 1))) (ne_zero' (ha 0))
    exact (mul_eq_zero.1 h).resolve_left hne
  have hs2 : ∑ j, x j ^ 2 = 0 := by
    have h := row_orth hH (hr.ne (show (1 : Fin 3) ≠ 2 by decide))
    have e : ∑ j, H (r 1) j * conj (H (r 2) j) = conj (a 1) * a 2 * ∑ j, x j ^ 2 := by
      rw [Finset.mul_sum]
      refine Finset.sum_congr rfl fun j _ => ?_
      rw [e1, e2]
      simp only [map_mul, Complex.conj_conj]
      linear_combination (conj (a 1) * a 2 * x j ^ 2) * mc (hc j)
    rw [e] at h
    have hne : conj (a 1) * a 2 ≠ 0 :=
      mul_ne_zero ((map_ne_zero _).2 (ne_zero' (ha 1))) (ne_zero' (ha 2))
    exact (mul_eq_zero.1 h).resolve_left hne
  -- the two equilateral triples
  have hω := standardOmega_isPrimitiveCubicPhase
  set ω := standardOmega
  have h3 : ω ^ 3 = 1 := by linear_combination (ω - 1) * hω.2
  obtain ⟨j1, j2, hj1, hj2⟩ := geometric_columns hx hs1 hs2 h3 (Sum.inl 0)
  set X := x (Sum.inl 0)
  have hX0 : X ≠ 0 := ne_zero' (hx _)
  obtain ⟨n1, n2, n3⟩ := primitive_ne hω
  let col : Fin 3 → I6 := ![Sum.inl 0, j1, j2]
  have hcol : Function.Injective col := by
    have v : ∀ k, x (col k) = ![X, ω * X, ω ^ 2 * X] k := by
      intro k; fin_cases k
      · rfl
      · exact hj1
      · exact hj2
    intro k k' hk
    have hv := congrArg x hk
    rw [v, v] at hv
    have d : ∀ p q : ℂ, p ≠ q → p * X ≠ q * X := fun p q hpq h => hpq (mul_right_cancel₀ hX0 h)
    fin_cases k <;> fin_cases k' <;> simp at hv ⊢ <;> (try rcases hv with hv | hv) <;>
      first
        | exact hX0 hv
        | exact n1 hv
        | exact n1 hv.symm
        | exact n2 hv
        | exact n2 hv.symm
        | exact n3 hv
        | exact n3 hv.symm
        | exact d 1 ω (Ne.symm n1) (by linear_combination hv)
        | exact d 1 ω (Ne.symm n1) (by linear_combination -hv)
        | exact d 1 (ω ^ 2) (Ne.symm n2) (by linear_combination hv)
        | exact d 1 (ω ^ 2) (Ne.symm n2) (by linear_combination -hv)
  refine hasHadamardBlock_of hr hcol ?_
  have hs : conj ω = ω ^ 2 := primitiveCubicPhase_star hω
  have h4 : ω ^ 4 = ω := by rw [pow_succ, h3, one_mul]
  have hblock : (Matrix.of fun i k => H (r i) (col k)) =
      biGauge (fun i => conj (a i)) (fun k => conj (c (col k))) (geoBlock ω X) := by
    ext i k
    fin_cases i <;> fin_cases k <;>
      simp [biGauge, geoBlock, col, e0, e1, e2, hj1, hj2, X, hs] <;> ring_nf <;>
      (try simp only [h4]) <;> first | ring1 | simp
  rw [hblock]
  exact biGauge_isHadamard3 (fun i => by simpa using ha i) (fun k => by simpa using hc (col k))
    (geoBlock_isHadamard3 hω (hx _))

end NoFourMUBs.PRM.Coverage
