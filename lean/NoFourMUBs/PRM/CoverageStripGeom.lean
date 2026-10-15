import NoFourMUBs.PRM.CoverageStripBlock

/-!
# Critical strip classification (I4): the geometric-progression step of the zero-`J` stratum

`CRITICAL_STRIP_CLASSIFICATION.md` §2, after `K = (1 − z)(z + 3)³` is known.  With the rows relabelled so
that `X = Y = z + 3`, `Z = (1 − z)(z + 3)`, and phased so that `s = t = σ = √(z + 3)` (so `r` is
imaginary, as `J = 0`):

* `λ₀ = 1`, because `P₀ = L₀ = z(z + 2)(z + 3)`; and `P₂ = P̄₁`, `L₂ = L₁ = 2z(z + 3) ≠ 0`, so
  `v = ū` (`half_geometric`, from the `λ`-identities `Side.side_identities`, `Side.lam_eq`);
* the coordinate cubics of `x` and `y` then coincide up to conjugation, so `y = x̄ ∘ π` for one of the six
  permutations (`cases_of_esymm`, valid with repeated roots);
* a three-cycle gives `r = ū σ`, so `Z = X`, i.e. `z(z + 3) = 0`; a transposition makes `det` real, so
  `λ₀ = −u v = −1`; only the identity remains.

`strip_geometric` applies this to both halves of the strip (the complementary half has `s, t, r`
negated, i.e. `σ ↦ −σ`) with the same row phases, giving the geometric rows `(1; x; x̄)`.
-/

open Matrix Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage

open Side

/-! ### Symmetric functions -/

/-- `e₂ = e₃ · conj e₁` for three unit numbers. -/
theorem esym2_unit {x : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1) :
    x 0 * x 1 + x 0 * x 2 + x 1 * x 2 = uS x * conj (sS x) := by
  have cx : ∀ j, conj (x j) = (x j)⁻¹ := fun j => conj_eq_inv (hx j)
  have n0 := ne_zero_of_normSq (hx 0)
  have n1 := ne_zero_of_normSq (hx 1)
  have n2 := ne_zero_of_normSq (hx 2)
  simp only [uS, sS, map_add, cx]
  field_simp
  ring

theorem two_cases {a b c d : ℂ} (hs : a + b = c + d) (hp : a * b = c * d) :
    (a = c ∧ b = d) ∨ (a = d ∧ b = c) := by
  have h : (a - c) * (a - d) = 0 := by linear_combination a * hs - hp
  rcases mul_eq_zero.1 h with h | h
  · left; refine ⟨by linear_combination h, by linear_combination hs - h⟩
  · right; refine ⟨by linear_combination h, by linear_combination hs - h⟩

/-- Equal elementary symmetric functions: `y` is `w` up to one of the six permutations (identity,
the transpositions `(1 2)`, `(0 1)`, `(0 2)`, the two three-cycles). -/
theorem cases_of_esymm {y w : Fin 3 → ℂ} (hw : ∀ k, w k ≠ 0)
    (h1 : y 0 + y 1 + y 2 = w 0 + w 1 + w 2)
    (h2 : y 0 * y 1 + y 0 * y 2 + y 1 * y 2 = w 0 * w 1 + w 0 * w 2 + w 1 * w 2)
    (h3 : y 0 * y 1 * y 2 = w 0 * w 1 * w 2) :
    (y 0 = w 0 ∧ y 1 = w 1 ∧ y 2 = w 2) ∨ (y 0 = w 0 ∧ y 1 = w 2 ∧ y 2 = w 1) ∨
      (y 0 = w 1 ∧ y 1 = w 0 ∧ y 2 = w 2) ∨ (y 0 = w 2 ∧ y 1 = w 1 ∧ y 2 = w 0) ∨
      (y 0 = w 1 ∧ y 1 = w 2 ∧ y 2 = w 0) ∨ (y 0 = w 2 ∧ y 1 = w 0 ∧ y 2 = w 1) := by
  have r0 : (y 0 - w 0) * (y 0 - w 1) * (y 0 - w 2) = 0 := by
    linear_combination (y 0 ^ 2) * h1 - y 0 * h2 + h3
  rcases mul_eq_zero.1 r0 with r | r
  · rcases mul_eq_zero.1 r with r | r
    · have e0 : y 0 = w 0 := by linear_combination r
      have hs : y 1 + y 2 = w 1 + w 2 := by linear_combination h1 - e0
      have hp : y 1 * y 2 = w 1 * w 2 := by
        apply mul_left_cancel₀ (hw 0)
        linear_combination h3 - (y 1 * y 2) * e0
      rcases two_cases hs hp with ⟨a, b⟩ | ⟨a, b⟩
      · exact Or.inl ⟨e0, a, b⟩
      · exact Or.inr (Or.inl ⟨e0, a, b⟩)
    · have e0 : y 0 = w 1 := by linear_combination r
      have hs : y 1 + y 2 = w 0 + w 2 := by linear_combination h1 - e0
      have hp : y 1 * y 2 = w 0 * w 2 := by
        apply mul_left_cancel₀ (hw 1)
        linear_combination h3 - (y 1 * y 2) * e0
      rcases two_cases hs hp with ⟨a, b⟩ | ⟨a, b⟩
      · exact Or.inr (Or.inr (Or.inl ⟨e0, a, b⟩))
      · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inl ⟨e0, a, b⟩))))
  · have e0 : y 0 = w 2 := by linear_combination r
    have hs : y 1 + y 2 = w 0 + w 1 := by linear_combination h1 - e0
    have hp : y 1 * y 2 = w 0 * w 1 := by
      apply mul_left_cancel₀ (hw 2)
      linear_combination h3 - (y 1 * y 2) * e0
    rcases two_cases hs hp with ⟨a, b⟩ | ⟨a, b⟩
    · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr ⟨e0, a, b⟩))))
    · exact Or.inr (Or.inr (Or.inr (Or.inl ⟨e0, a, b⟩)))

/-! ### One half -/

/-- **One half of the zero-`J` geometric step.**  A nonsingular unit side `(1; x; y)` with
`s = t = σ` real, `σ² = z + 3`, `r` imaginary, `|r|² = (1 − z)(z + 3)` and signature `3z³ = g z`
(`g = 3z²`) has `y = x̄`, when `z ∉ {0, −2, −3}`. -/
theorem half_geometric {x y : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) (hh : hS x y ≠ 0) {σ z : ℝ}
    (hs : sS x = σ) (ht : sS y = σ) (hm : σ ^ 2 = z + 3) (hr : (rS x y).re = 0)
    (hZ : Complex.normSq (rS x y) = (1 - z) * (z + 3)) (hT : TS x y = ((3 * z ^ 3 : ℝ) : ℂ))
    (hz0 : z ≠ 0) (hz2 : z ≠ -2) (hz3 : z ≠ -3) :
    ∀ j, y j = conj (x j) := by
  obtain ⟨I0, I1, I2, G⟩ := side_identities hx hy
  have hrr : rS x y + conj (rS x y) = 0 := by
    rw [Complex.add_conj, hr]; simp
  have hrn : rS x y * conj (rS x y) = (((1 - z) * (z + 3) : ℝ) : ℂ) := by
    rw [Complex.mul_conj, hZ]
  have hg : gS (sS x) (sS y) (rS x y) = 3 * z ^ 2 := by
    have e : ((gS (sS x) (sS y) (rS x y) : ℝ) : ℂ) = ((3 * z ^ 2 : ℝ) : ℂ) := by
      simp only [gS, Complex.ofReal_sub, Complex.ofReal_add, Complex.ofReal_mul, Complex.ofReal_ofNat,
        cast_normSq', Complex.re_eq_add_conj, map_mul, Complex.conj_conj, hs, ht,
        Complex.conj_ofReal, Complex.ofReal_pow]
      have hσ : ((σ : ℂ)) ^ 2 = ((z + 3 : ℝ) : ℂ) := by rw [← Complex.ofReal_pow, hm]
      push_cast at hσ hrn ⊢
      linear_combination (-6 : ℂ) * hσ - 3 * hrn + (σ : ℂ) ^ 2 * hrr
    exact_mod_cast e
  have gC : hS x y * conj (hS x y) = ((3 * z ^ 2 : ℝ) : ℂ) := by
    rw [Complex.mul_conj, G, hg]
  have hz' : ((z : ℂ)) ≠ 0 := by exact_mod_cast hz0
  have hz2' : (z : ℂ) + 2 ≠ 0 := by
    have : ((z + 2 : ℝ) : ℂ) ≠ 0 := by exact_mod_cast (show z + 2 ≠ 0 from fun h0 => hz2 (by linarith))
    push_cast at this; exact this
  have hz3' : (z : ℂ) + 3 ≠ 0 := by
    have : ((z + 3 : ℝ) : ℂ) ≠ 0 := by exact_mod_cast (show z + 3 ≠ 0 from fun h0 => hz3 (by linarith))
    push_cast at this; exact this
  have gne : ((3 * z ^ 2 : ℝ) : ℂ) ≠ 0 := by
    have : (3 * z ^ 2 : ℝ) ≠ 0 := by positivity
    exact_mod_cast this
  have hTz : conj ((-piS x y * hS x y ^ 2 * conj (uS x) * conj (uS y)) / (hS x y * conj (hS x y))) =
      (z : ℂ) := by
    rw [show -piS x y * hS x y ^ 2 * conj (uS x) * conj (uS y) = TS x y from rfl, hT, gC,
      map_div₀, Complex.conj_ofReal, Complex.conj_ofReal]
    push_cast
    field_simp
  have L0 := lam_eq hh (uS x * uS y) I0
  have L1 := lam_eq hh (uS y) I1
  have L2 := lam_eq hh (uS x) I2
  rw [hTz, gC] at L0 L1 L2
  set u := uS x
  set v := uS y
  set h := hS x y
  set r := rS x y
  have hσ : ((σ : ℂ)) ^ 2 = (z : ℂ) + 3 := by
    have := congrArg (fun a : ℝ => (a : ℂ)) hm; push_cast at this; exact this
  -- `λ₀ = 1`
  have hP0 : conj (P0 (sS x) (sS y) r) = (z : ℂ) * (z + 2) * (z + 3) := by
    simp only [P0, hs, ht, map_add, map_mul, map_pow, Complex.conj_ofReal, Complex.conj_conj,
      Complex.ofReal_sub, Complex.ofReal_ofNat, hZ]
    push_cast
    simp only [map_sub, map_mul, map_add, map_ofNat, map_one, Complex.conj_ofReal]
    linear_combination ((σ : ℂ) ^ 2) * hrr + (z ^ 2 + 2 * z) * hσ
  rw [hP0] at L0
  have hcR0 : ((cR r : ℝ) : ℂ) = 9 - (1 - z) * (z + 3) := by rw [cR, hZ]; push_cast; ring
  rw [hcR0] at L0
  have hu : u * conj u = 1 := by rw [Complex.mul_conj]; simp [u, uS, Complex.normSq_mul, hx]
  have hv : v * conj v = 1 := by rw [Complex.mul_conj]; simp [v, uS, Complex.normSq_mul, hy]
  have hne : (z : ℂ) * (z + 2) * (z + 3) ≠ 0 := by
    exact mul_ne_zero (mul_ne_zero hz' hz2') hz3'
  have hstar : -(u * v) * conj h = h := by
    have e : (-(u * v) * conj h / h - 1) * ((z : ℂ) * (z + 2) * (z + 3)) = 0 := by
      push_cast at L0; linear_combination L0
    have e2 := (mul_eq_zero.1 e).resolve_right hne
    rw [sub_eq_zero, div_eq_one_iff_eq hh] at e2
    exact e2
  -- `v = ū`
  have hcRs : ((cR (sS x) : ℝ) : ℂ) = 6 - z := by
    rw [cR, hs, Complex.normSq_ofReal]; push_cast
    have := hσ; linear_combination (-1 : ℂ) * this
  have hcRt : ((cR (sS y) : ℝ) : ℂ) = 6 - z := by
    rw [cR, ht, Complex.normSq_ofReal]; push_cast
    have := hσ; linear_combination (-1 : ℂ) * this
  rw [hcRt] at L1
  rw [hcRs] at L2
  have hP2 : conj (P2 (sS x) (sS y) r) = P1 (sS x) (sS y) r := by
    simp only [P1, P2, hs, ht, map_add, map_mul, map_pow, Complex.conj_ofReal, Complex.conj_conj]
  rw [hP2] at L2
  have hn0 : u ≠ 0 := fun h0 => by rw [h0, zero_mul] at hu; exact zero_ne_one hu
  have hv0 : v ≠ 0 := fun h0 => by rw [h0, zero_mul] at hv; exact zero_ne_one hv
  have hl1 : -v * conj h / h = conj u := by
    rw [div_eq_iff hh]
    linear_combination (conj u) * hstar + (v * conj h) * hu
  have hl2 : -u * conj h / h = conj v := by
    rw [div_eq_iff hh]
    linear_combination (conj v) * hstar + (u * conj h) * hv
  rw [hl1] at L1
  rw [hl2] at L2
  set c1 : ℂ := ((3 * z ^ 2 : ℝ) : ℂ) + (6 - z) * z
  have hc1 : c1 ≠ 0 := by
    have : c1 = 2 * z * (z + 3) := by simp only [c1]; push_cast; ring
    rw [this]
    exact mul_ne_zero (mul_ne_zero two_ne_zero hz') hz3'
  have hc1r : conj c1 = c1 := by simp only [c1, map_add, map_mul, map_sub, Complex.conj_ofReal, map_ofNat]
  -- `conj P₁ = u c₁`, `P₁ = v c₁`
  have e1 : conj (P1 (sS x) (sS y) r) = u * c1 := by
    linear_combination u * L1 - conj (P1 (sS x) (sS y) r) * hu
  have e2 : P1 (sS x) (sS y) r = v * c1 := by
    linear_combination v * L2 - P1 (sS x) (sS y) r * hv
  have hvu : v = conj u := by
    have := congrArg conj e1
    rw [Complex.conj_conj, map_mul, hc1r, e2] at this
    exact mul_right_cancel₀ hc1 this
  -- the two coordinate cubics
  have hw : ∀ k, conj (x k) ≠ 0 := fun k => (map_ne_zero _).2 (ne_zero_of_normSq (hx k))
  have ex2 := esym2_unit hx
  have ey2 := esym2_unit hy
  rw [hs] at ex2
  rw [ht] at ey2
  have h1 : y 0 + y 1 + y 2 = conj (x 0) + conj (x 1) + conj (x 2) := by
    have e := congrArg conj hs
    simp only [sS, map_add, Complex.conj_ofReal] at e
    rw [e]; exact ht
  have h2 : y 0 * y 1 + y 0 * y 2 + y 1 * y 2 =
      conj (x 0) * conj (x 1) + conj (x 0) * conj (x 2) + conj (x 1) * conj (x 2) := by
    have e := congrArg conj ex2
    simp only [map_add, map_mul, Complex.conj_ofReal] at e
    rw [e, ey2, Complex.conj_ofReal]
    change v * (σ : ℂ) = conj u * σ
    rw [hvu]
  have h3 : y 0 * y 1 * y 2 = conj (x 0) * conj (x 1) * conj (x 2) := by
    change v = _
    rw [hvu]; simp only [u, uS, map_mul]
  have huu : u * conj u = 1 := hu
  -- a transposition makes the determinant real
  have hreal : conj h = h → False := by
    intro hc
    rw [hc, hvu] at hstar
    have : (u * conj u + 1) * h = 0 := by linear_combination -hstar
    rw [huu] at this
    have := (mul_eq_zero.1 this).resolve_right hh
    norm_num at this
  -- a three-cycle gives `Z = X`
  have hcyc : r = conj u * σ → False := by
    intro hr3
    have e : Complex.normSq r = σ ^ 2 := by
      rw [hr3, Complex.normSq_mul, Complex.normSq_conj, Complex.normSq_ofReal]
      have : Complex.normSq u = 1 := by
        have := hu; rw [Complex.mul_conj] at this; exact_mod_cast this
      rw [this]; ring
    rw [hZ, hm] at e
    have : z * (z + 3) = 0 := by linarith
    rcases mul_eq_zero.1 this with h0 | h0
    · exact hz0 h0
    · exact hz3 (by linarith)
  have conjx2 : conj u * σ = conj (x 0) * conj (x 1) + conj (x 0) * conj (x 2) +
      conj (x 1) * conj (x 2) := by
    have e := congrArg conj ex2
    simp only [map_add, map_mul, Complex.conj_ofReal] at e
    rw [e]
  rcases cases_of_esymm hw h1 h2 h3 with ⟨a, b, c⟩ | ⟨a, b, c⟩ | ⟨a, b, c⟩ | ⟨a, b, c⟩ | ⟨a, b, c⟩ |
      ⟨a, b, c⟩
  · intro j; fin_cases j
    · exact a
    · exact b
    · exact c
  · exfalso; apply hreal
    simp only [h, hS, a, b, c, map_sub, map_add, map_mul, Complex.conj_conj]; ring
  · exfalso; apply hreal
    simp only [h, hS, a, b, c, map_sub, map_add, map_mul, Complex.conj_conj]; ring
  · exfalso; apply hreal
    simp only [h, hS, a, b, c, map_sub, map_add, map_mul, Complex.conj_conj]; ring
  · exfalso; apply hcyc
    rw [conjx2]; simp only [r, rS, a, b, c]; ring
  · exfalso; apply hcyc
    rw [conjx2]; simp only [r, rS, a, b, c]; ring

/-! ### The whole strip -/

/-- Three rows restricted to the column triple `tri l`. -/
def stripBlock (R : Fin 3 → I6 → ℂ) (l : Fin 20) : Mat3 := Matrix.of fun i j => R i (e6.symm (tri l j))

theorem sS_smul (α : ℂ) (x : Fin 3 → ℂ) : sS (fun i => α * x i) = α * sS x := by
  simp only [sS]; ring

theorem rS_smul (α β : ℂ) (x y : Fin 3 → ℂ) :
    rS (fun i => α * x i) (fun i => β * y i) = β * conj α * rS x y := by
  simp only [rS, map_mul]; ring

theorem hS_smul (α β : ℂ) (x y : Fin 3 → ℂ) :
    hS (fun i => α * x i) (fun i => β * y i) = α * β * hS x y := by
  simp only [hS]; ring

theorem TS_smul {α β : ℂ} (hα : α * conj α = 1) (hβ : β * conj β = 1) (x y : Fin 3 → ℂ) :
    TS (fun i => α * x i) (fun i => β * y i) = TS x y := by
  have e : TS (fun i => α * x i) (fun i => β * y i) = TS x y * ((α * conj α) ^ 3 * (β * conj β) ^ 3) := by
    simp only [TS, piS, hS, uS, map_mul]; ring
  rw [e, hα, hβ]; ring

theorem stripBlock_dephase (R : Fin 3 → I6 → ℂ) (l : Fin 20) (a : Fin 3) (i : Fin 3) :
    dephase (stripBlock R l) a i = R a (e6.symm (tri l i)) * conj (R 0 (e6.symm (tri l i))) := by
  simp [dephase, stripBlock]

theorem tri_cover : ∀ (l : Fin 20) (u : Fin 6), (∃ i, tri l i = u) ∨ (∃ i, tri (19 - l) i = u) := by
  decide

/-- The data of a half used by `half_geometric`, from the block. -/
theorem half_data {B : Mat3} (hB : ∀ i j, Complex.normSq (B i j) = 1) (hd : B.det ≠ 0)
    (hIm : (Step2.sideSignature B).im = 0) {z : ℝ} (hg : blockG B = 3 * z ^ 2)
    (hth : blockTheta B = z) {α β : ℂ} (hα : α * conj α = 1) (hβ : β * conj β = 1) :
    hS (fun i => α * dephase B 1 i) (fun i => β * dephase B 2 i) ≠ 0 ∧
      TS (fun i => α * dephase B 1 i) (fun i => β * dephase B 2 i) = ((3 * z ^ 3 : ℝ) : ℂ) ∧
      (∀ j, Complex.normSq (α * dephase B 1 j) = 1) ∧ (∀ j, Complex.normSq (β * dephase B 2 j) = 1) := by
  have hαn : Complex.normSq α = 1 := by
    have := hα; rw [Complex.mul_conj] at this; exact_mod_cast this
  have hβn : Complex.normSq β = 1 := by
    have := hβ; rw [Complex.mul_conj] at this; exact_mod_cast this
  have hα0 : α ≠ 0 := fun h0 => by rw [h0, zero_mul] at hα; exact zero_ne_one hα
  have hβ0 : β ≠ 0 := fun h0 => by rw [h0, zero_mul] at hβ; exact zero_ne_one hβ
  refine ⟨?_, ?_, fun j => ?_, fun j => ?_⟩
  · rw [hS_smul]; exact mul_ne_zero (mul_ne_zero hα0 hβ0) (dephase_hS_ne hB hd)
  · rw [TS_smul hα hβ, ← Step2.sig_rows _ (dephase_row0 hB), dephase_sig hB]
    obtain ⟨-, -, hre⟩ := critical_data hB hd hIm
    apply Complex.ext
    · rw [hre, hg, hth, Complex.ofReal_re]; ring
    · rw [hIm, Complex.ofReal_im]
  · rw [Complex.normSq_mul, hαn, dephase_unit hB, one_mul]
  · rw [Complex.normSq_mul, hβn, dephase_unit hB, one_mul]

/-- **The geometric-progression step** (`CRITICAL_STRIP_CLASSIFICATION.md` §2): rows `R 0, R 1, R 2`
whose halves `tri l`, `tri (19 − l)` are nonsingular with real signature, with `X = Y = z + 3`,
`Z = (1 − z)(z + 3)`, `J = 0` and `z ∉ {0, −2, −3}` (the second half having opposite `s, t, r`) can be
phased into `(1; x; x̄)`. -/
theorem strip_geometric {R : Fin 3 → I6 → ℂ} (hR : ∀ i j, Complex.normSq (R i j) = 1) (l : Fin 20)
    {z : ℝ} (hz0 : z ≠ 0) (hz2 : z ≠ -2) (hz3 : -3 < z)
    (hX : blockX (stripBlock R l) = z + 3) (hY : blockY (stripBlock R l) = z + 3)
    (hZ : blockZ (stripBlock R l) = (1 - z) * (z + 3)) (hJ : blockJ (stripBlock R l) = 0)
    (hs' : blockS (stripBlock R (19 - l)) = -blockS (stripBlock R l))
    (ht' : blockT (stripBlock R (19 - l)) = -blockT (stripBlock R l))
    (hr' : blockR (stripBlock R (19 - l)) = -blockR (stripBlock R l))
    (hd : (stripBlock R l).det ≠ 0) (hd' : (stripBlock R (19 - l)).det ≠ 0)
    (hIm : (Step2.sideSignature (stripBlock R l)).im = 0)
    (hIm' : (Step2.sideSignature (stripBlock R (19 - l))).im = 0)
    (hth : blockTheta (stripBlock R l) = z) (hth' : blockTheta (stripBlock R (19 - l)) = z) :
    ∃ (a : Fin 3 → ℂ) (c x : I6 → ℂ), (∀ i, Complex.normSq (a i) = 1) ∧
      (∀ j, Complex.normSq (c j) = 1) ∧
      ∀ j, a 0 * R 0 j * c j = 1 ∧ a 1 * R 1 j * c j = x j ∧ a 2 * R 2 j * c j = conj (x j) := by
  set E := stripBlock R l with hEdef
  set E' := stripBlock R (19 - l) with hE'def
  have hEu : ∀ i j, Complex.normSq (E i j) = 1 := fun i j => hR _ _
  have hEu' : ∀ i j, Complex.normSq (E' i j) = 1 := fun i j => hR _ _
  have hz3' : z ≠ -3 := by intro h0; linarith
  have hm0 : 0 < z + 3 := by linarith
  set σ := Real.sqrt (z + 3) with hσdef
  have hσ2 : σ ^ 2 = z + 3 := Real.sq_sqrt hm0.le
  have hσ0 : 0 < σ := Real.sqrt_pos.2 hm0
  set s := blockS E with hsdef
  set t := blockT E with htdef
  set r := blockR E with hrdef
  have hsn : Complex.normSq s = σ ^ 2 := by rw [hσ2]; exact hX
  have htn : Complex.normSq t = σ ^ 2 := by rw [hσ2]; exact hY
  have hs0 : s ≠ 0 := fun h0 => by
    rw [h0, Complex.normSq_zero] at hsn; nlinarith
  have ht0 : t ≠ 0 := fun h0 => by
    rw [h0, Complex.normSq_zero] at htn; nlinarith
  have hsC : s * conj s = (σ : ℂ) ^ 2 := by rw [Complex.mul_conj, hsn]; push_cast; ring
  have htC : t * conj t = (σ : ℂ) ^ 2 := by rw [Complex.mul_conj, htn]; push_cast; ring
  set α : ℂ := (σ : ℂ) / s with hαdef
  set β : ℂ := (σ : ℂ) / t with hβdef
  have hσC : (σ : ℂ) ≠ 0 := by exact_mod_cast hσ0.ne'
  have hcs : conj s ≠ 0 := (map_ne_zero _).2 hs0
  have hct : conj t ≠ 0 := (map_ne_zero _).2 ht0
  have hα : α * conj α = 1 := by
    simp only [α, map_div₀, Complex.conj_ofReal]
    field_simp
    linear_combination -hsC
  have hβ : β * conj β = 1 := by
    simp only [β, map_div₀, Complex.conj_ofReal]
    field_simp
    linear_combination -htC
  -- `g = 3z²` on both halves
  have hp : blockP E = 9 - z ^ 2 := by rw [blockP_eq, hX, hY, hZ]; ring
  have hg : blockG E = 3 * z ^ 2 := by rw [blockG_eq, hp, hJ]; ring
  have hpE' : blockP E' = blockP E := by
    rw [blockP_eq, blockP_eq]
    change Complex.normSq (blockS E') + Complex.normSq (blockT E') + Complex.normSq (blockR E') =
      Complex.normSq s + Complex.normSq t + Complex.normSq r
    rw [hs', ht', hr']; simp only [Complex.normSq_neg]
  have hJE' : blockJ E' = 0 := by
    rw [blockJ, hs', ht', hr', jS_neg]; change -blockJ E = 0; rw [hJ, neg_zero]
  have hg' : blockG E' = 3 * z ^ 2 := by rw [blockG_eq, hpE', hp, hJE']; ring
  obtain ⟨hh1, hT1, hx1, hy1⟩ := half_data hEu hd hIm hg hth hα hβ
  obtain ⟨hh2, hT2, hx2, hy2⟩ := half_data hEu' hd' hIm' hg' hth' hα hβ
  have hαn : Complex.normSq α = 1 := by
    have := hα; rw [Complex.mul_conj] at this; exact_mod_cast this
  have hβn : Complex.normSq β = 1 := by
    have := hβ; rw [Complex.mul_conj] at this; exact_mod_cast this
  -- `r` after phasing is imaginary: `β ᾱ r = conj w / σ²`
  have e1 : conj s = (σ : ℂ) ^ 2 / s := by rw [eq_div_iff hs0]; linear_combination hsC
  have e2 : conj t = (σ : ℂ) ^ 2 / t := by rw [eq_div_iff ht0]; linear_combination htC
  have hw : β * conj α * r = conj (conj s * conj r * t) / ((σ ^ 2 : ℝ) : ℂ) := by
    simp only [α, β, map_div₀, map_mul, map_pow, Complex.conj_ofReal, Complex.conj_conj, e1, e2]
    push_cast
    field_simp
  have hre : (β * conj α * r).re = 0 := by
    rw [hw, Complex.div_ofReal_re, Complex.conj_re]
    have : (conj s * conj r * t).re = 0 := by
      have := blockJ_eq E; rw [hJ] at this; change 0 = 2 * (conj s * conj r * t).re at this; linarith
    rw [this, zero_div]
  have hnr : Complex.normSq (β * conj α * r) = (1 - z) * (z + 3) := by
    rw [Complex.normSq_mul, Complex.normSq_mul, Complex.normSq_conj, hαn, hβn, one_mul, one_mul]
    exact hZ
  have H1 := half_geometric hx1 hy1 hh1 (σ := σ) (z := z)
    (by rw [sS_smul, dephase_sS1, hαdef, div_mul_cancel₀ _ hs0])
    (by rw [sS_smul, dephase_sS2, hβdef, div_mul_cancel₀ _ ht0]) hσ2
    (by rw [rS_smul, dephase_rS hEu]; exact hre) (by rw [rS_smul, dephase_rS hEu]; exact hnr)
    hT1 hz0 hz2 hz3'
  have H2 := half_geometric hx2 hy2 hh2 (σ := -σ) (z := z)
    (by rw [sS_smul, dephase_sS1, hs', hαdef, mul_neg, div_mul_cancel₀ _ hs0]; push_cast; ring)
    (by rw [sS_smul, dephase_sS2, ht', hβdef, mul_neg, div_mul_cancel₀ _ ht0]; push_cast; ring)
    (by rw [neg_sq]; exact hσ2)
    (by rw [rS_smul, dephase_rS hEu', hr', mul_neg, Complex.neg_re, hre, neg_zero])
    (by rw [rS_smul, dephase_rS hEu', hr', mul_neg, Complex.normSq_neg, hnr])
    hT2 hz0 hz2 hz3'
  set x' : I6 → ℂ := fun j => α * (R 1 j * conj (R 0 j)) with hx'def
  have key : ∀ j, β * (R 2 j * conj (R 0 j)) = conj (x' j) := by
    intro j
    rcases tri_cover l (e6 j) with ⟨i, hi⟩ | ⟨i, hi⟩
    · have hj : e6.symm (tri l i) = j := by rw [hi, Equiv.symm_apply_apply]
      have h := H1 i
      simp only [hEdef, stripBlock_dephase] at h
      rw [hj] at h; exact h
    · have hj : e6.symm (tri (19 - l) i) = j := by rw [hi, Equiv.symm_apply_apply]
      have h := H2 i
      simp only [hE'def, stripBlock_dephase] at h
      rw [hj] at h; exact h
  refine ⟨![1, α, β], fun j => conj (R 0 j), x', ?_, ?_, ?_⟩
  · intro i; fin_cases i
    · simp
    · simpa using hαn
    · simpa using hβn
  · intro j; rw [Complex.normSq_conj]; exact hR 0 j
  · intro j
    have u0 : R 0 j * conj (R 0 j) = 1 := by rw [Complex.mul_conj, hR]; simp
    refine ⟨?_, ?_, ?_⟩
    · simp only [Matrix.cons_val_zero, one_mul]; exact u0
    · simp only [Matrix.cons_val_one, Matrix.cons_val_zero, x']; ring
    · simp only [Matrix.cons_val_two, Matrix.tail_cons, Matrix.head_cons]
      rw [← key j]; ring

end NoFourMUBs.PRM.Coverage
