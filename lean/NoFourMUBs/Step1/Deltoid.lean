import Mathlib

/-!
# Step 1, item 5: the filled deltoid

`D` is the set of traces `a + b + c` of unit triples with `abc = 1`.  With
`Δ(Z) = |Z|⁴ + 18|Z|² − 8 Re Z³ − 27`:

* `delta_trace`: `Δ(a + b + c) = −|(a − b)(b − c)(c − a)|²` on unit triples, so `Δ ≤ 0` on `D`, with equality iff a
  root repeats;
* `boundary_form`: a trace with `Δ = 0` is `2z + z̄²` with `|z| = 1`;
* `inD_of_delta_neg`: `Δ(Z) < 0 ⇒ Z ∈ D`.  The roots of `t³ − Zt² + Z̄t − 1` are closed under `t ↦ 1/t̄`; a
  non-unimodular root would make the Vandermonde product real and nonzero, hence `Δ > 0`;
* `inD_mem_nhds`: `D` is a neighbourhood of every `Z` with `Δ(Z) < 0`.
-/

open Filter Topology

namespace NoFourMUBs.Step1Geo

noncomputable def Delta (Z : ℂ) : ℝ :=
  Complex.normSq Z ^ 2 + 18 * Complex.normSq Z - 8 * (Z ^ 3).re - 27

/-- `Z` is the trace of a unit triple with product one. -/
def InD (Z : ℂ) : Prop :=
  ∃ a b c : ℂ, Complex.normSq a = 1 ∧ Complex.normSq b = 1 ∧ Complex.normSq c = 1 ∧ a * b * c = 1 ∧ a + b + c = Z

lemma continuous_Delta : Continuous Delta := by
  unfold Delta; fun_prop

lemma star_eq_of_unit {a b c : ℂ} (ha : Complex.normSq a = 1) (habc : a * b * c = 1) : star a = b * c := by
  have h1 : star a * a = 1 := by
    rw [Complex.star_def, ← Complex.normSq_eq_conj_mul_self, ha]; norm_num
  calc star a = star a * (a * b * c) := by rw [habc, mul_one]
    _ = (star a * a) * (b * c) := by ring
    _ = b * c := by rw [h1, one_mul]

/-- The complex form of `Δ` in terms of `Z` and `W = Z̄`. -/
lemma delta_cast (Z : ℂ) :
    (Delta Z : ℂ) = Z ^ 2 * star Z ^ 2 + 18 * (Z * star Z) - 4 * (Z ^ 3 + star Z ^ 3) - 27 := by
  have h1 : (Complex.normSq Z : ℂ) = Z * star Z := by
    rw [Complex.normSq_eq_conj_mul_self, Complex.star_def, mul_comm]
  have h2 : ((Z ^ 3).re : ℂ) = (Z ^ 3 + star Z ^ 3) / 2 := by
    rw [Complex.re_eq_add_conj, Complex.star_def, map_pow]
  unfold Delta
  push_cast
  rw [h1, h2]; ring

/-- `Δ(Z) = V²` whenever `Z = a + b + c`, `Z̄ = ab + bc + ca` and `abc = 1`. -/
lemma delta_eq_vandermonde_sq {a b c Z : ℂ} (habc : a * b * c = 1) (hZ : a + b + c = Z)
    (hW : a * b + b * c + c * a = star Z) : (Delta Z : ℂ) = ((a - b) * (b - c) * (c - a)) ^ 2 := by
  rw [delta_cast, ← hW, ← hZ]
  linear_combination (4*a^3 - 6*a^2*b - 6*a^2*c - 6*a*b^2 - 3*a*b*c - 6*a*c^2 + 4*b^3 - 6*b^2*c - 6*b*c^2
    + 4*c^3 + 27) * habc

/-- **`Δ` on traces**: `Δ(a + b + c) = −|(a − b)(b − c)(c − a)|²`. -/
theorem delta_trace {a b c : ℂ} (ha : Complex.normSq a = 1) (hb : Complex.normSq b = 1)
    (hc : Complex.normSq c = 1) (habc : a * b * c = 1) :
    Delta (a + b + c) = -Complex.normSq ((a - b) * (b - c) * (c - a)) := by
  have sa := star_eq_of_unit ha habc
  have sb := star_eq_of_unit hb (show b * c * a = 1 by rw [← habc]; ring)
  have sc := star_eq_of_unit hc (show c * a * b = 1 by rw [← habc]; ring)
  have hW : a * b + b * c + c * a = star (a + b + c) := by
    rw [star_add, star_add, sa, sb, sc]; ring
  have hV : star ((a - b) * (b - c) * (c - a)) = -((a - b) * (b - c) * (c - a)) := by
    rw [star_mul, star_mul, star_sub, star_sub, star_sub, sa, sb, sc]
    linear_combination (-((a - b) * (b - c) * (c - a))) * habc
  have h := delta_eq_vandermonde_sq habc rfl hW
  have hn : (Complex.normSq ((a - b) * (b - c) * (c - a)) : ℂ) = -((a - b) * (b - c) * (c - a)) ^ 2 := by
    rw [Complex.normSq_eq_conj_mul_self, ← Complex.star_def, hV]; ring
  have : (Delta (a + b + c) : ℂ) = ((-Complex.normSq ((a - b) * (b - c) * (c - a)) : ℝ) : ℂ) := by
    rw [h]; push_cast; rw [hn]; ring
  exact_mod_cast this

theorem delta_nonpos {Z : ℂ} (h : InD Z) : Delta Z ≤ 0 := by
  obtain ⟨a, b, c, ha, hb, hc, habc, rfl⟩ := h
  rw [delta_trace ha hb hc habc]; linarith [Complex.normSq_nonneg ((a - b) * (b - c) * (c - a))]

/-- **Boundary form.** A trace with `Δ = 0` is `2z + z̄²` for a unit `z`. -/
theorem boundary_form {Z : ℂ} (h : InD Z) (h0 : Delta Z = 0) :
    ∃ z : ℂ, Complex.normSq z = 1 ∧ Z = 2 * z + star z ^ 2 := by
  obtain ⟨a, b, c, ha, hb, hc, habc, rfl⟩ := h
  rw [delta_trace ha hb hc habc, neg_eq_zero, Complex.normSq_eq_zero] at h0
  rcases mul_eq_zero.mp h0 with h1 | h1
  · rcases mul_eq_zero.mp h1 with h2 | h2
    · have hab : a = b := sub_eq_zero.mp h2
      subst hab
      refine ⟨a, ha, ?_⟩
      have sa := star_eq_of_unit ha habc
      have : star a ^ 2 = c := by rw [sa]; linear_combination c * habc
      rw [this]; ring
    · have hbc : b = c := sub_eq_zero.mp h2
      subst hbc
      refine ⟨b, hb, ?_⟩
      have sb := star_eq_of_unit hb (show b * b * a = 1 by rw [← habc]; ring)
      have : star b ^ 2 = a := by rw [sb]; linear_combination a * habc
      rw [this]; ring
  · have hca : c = a := sub_eq_zero.mp h1
    subst hca
    refine ⟨c, hc, ?_⟩
    have sc := star_eq_of_unit hc (show c * c * b = 1 by rw [← habc]; ring)
    have : star c ^ 2 = b := by rw [sc]; linear_combination b * habc
    rw [this]; ring

/-- Every monic cubic `t³ − Zt² + Wt − 1` has roots `a, b, c` (Vieta). -/
lemma exists_cubic_roots (Z W : ℂ) :
    ∃ a b c : ℂ, a * b * c = 1 ∧ a + b + c = Z ∧ a * b + b * c + c * a = W := by
  set f : Polynomial ℂ := Polynomial.C 1 * Polynomial.X ^ 3 + Polynomial.C (-Z) * Polynomial.X ^ 2 +
    Polynomial.C W * Polynomial.X + Polynomial.C (-1)
  have hdeg : f.degree = 3 := Polynomial.degree_cubic one_ne_zero
  obtain ⟨a, ha⟩ := Complex.exists_root (f := f) (by rw [hdeg]; norm_num)
  have hfa : a ^ 3 - Z * a ^ 2 + W * a - 1 = 0 := by
    have := ha; simp [f, Polynomial.IsRoot] at this; linear_combination this
  set S := Z - a
  set P := a ^ 2 - Z * a + W
  obtain ⟨s, hs⟩ := IsAlgClosed.exists_pow_nat_eq (S ^ 2 - 4 * P) (by norm_num : 0 < 2)
  refine ⟨a, (S + s) / 2, (S - s) / 2, ?_, ?_, ?_⟩
  · linear_combination (-(a / 4)) * hs + hfa
  · ring
  · linear_combination (-(1 / 4 : ℂ)) * hs

/-- If `b = 1/ā` with `|a| ≠ 1`, then `Δ > 0`: the Vandermonde product is real and nonzero. -/
lemma partner_delta_pos {a b c Z : ℂ} (habc : a * b * c = 1) (hZ : a + b + c = Z)
    (hW : a * b + b * c + c * a = star Z) (hb : b = (star a)⁻¹) (ha1 : Complex.normSq a ≠ 1) : 0 < Delta Z := by
  have ha0 : a ≠ 0 := by rintro rfl; simp at habc
  have hs0 : star a ≠ 0 := star_ne_zero.mpr ha0
  have hc : c = star a / a := by
    have h' : c = (a * b * c) * (star a / a) := by rw [hb]; field_simp
    rw [habc, one_mul] at h'; exact h'
  set V := (a - b) * (b - c) * (c - a)
  have hV : star V = V := by
    simp only [V, hb, hc, star_mul, star_sub, star_inv₀, star_div₀, star_star]
    field_simp
  have hpos : 0 < Complex.normSq a := Complex.normSq_pos.mpr ha0
  have nb : Complex.normSq b = (Complex.normSq a)⁻¹ := by
    rw [hb, Complex.normSq_inv, Complex.star_def, Complex.normSq_conj]
  have nc : Complex.normSq c = 1 := by
    rw [hc, Complex.normSq_div, Complex.star_def, Complex.normSq_conj, div_self hpos.ne']
  have hne : V ≠ 0 := by
    have hab : a - b ≠ 0 := by
      intro h; apply ha1
      have e : Complex.normSq a = (Complex.normSq a)⁻¹ := by rw [← nb, sub_eq_zero.mp h]
      field_simp at e
      nlinarith
    have hbc : b - c ≠ 0 := by
      intro h; apply ha1
      have e : (Complex.normSq a)⁻¹ = 1 := by rw [← nb, ← nc, sub_eq_zero.mp h]
      exact inv_eq_one.mp e
    have hca : c - a ≠ 0 := by
      intro h; apply ha1
      rw [← nc, sub_eq_zero.mp h]
    exact mul_ne_zero (mul_ne_zero hab hbc) hca
  have hD := delta_eq_vandermonde_sq habc hZ hW
  have hnV : (Complex.normSq V : ℂ) = V ^ 2 := by
    rw [Complex.normSq_eq_conj_mul_self, ← Complex.star_def, hV]; ring
  have : Delta Z = Complex.normSq V := by exact_mod_cast hD.trans hnV.symm
  rw [this]; exact Complex.normSq_pos.mpr hne

/-- **`Δ < 0` implies `Z ∈ D`.** -/
theorem inD_of_delta_neg {Z : ℂ} (hneg : Delta Z < 0) : InD Z := by
  obtain ⟨a, b, c, habc, hZ, hW⟩ := exists_cubic_roots Z (star Z)
  have hfac : ∀ t : ℂ, t ^ 3 - Z * t ^ 2 + star Z * t - 1 = (t - a) * (t - b) * (t - c) := fun t => by
    rw [← hW, ← hZ]; linear_combination habc
  -- the reciprocal conjugate of a root is a root
  have hpartner : ∀ x, (x - a) * (x - b) * (x - c) = 0 → x ≠ 0 →
      ((star x)⁻¹ - a) * ((star x)⁻¹ - b) * ((star x)⁻¹ - c) = 0 := by
    intro x hx hx0
    rw [← hfac] at hx ⊢
    have hs : star x ≠ 0 := star_ne_zero.mpr hx0
    have h2 := congrArg star hx
    simp only [star_sub, star_add, star_mul, star_pow, star_star, star_one, star_zero] at h2
    field_simp
    linear_combination (-1 : ℂ) * h2
  have ha0 : a ≠ 0 := by rintro rfl; simp at habc
  have hb0 : b ≠ 0 := by rintro rfl; simp at habc
  have hc0 : c ≠ 0 := by rintro rfl; simp at habc
  have unit : ∀ x, (x = a ∨ x = b ∨ x = c) → Complex.normSq x = 1 := by
    intro x hx
    by_contra hx1
    have hx0 : x ≠ 0 := by rcases hx with rfl | rfl | rfl <;> assumption
    have hroot : (x - a) * (x - b) * (x - c) = 0 := by rcases hx with rfl | rfl | rfl <;> ring
    have hy := hpartner x hroot hx0
    have hyx : (star x)⁻¹ ≠ x := by
      intro h; apply hx1
      have : x * star x = 1 := by
        conv_lhs => arg 1; rw [← h]
        exact inv_mul_cancel₀ (star_ne_zero.mpr hx0)
      have hn : (Complex.normSq x : ℂ) = x * star x := by
        rw [Complex.normSq_eq_conj_mul_self, Complex.star_def, mul_comm]
      exact_mod_cast hn.trans this
    have key : ∀ p q r : ℂ, p * q * r = 1 → p + q + r = Z → p * q + q * r + r * p = star Z →
        q = (star p)⁻¹ → Complex.normSq p ≠ 1 → False := fun p q r h1 h2 h3 h4 h5 =>
      absurd hneg (not_lt.mpr (partner_delta_pos h1 h2 h3 h4 h5).le)
    rcases mul_eq_zero.mp hy with hy | hy
    · rcases mul_eq_zero.mp hy with hy | hy
      · -- partner is a
        have hya := sub_eq_zero.mp hy
        rcases hx with rfl | rfl | rfl
        · exact hyx hya
        · exact key x a c (by linear_combination habc) (by linear_combination hZ) (by linear_combination hW)
            hya.symm hx1
        · exact key x a b (by linear_combination habc) (by linear_combination hZ) (by linear_combination hW)
            hya.symm hx1
      · have hyb := sub_eq_zero.mp hy
        rcases hx with rfl | rfl | rfl
        · exact key x b c habc hZ hW hyb.symm hx1
        · exact hyx hyb
        · exact key x b a (by linear_combination habc) (by linear_combination hZ) (by linear_combination hW)
            hyb.symm hx1
    · have hyc := sub_eq_zero.mp hy
      rcases hx with rfl | rfl | rfl
      · exact key x c b (by linear_combination habc) (by linear_combination hZ) (by linear_combination hW)
          hyc.symm hx1
      · exact key x c a (by linear_combination habc) (by linear_combination hZ) (by linear_combination hW)
          hyc.symm hx1
      · exact hyx hyc
  exact ⟨a, b, c, unit a (Or.inl rfl), unit b (Or.inr (Or.inl rfl)), unit c (Or.inr (Or.inr rfl)), habc, hZ⟩

/-- `D` is a neighbourhood of every point with `Δ < 0`. -/
theorem inD_mem_nhds {Z : ℂ} (h : Delta Z < 0) : {W | InD W} ∈ 𝓝 Z :=
  Filter.mem_of_superset ((isOpen_lt continuous_Delta continuous_const).mem_nhds h) fun _ hW => inD_of_delta_neg hW

end NoFourMUBs.Step1Geo
