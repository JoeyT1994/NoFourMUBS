import NoFourMUBs.Step2.SideAlg

/-!
# Products and permanent of an actual side

`FLATNESS.md` §3: for a normalised phase side `(1; x; y)` with Gram data `(s, t, r)`, signature `T` and
`g = |det|² > 0`, put `z = T / g`.  If `z z̄ = η` and `g (z + z̄) = χ` and `P₀, P₁, P₂ ≠ 0`, then the conjugate
row products and permanent are rational in `(s, t, r, z)`:
`λⱼ P̄ⱼ = g + cⱼ z̄` with `λ₀ = −u v h̄ / h`, `λ₁ = −v h̄ / h`, `λ₂ = −u h̄ / h` (`SideAlg.lam_eq`), so
`ū = λ̄₀ λ₁`, `v̄ = λ̄₀ λ₂`, `π = z λ₀`.
-/

open ComplexConjugate NoFourMUBs.Side

noncomputable section

namespace NoFourMUBs.L1

/-- The algebra of `side_formulas`, for abstract `u, v, π, h` satisfying the three Laurent identities. -/
lemma side_formulas_core {u v π h P0 P1 P2 : ℂ} {g c0 c1 c2 η χ : ℝ}
    (hu : u * conj u = 1) (hv : v * conj v = 1) (hh : h * conj h = (g : ℂ)) (hg0 : 0 < g)
    (I0 : h ^ 2 = u * v * (c0 : ℂ) * conj π - u * v * conj P0)
    (I1 : h ^ 2 = u * v * (c1 : ℂ) * conj π - v * conj P1)
    (I2 : h ^ 2 = u * v * (c2 : ℂ) * conj π - u * conj P2)
    (hzz : ((-π * h ^ 2 * conj u * conj v) / g) * conj ((-π * h ^ 2 * conj u * conj v) / g) = η)
    (hzs : (g : ℂ) * ((-π * h ^ 2 * conj u * conj v) / g + conj ((-π * h ^ 2 * conj u * conj v) / g)) = χ)
    (hP0 : P0 ≠ 0) (hP1 : P1 ≠ 0) (hP2 : P2 ≠ 0) :
    let z := (-π * h ^ 2 * conj u * conj v) / g
    conj u = ((g : ℂ) + c0 * z) * ((g : ℂ) + c1 * conj z) / (P0 * conj P1) ∧
    conj v = ((g : ℂ) + c0 * z) * ((g : ℂ) + c2 * conj z) / (P0 * conj P2) ∧
    conj π = ((χ : ℂ) + c0 * η - g * z) / P0 ∧
    conj u * π = ((g : ℂ) * z + c1 * η) / conj P1 ∧
    conj v * π = ((g : ℂ) * z + c2 * η) / conj P2 := by
  intro z
  have hh0 : h ≠ 0 := by
    rintro rfl
    have : ((g : ℝ) : ℂ) = 0 := by rw [← hh]; simp
    exact hg0.ne' (by exact_mod_cast this)
  have hhc : conj h ≠ 0 := (map_ne_zero _).mpr hh0
  have hP1c : conj P1 ≠ 0 := (map_ne_zero _).mpr hP1
  have hP2c : conj P2 ≠ 0 := (map_ne_zero _).mpr hP2
  have L0 := lam_eq hh0 _ I0
  have L1 := lam_eq hh0 _ I1
  have L2 := lam_eq hh0 _ I2
  rw [hh] at L0 L1 L2
  change _ = _ + _ * conj z at L0 L1 L2
  have L0c := congrArg conj L0
  simp only [map_mul, map_add, Complex.conj_ofReal, Complex.conj_conj] at L0c
  have Kpi : z * (-(u * v) * conj h / h) = π := by
    have := pi_eq (π := π) hh0 hu hv
    rw [hh] at this
    exact this.symm
  have K1 : conj (-(u * v) * conj h / h) * (-v * conj h / h) = conj u := by
    simp only [map_div₀, map_mul, map_neg, Complex.conj_conj]
    field_simp
    linear_combination (conj u) * hv
  have K2 : conj (-(u * v) * conj h / h) * (-u * conj h / h) = conj v := by
    simp only [map_div₀, map_mul, map_neg, Complex.conj_conj]
    field_simp
    linear_combination (conj v) * hu
  have N0 : conj (-(u * v) * conj h / h) * (-(u * v) * conj h / h) = 1 := by
    simp only [map_div₀, map_mul, map_neg, Complex.conj_conj]
    field_simp
    linear_combination (u * conj u) * hv + hu
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · rw [eq_div_iff (mul_ne_zero hP0 hP1c)]
    linear_combination (-(P0 * conj P1)) * K1 + (-v * conj h / h * conj P1) * L0c
      + ((g : ℂ) + c0 * z) * L1
  · rw [eq_div_iff (mul_ne_zero hP0 hP2c)]
    linear_combination (-(P0 * conj P2)) * K2 + (-u * conj h / h * conj P2) * L0c
      + ((g : ℂ) + c0 * z) * L2
  · rw [eq_div_iff hP0]
    have Kc := congrArg conj Kpi
    simp only [map_mul] at Kc
    linear_combination (-P0) * Kc + conj z * L0c + (c0 : ℂ) * hzz + hzs
  · rw [eq_div_iff hP1c]
    linear_combination (-π * conj P1) * K1
      + (-(conj (-(u * v) * conj h / h) * (-v * conj h / h) * conj P1)) * Kpi
      + (z * (-v * conj h / h) * conj P1) * N0 + z * L1 + (c1 : ℂ) * hzz
  · rw [eq_div_iff hP2c]
    linear_combination (-π * conj P2) * K2
      + (-(conj (-(u * v) * conj h / h) * (-u * conj h / h) * conj P2)) * Kpi
      + (z * (-u * conj h / h) * conj P2) * N0 + z * L2 + (c2 : ℂ) * hzz

theorem side_formulas {x y : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) {g η χ : ℝ}
    (hg : gS (sS x) (sS y) (rS x y) = g) (hg0 : 0 < g)
    (hzz : (TS x y / g) * conj (TS x y / g) = η) (hzs : (g : ℂ) * (TS x y / g + conj (TS x y / g)) = χ)
    (hP0 : P0 (sS x) (sS y) (rS x y) ≠ 0) (hP1 : P1 (sS x) (sS y) (rS x y) ≠ 0)
    (hP2 : P2 (sS x) (sS y) (rS x y) ≠ 0) :
    let s := sS x; let t := sS y; let r := rS x y; let z := TS x y / g
    let c0 : ℂ := cR r; let c1 : ℂ := cR t; let c2 : ℂ := cR s
    conj (uS x) = ((g : ℂ) + c0 * z) * ((g : ℂ) + c1 * conj z) / (P0 s t r * conj (P1 s t r)) ∧
    conj (uS y) = ((g : ℂ) + c0 * z) * ((g : ℂ) + c2 * conj z) / (P0 s t r * conj (P2 s t r)) ∧
    conj (piS x y) = ((χ : ℂ) + c0 * η - g * z) / P0 s t r ∧
    conj (uS x) * piS x y = ((g : ℂ) * z + c1 * η) / conj (P1 s t r) ∧
    conj (uS y) * piS x y = ((g : ℂ) * z + c2 * η) / conj (P2 s t r) := by
  intro s t r z c0 c1 c2
  obtain ⟨I0, I1, I2, Ig⟩ := side_identities hx hy
  have hu : uS x * conj (uS x) = 1 := by
    rw [Complex.mul_conj]; simp [uS, hx]
  have hv : uS y * conj (uS y) = 1 := by
    rw [Complex.mul_conj]; simp [uS, hy]
  have hh : hS x y * conj (hS x y) = (g : ℂ) := by rw [Complex.mul_conj, Ig, hg]
  exact side_formulas_core hu hv hh hg0 I0 I1 I2 hzz hzs hP0 hP1 hP2

/-- The products `ū, v̄` of `side_formulas`, linear in `z` (`FLATNESS.md` (4.3), (4.4)). -/
theorem side_moments {x y : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) {g η χ : ℝ}
    (hg : gS (sS x) (sS y) (rS x y) = g) (hg0 : 0 < g)
    (hzz : (TS x y / g) * conj (TS x y / g) = η) (hzs : (g : ℂ) * (TS x y / g + conj (TS x y / g)) = χ)
    (hP0 : P0 (sS x) (sS y) (rS x y) ≠ 0) (hP1 : P1 (sS x) (sS y) (rS x y) ≠ 0)
    (hP2 : P2 (sS x) (sS y) (rS x y) ≠ 0) :
    let s := sS x; let t := sS y; let r := rS x y; let z := TS x y / g
    let c0 : ℂ := cR r; let c1 : ℂ := cR t; let c2 : ℂ := cR s
    conj (uS x) = ((g : ℂ) ^ 2 + c1 * χ + c0 * c1 * η + z * (g * (c0 - c1))) / (P0 s t r * conj (P1 s t r)) ∧
    conj (uS y) = ((g : ℂ) ^ 2 + c2 * χ + c0 * c2 * η + z * (g * (c0 - c2))) / (P0 s t r * conj (P2 s t r)) ∧
    conj (piS x y) = ((χ : ℂ) + c0 * η - g * z) / P0 s t r ∧
    conj (uS x) * piS x y = ((g : ℂ) * z + c1 * η) / conj (P1 s t r) ∧
    conj (uS y) * piS x y = ((g : ℂ) * z + c2 * η) / conj (P2 s t r) := by
  intro s t r z c0 c1 c2
  obtain ⟨f1, f2, f3, f4, f5⟩ := side_formulas hx hy hg hg0 hzz hzs hP0 hP1 hP2
  refine ⟨?_, ?_, f3, f4, f5⟩
  · rw [f1]; congr 1; linear_combination (c0 * c1) * hzz + c1 * hzs
  · rw [f2]; congr 1; linear_combination (c0 * c2) * hzz + c2 * hzs

end NoFourMUBs.L1
