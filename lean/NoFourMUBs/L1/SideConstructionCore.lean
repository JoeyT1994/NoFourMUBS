import NoFourMUBs.Step2.SideAlg
import NoFourMUBs.L1.SideConstructionPoly

/-!
# Side existence: the scalar construction

`proof/coverage/returns/F_side_existence/SIDE_EXISTENCE.md` §§4–7, in independent scalar variables.

* Fourier rows `frow a b c ω = (a + b ωʲ + c ω⁻ʲ)ⱼ` and their sums, products, permanent, determinant and
  the unimodularity criterion (34) (`ASSEMBLY.md` (7), (11)).
* `construct`: from the scalar data `(μ, ν, k, u, e, α, β, γ, n, m, h)` satisfying I, II, III, Y0, Y1 and
  the determinant identity, the rows `x, y` of `S = M · diag(1, w̄, w) · F₃` are unimodular, with
  `Σ x = 3μ`, `Σ y = 3ν`, `Σ yⱼ x̄ⱼ = 3(ν μ̄ + k)`, `Π x = u`, `perm = 6μν − 3γ`, `det² = −27 e`.

The polynomial identities are `linear_combination`s whose cofactors were computed by exact division.
-/

open ComplexConjugate NoFourMUBs.Side

noncomputable section

namespace NoFourMUBs.L1.SideConstructionCore

open NoFourMUBs.L1.SideConstructionPoly

/-! ### The primitive cube root of unity -/

/-- `ω = e^{2πi/3}`. -/
def omega : ℂ := (-1 + Complex.I * (Real.sqrt 3 : ℂ)) / 2

lemma sqrt3_sq : ((Real.sqrt 3 : ℝ) : ℂ) ^ 2 = 3 := by
  rw [← Complex.ofReal_pow, Real.sq_sqrt (by norm_num)]; norm_num

lemma omega_sq : omega ^ 2 + omega + 1 = 0 := by
  unfold omega
  linear_combination ((Real.sqrt 3 : ℂ) ^ 2 / 4) * Complex.I_sq + (-1 / 4 : ℂ) * sqrt3_sq

lemma omega_conj : conj omega = omega ^ 2 := by
  unfold omega
  simp only [map_div₀, map_add, map_neg, map_one, map_mul, Complex.conj_I, Complex.conj_ofReal,
    map_ofNat]
  linear_combination (-(Real.sqrt 3 : ℂ) ^ 2 / 4) * Complex.I_sq + (1 / 4 : ℂ) * sqrt3_sq

/-! ### Fourier rows -/

/-- The row `(a + b ωʲ + c ω⁻ʲ)ⱼ`. -/
def frow (a b c ω : ℂ) : Fin 3 → ℂ := ![a + b + c, a + b * ω + c * ω ^ 2, a + b * ω ^ 2 + c * ω]

lemma frow_sS {a b c ω : ℂ} (hω : ω ^ 2 + ω + 1 = 0) : sS (frow a b c ω) = 3 * a := by
  simp only [sS, frow, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two,
    Matrix.head_cons, Matrix.tail_cons]
  linear_combination (b + c) * hω

lemma frow_rS {a b c a2 b2 c2 ω : ℂ} (hω : ω ^ 2 + ω + 1 = 0) (hωc : conj ω = ω ^ 2) :
    rS (frow a b c ω) (frow a2 b2 c2 ω) = 3 * (a2 * conj a + b2 * conj b + c2 * conj c) := by
  simp only [rS, frow, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two,
    Matrix.head_cons, Matrix.tail_cons, map_add, map_mul, map_pow, hωc]
  linear_combination (conj a * b2 + conj a * c2 + conj b * a2 * ω ^ 2 - conj b * a2 * ω + conj b * a2 +
    conj b * b2 * ω ^ 4 - conj b * b2 * ω ^ 3 + 2 * conj b * b2 * ω - 2 * conj b * b2 + conj b * c2 * ω ^ 3 -
    conj b * c2 * ω + conj b * c2 + conj c * a2 * ω ^ 2 - conj c * a2 * ω + conj c * a2 +
    conj c * b2 * ω ^ 3 - conj c * b2 * ω + conj c * b2 + conj c * c2 * ω ^ 4 - conj c * c2 * ω ^ 3 +
    2 * conj c * c2 * ω - 2 * conj c * c2) * hω

lemma frow_uS {a b c ω : ℂ} (hω : ω ^ 2 + ω + 1 = 0) :
    uS (frow a b c ω) = a ^ 3 + b ^ 3 + c ^ 3 - 3 * a * b * c := by
  simp only [uS, frow, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two,
    Matrix.head_cons, Matrix.tail_cons]
  linear_combination ((a + b + c) * (a * b + a * c + b ^ 2 * ω - b ^ 2 + b * c * ω ^ 2 - b * c * ω + b * c +
    c ^ 2 * ω - c ^ 2)) * hω

lemma frow_piS {a b c a2 b2 c2 ω : ℂ} (hω : ω ^ 2 + ω + 1 = 0) :
    piS (frow a b c ω) (frow a2 b2 c2 ω) = 6 * a * a2 - 3 * (b * c2 + c * b2) := by
  simp only [piS, frow, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two,
    Matrix.head_cons, Matrix.tail_cons]
  linear_combination (2 * a * b2 + 2 * a * c2 + 2 * a2 * b + 2 * a2 * c + 2 * b * b2 * ω + b * c2 * ω ^ 2 -
    b * c2 * ω + 3 * b * c2 + b2 * c * ω ^ 2 - b2 * c * ω + 3 * b2 * c + 2 * c * c2 * ω) * hω

lemma frow_hS {a b c a2 b2 c2 ω : ℂ} (hω : ω ^ 2 + ω + 1 = 0) :
    hS (frow a b c ω) (frow a2 b2 c2 ω) ^ 2 = -27 * (b * c2 - c * b2) ^ 2 := by
  simp only [hS, frow, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two,
    Matrix.head_cons, Matrix.tail_cons]
  linear_combination ((b * c2 - b2 * c) ^ 2 * (ω ^ 6 - ω ^ 5 - 6 * ω ^ 4 + 11 * ω ^ 3 + 4 * ω ^ 2 -
    27 * ω + 27)) * hω

/-- The unimodularity criterion: constant Fourier coefficient one and vanishing first coefficient. -/
lemma frow_unit {a b c ω : ℂ} (hω : ω ^ 2 + ω + 1 = 0) (hωc : conj ω = ω ^ 2)
    (hconst : a * conj a + b * conj b + c * conj c = 1)
    (hV : a * conj c + b * conj a + c * conj b = 0) (j : Fin 3) :
    Complex.normSq (frow a b c ω j) = 1 := by
  have hVb : conj a * c + conj b * a + conj c * b = 0 := by
    have := congrArg conj hV
    simp only [map_add, map_mul, Complex.conj_conj, map_zero] at this
    linear_combination this
  apply Complex.ofReal_injective
  rw [← Complex.mul_conj, Complex.ofReal_one]
  fin_cases j <;>
    simp only [frow, Fin.zero_eta, Fin.mk_one, Fin.reduceFinMk, Matrix.cons_val_zero,
      Matrix.cons_val_one, Matrix.cons_val_two, Matrix.head_cons, Matrix.tail_cons, map_add, map_mul,
      map_pow, hωc]
  · linear_combination hconst + hV + hVb
  · linear_combination hconst + ω ^ 4 * hV + ω ^ 2 * hVb +
      ((ω - 1) * (-(conj a) * b * ω + conj b * b + conj c * b * ω ^ 2 + conj c * c * ω ^ 3 + conj c * c)) * hω
  · linear_combination hconst + ω ^ 2 * hV + ω ^ 4 * hVb +
      ((ω - 1) * (-(conj a) * c * ω + conj b * b * ω ^ 3 + conj b * b + conj b * c * ω ^ 2 + conj c * c)) * hω

/-! ### The construction -/

lemma cancel {x y : ℂ} (hx : x ≠ 0) (h : x * y = 0) : y = 0 := (mul_eq_zero.mp h).resolve_left hx

/-- **The Fourier construction** in scalar variables (`SIDE_EXISTENCE.md` §§4–7). -/
theorem construct (μ ν k u e a b c n m h : ℂ) (nr hr : ℝ) (hnr : n = nr) (hhr : h = hr)
    (hnpos : 0 < nr) (hhpos : 0 < hr)
    (hn : n = 1 - μ * conj μ) (hm : m = 1 - ν * conj ν) (hdet : h = n * m - k * conj k)
    (hu : u * conj u = 1) (ha : a = μ ^ 2 - u * conj μ) (he : e * conj e = h ^ 2)
    (hI : c ^ 2 - 4 * a * b - e = 0)
    (hII : e * conj a - n * c * k + a * k ^ 2 + n ^ 2 * b = 0)
    (hIII : e * conj c - c * (n * m + k * conj k) + 2 * a * k * m + 2 * b * n * conj k = 0)
    (hY0 : (Ycirc n k (conj k) a (conj a) c e h u μ ν (conj ν)).1 = 0)
    (hY1 : (Ycirc n k (conj k) a (conj a) c e h u μ ν (conj ν)).2 = 0) :
    ∃ x y : Fin 3 → ℂ, (∀ j, Complex.normSq (x j) = 1) ∧ (∀ j, Complex.normSq (y j) = 1) ∧
      sS x = 3 * μ ∧ sS y = 3 * ν ∧ rS x y = 3 * (ν * conj μ + k) ∧ uS x = u ∧
      piS x y = 6 * μ * ν - 3 * c ∧ hS x y ^ 2 = -27 * e := by
  have hn0 : n ≠ 0 := by rw [hnr]; exact_mod_cast hnpos.ne'
  have hh0 : h ≠ 0 := by rw [hhr]; exact_mod_cast hhpos.ne'
  have hnc : conj n = n := by rw [hnr, Complex.conj_ofReal]
  have hhc : conj h = h := by rw [hhr, Complex.conj_ofReal]
  have he0 : e ≠ 0 := by
    rintro rfl
    rw [zero_mul] at he
    exact hh0 (pow_eq_zero_iff two_ne_zero |>.mp he.symm)
  have hA : conj a = conj μ ^ 2 - conj u * μ := by
    rw [ha]; simp only [map_sub, map_mul, map_pow, Complex.conj_conj]
  -- §4: a square root of `e`, reality of `d_F`, the sign choice
  obtain ⟨δ0, hδ0⟩ := IsAlgClosed.exists_pow_nat_eq e (by norm_num : 0 < 2)
  have hδ0n : δ0 * conj δ0 = h := by
    have h1 : ((Complex.normSq δ0 : ℝ) : ℂ) ^ 2 = ((hr ^ 2 : ℝ) : ℂ) := by
      rw [← Complex.mul_conj]; push_cast
      rw [← hhr, ← he, ← hδ0]; simp only [map_pow]; ring
    have h2 : Complex.normSq δ0 ^ 2 = hr ^ 2 := by exact_mod_cast h1
    have h3 : Complex.normSq δ0 = hr :=
      (pow_left_inj₀ (Complex.normSq_nonneg _) hhpos.le two_ne_zero).mp h2
    rw [Complex.mul_conj, h3, hhr]
  have hδ00 : δ0 ≠ 0 := by
    rintro rfl; rw [zero_mul] at hδ0n; exact hh0 hδ0n.symm
  have hDc : h * (n * c - 2 * a * k) - e * conj (n * c - 2 * a * k) = 0 := by
    have := D_conjugation n m k (conj k) a (conj a) b c (conj c) e h (by linear_combination hdet)
      (by linear_combination hIII) (by linear_combination hII)
    simp only [map_sub, map_mul, hnc, map_ofNat]
    linear_combination this
  have hDd := D_discriminant n k a (conj a) b c e (by linear_combination hI) (by linear_combination hII)
  set D0 := n * c - 2 * a * k with hD0
  have hreal : conj (D0 * conj δ0) = D0 * conj δ0 := by
    have h1 : δ0 * (conj (D0 * conj δ0) - D0 * conj δ0) = 0 := by
      simp only [map_mul, Complex.conj_conj]
      linear_combination (-1 : ℂ) * hDc + conj D0 * hδ0 - D0 * hδ0n
    exact sub_eq_zero.mp (cancel hδ00 h1)
  have hre := Complex.conj_eq_iff_re.mp hreal
  set d0 : ℝ := (D0 * conj δ0).re / hr
  have hδd0 : δ0 * (d0 : ℂ) = D0 := by
    have : (d0 : ℂ) = D0 * conj δ0 / h := by
      simp only [d0]; push_cast; rw [hre, hhr]
    rw [this]; field_simp; linear_combination D0 * hδ0n
  obtain ⟨δ, d, hδ2, hδn, hd0, hδd⟩ : ∃ δ : ℂ, ∃ d : ℝ, δ ^ 2 = e ∧ δ * conj δ = h ∧ 0 ≤ d ∧
      δ * (d : ℂ) = D0 := by
    by_cases hs : 0 ≤ d0
    · exact ⟨δ0, d0, hδ0, hδ0n, hs, hδd0⟩
    · refine ⟨-δ0, -d0, by rw [neg_sq]; exact hδ0, by rw [map_neg, neg_mul_neg]; exact hδ0n,
        by linarith, by push_cast; linear_combination hδd0⟩
  have hδ0' : δ ≠ 0 := by rintro rfl; rw [zero_mul] at hδn; exact hh0 hδn.symm
  have hdisc : (d : ℂ) ^ 2 - n ^ 2 + 4 * conj a * a = 0 := by
    have h1 : δ ^ 2 * ((d : ℂ) ^ 2 - n ^ 2 + 4 * conj a * a) = 0 := by
      linear_combination (δ * d + D0) * hδd + hDd - (n ^ 2 - 4 * conj a * a) * hδ2
    exact cancel (pow_ne_zero 2 hδ0') h1
  -- ρ
  obtain ⟨ρ, hρ⟩ : ∃ ρ : ℂ, ρ = (((nr + d) / 2 : ℝ) : ℂ) := ⟨_, rfl⟩
  have hρpos : 0 < (nr + d) / 2 := by linarith
  have hρ0 : ρ ≠ 0 := by rw [hρ]; exact_mod_cast hρpos.ne'
  have hρc : conj ρ = ρ := by rw [hρ, Complex.conj_ofReal]
  have hρdef : 2 * ρ = n + d := by rw [hρ, hnr]; push_cast; ring
  have hquad : ρ ^ 2 - n * ρ + a * conj a = 0 := by
    have := rho_quadratic n a (conj a) d ρ (by linear_combination hρdef) (by linear_combination hdisc)
    linear_combination (1 / 4 : ℂ) * this
  -- §5: q, c₊, c₋, σ
  obtain ⟨q, hq⟩ : ∃ q : ℂ, q * ρ = a := ⟨a / ρ, div_mul_cancel₀ _ hρ0⟩
  have hQ : conj q * ρ = conj a := by
    have := congrArg conj hq; rwa [map_mul, hρc] at this
  obtain ⟨cp, hcp⟩ : ∃ cp : ℂ, cp * n = k - conj q * δ := ⟨_, div_mul_cancel₀ _ hn0⟩
  have hCP : conj cp * n = conj k - conj δ * q := by
    have := congrArg conj hcp
    simp only [map_mul, map_sub, hnc, Complex.conj_conj] at this
    linear_combination this
  obtain ⟨cm, hcm⟩ : ∃ cm : ℂ, cm * n = k * q + δ := ⟨_, div_mul_cancel₀ _ hn0⟩
  have hCM : conj cm * n = conj k * conj q + conj δ := by
    have := congrArg conj hcm
    simp only [map_mul, map_add, hnc] at this
    linear_combination this
  obtain ⟨σ, hsig⟩ : ∃ σ : ℂ, σ = u + μ * q := ⟨_, rfl⟩
  have hSig : conj σ = conj u + conj μ * conj q := by
    rw [hsig]; simp only [map_add, map_mul]
  have hquadB : ρ ^ 2 - (1 - μ * conj μ) * ρ + (μ ^ 2 - u * conj μ) * (conj μ ^ 2 - conj u * μ) = 0 := by
    linear_combination hquad + ρ * hn - conj a * ha - (μ ^ 2 - u * conj μ) * hA
  have hsS : σ * conj σ = ρ := by
    have h1 : ρ ^ 2 * (σ * conj σ - ρ) = 0 := by
      linear_combination ((conj σ)*ρ^2) * hsig + (ρ^2*(μ*q + u)) * hSig +
        (μ*ρ*((conj μ)*(conj q) + (conj u))) * hq + ((conj μ)*(a*μ + ρ*u)) * hQ +
        (μ*((conj a)*(conj μ) + (conj u)*ρ)) * ha + (-(conj μ)*((conj μ)*μ*u - μ^3 - ρ*u)) * hA +
        ((conj μ)*μ + (conj u)*u - ρ - 1) * hquadB + ((conj μ)^3*u - (conj μ)^2*μ^2 -
        (conj μ)*(conj u)*μ*u - 2*(conj μ)*μ*ρ + (conj u)*μ^3 + ρ) * hu
    exact sub_eq_zero.mp (cancel (pow_ne_zero 2 hρ0) h1)
  have hxf : conj μ + conj q * μ + q * conj σ = 0 := by
    have h1 : ρ ^ 2 * (conj μ + conj q * μ + q * conj σ) = 0 := by
      linear_combination (q*ρ^2) * hSig + (ρ*((conj μ)*(conj q) + (conj u))) * hq +
        ((conj μ)*a + μ*ρ) * hQ + ((conj a)*(conj μ) + (conj u)*ρ) * ha +
        (-(conj μ)^2*u + (conj μ)*μ^2 + μ*ρ) * hA + ((conj μ)) * hquadB + (-(conj μ)*ρ) * hu
    exact cancel (pow_ne_zero 2 hρ0) h1
  have hxfb : μ + q * conj μ + conj q * σ = 0 := by
    have := congrArg conj hxf
    simp only [map_add, map_mul, Complex.conj_conj, map_zero] at this
    linear_combination this
  have hxp : μ ^ 3 + ρ * σ + ρ * q ^ 3 * conj σ - 3 * μ * ρ * q - u = 0 := by
    have h1 : ρ ^ 3 * (μ ^ 3 + ρ * σ + ρ * q ^ 3 * conj σ - 3 * μ * ρ * q - u) = 0 := by
      linear_combination (ρ^4) * hsig + (q^3*ρ^4) * hSig + (ρ*((conj μ)*(conj q)*a^2 +
        (conj μ)*(conj q)*a*q*ρ + (conj μ)*(conj q)*q^2*ρ^2 + (conj u)*a^2 + (conj u)*a*q*ρ +
        (conj u)*q^2*ρ^2 - 2*μ*ρ^2)) * hq + ((conj μ)*a^3) * hQ + ((conj a)*(conj μ)^3*u^2 -
        (conj a)*(conj μ)^2*a*u - 2*(conj a)*(conj μ)^2*μ^2*u + (conj a)*(conj μ)*a^2 +
        (conj a)*(conj μ)*a*μ^2 + (conj a)*(conj μ)*μ^4 + (conj μ)^2*(conj u)*ρ*u^2 -
        (conj μ)*(conj u)*a*ρ*u - 2*(conj μ)*(conj u)*μ^2*ρ*u + (conj u)*a^2*ρ + (conj u)*a*μ^2*ρ +
        (conj u)*μ^4*ρ - 2*μ*ρ^3) * ha + (-(conj μ)*((conj μ)*u - μ^2)^3) * hA +
        ((conj μ)^3*u^2 - 2*(conj μ)^2*μ^2*u - (conj μ)*(conj u)*μ*u^2 + (conj μ)*μ^4 +
        (conj μ)*μ*ρ*u + (conj μ)*μ*u + (conj u)*μ^3*u - μ^3*ρ - μ^3 + ρ^2*u) * hquadB +
        (-((conj μ)*u - μ^2)*((conj μ)^3*μ*u - (conj μ)^2*μ^3 + (conj μ)^2*ρ*u -
        (conj μ)*(conj u)*μ^2*u - 2*(conj μ)*μ^2*ρ + (conj u)*μ^4 + μ*ρ)) * hu
    exact cancel (pow_ne_zero 3 hρ0) h1
  -- the Gram relations (25)
  have hqn : ρ * (1 + q * conj q) = n := by
    have := q_norm n a (conj a) ρ q (conj q) (by linear_combination hquad)
      (by linear_combination hQ) (by linear_combination hq)
    have h1 : ρ * (ρ * (1 + q * conj q) - n) = 0 := by linear_combination this
    linear_combination cancel hρ0 h1
  have hcross : ρ * (cp + conj q * cm) = k := by
    have := cross_gram n k δ ρ q (conj q) cp cm (by linear_combination hcp) (by linear_combination hcm)
      (by linear_combination hqn)
    have h1 : n * (ρ * (cp + conj q * cm) - k) = 0 := by linear_combination this
    linear_combination cancel hn0 h1
  have hcn : ρ * (cp * conj cp + cm * conj cm) = m := by
    have := third_row_core_norm n m k (conj k) h δ (conj δ) ρ q (conj q) cp (conj cp) cm (conj cm)
      (by linear_combination hcp) (by linear_combination hCP) (by linear_combination hcm)
      (by linear_combination hCM) (by linear_combination hδn) (by linear_combination hqn)
      (by linear_combination hdet)
    have h1 : n ^ 2 * (ρ * (cp * conj cp + cm * conj cm) - m) = 0 := by linear_combination this
    linear_combination cancel (pow_ne_zero 2 hn0) h1
  have hdetM : ρ * (cm - q * cp) = δ := by
    have := determinant n k δ ρ q (conj q) cp cm (by linear_combination hcm) (by linear_combination hcp)
      (by linear_combination hqn)
    have h1 : n * (ρ * (cm - q * cp) - δ) = 0 := by linear_combination this
    linear_combination cancel hn0 h1
  have hgam : ρ * (cm + q * cp) = c := by
    have := mixed_gamma n k a c δ d ρ q (conj q) cp cm (by linear_combination hcm)
      (by linear_combination hcp) (by linear_combination hq) (by linear_combination hqn)
      (by linear_combination hρdef) (by linear_combination hδd)
    have h1 : n * (ρ * (cm + q * cp) - c) = 0 := by linear_combination this
    linear_combination cancel hn0 h1
  -- §6: the third-row flatness
  have hF : conj ν * cm + conj cp * ν + conj cm * cp * σ = 0 := by
    have := Fy_core n k (conj k) a (conj a) c e h δ (conj δ) d ρ q (conj q) cp (conj cp) cm (conj cm)
      μ ν (conj ν) σ u hq hQ hcp hCP hcm hCM hsig hδ2 (by linear_combination hδn) hquad
      (by linear_combination hρdef) (by linear_combination hδd) hY0 hY1
    have h1 : (2 * δ * e * n ^ 2 * ρ ^ 3) * (conj cp * ν + conj ν * cm + conj cm * cp * σ) = 0 := by
      linear_combination this
    have h0 : (2 * δ * e * n ^ 2 * ρ ^ 3) ≠ 0 := by
      have : (2 : ℂ) ≠ 0 := two_ne_zero
      positivity
    linear_combination cancel h0 h1
  have hG : ν * conj cm + cp * conj ν + cm * conj cp * conj σ = 0 := by
    have := congrArg conj hF
    simp only [map_add, map_mul, Complex.conj_conj, map_zero] at this
    linear_combination this
  -- §7: the cube root and the Fourier rows
  obtain ⟨w, hw⟩ := IsAlgClosed.exists_pow_nat_eq (σ ^ 2 / ρ) (by norm_num : 0 < 3)
  have hw3 : ρ * w ^ 3 = σ ^ 2 := by rw [hw]; field_simp
  have hW3 : ρ * conj w ^ 3 = conj σ ^ 2 := by
    have := congrArg conj hw3; simpa only [map_mul, map_pow, hρc] using this
  have hwW : w * conj w = 1 := by
    have h1 : ρ ^ 2 * ((w * conj w) ^ 3 - 1) = 0 := by
      linear_combination (ρ * conj w ^ 3) * hw3 + σ ^ 2 * hW3 + (σ * conj σ + ρ) * hsS
    have h2 : ((Complex.normSq w ^ 3 : ℝ) : ℂ) = ((1 : ℝ) : ℂ) := by
      push_cast; rw [← Complex.mul_conj]; linear_combination cancel (pow_ne_zero 2 hρ0) h1
    have h3 := (pow_eq_one_iff_of_nonneg (Complex.normSq_nonneg w) (by norm_num : 3 ≠ 0)).mp
      (Complex.ofReal_injective h2)
    rw [Complex.mul_conj, h3, Complex.ofReal_one]
  have hw0 : w ≠ 0 := by rintro rfl; rw [zero_mul] at hwW; exact zero_ne_one hwW
  have hρw : ρ * w ≠ 0 := mul_ne_zero hρ0 hw0
  refine ⟨frow μ (σ * conj w) (q * conj σ * w) omega, frow ν (cp * σ * conj w) (cm * conj σ * w) omega,
    ?_, ?_, frow_sS omega_sq, frow_sS omega_sq, ?_, ?_, ?_, ?_⟩
  · refine frow_unit omega_sq omega_conj ?_ ?_
    · simp only [map_mul, Complex.conj_conj]
      linear_combination ((conj σ)*σ*((conj q)*q + 1)) * hwW + ((conj q)*q + 1) * hsS + hqn + hn
    · simp only [map_mul, Complex.conj_conj]
      refine cancel hρw ?_
      linear_combination ρ * σ * hxf + (ρ*σ*((conj μ) + (conj q)*μ)) * hwW +
        ((conj σ)^2*q) * hw3 + ((conj σ)*q*σ) * hsS
  · refine frow_unit omega_sq omega_conj ?_ ?_
    · simp only [map_mul, Complex.conj_conj]
      linear_combination ((conj σ)*σ*((conj cm)*cm + (conj cp)*cp)) * hwW +
        ((conj cm)*cm + (conj cp)*cp) * hsS + hcn + hm
    · simp only [map_mul, Complex.conj_conj]
      refine cancel hρw ?_
      linear_combination ρ * σ * hG + (ρ*σ*((conj cm)*ν + (conj ν)*cp)) * hwW +
        ((conj cp)*(conj σ)^2*cm) * hw3 + ((conj cp)*(conj σ)*cm*σ) * hsS
  · rw [frow_rS omega_sq omega_conj]
    simp only [map_mul, Complex.conj_conj]
    linear_combination 3 * (((conj σ)*σ*((conj q)*cm + cp)) * hwW + ((conj q)*cm + cp) * hsS + hcross)
  · rw [frow_uS omega_sq]
    refine sub_eq_zero.mp (cancel hρ0 ?_)
    linear_combination (-3*(conj σ)*μ*q*ρ*σ) * hwW + ((conj σ)^3*q^3) * hw3 + (σ^3) * hW3 +
      ((conj σ)^2*q^3*σ + (conj σ)*q^3*ρ + (conj σ)*σ^2 - 3*μ*q*ρ + ρ*σ) * hsS + ρ * hxp
  · rw [frow_piS omega_sq]
    linear_combination (-3) * (((conj σ)*σ*(cm + cp*q)) * hwW + (cm + cp*q) * hsS + hgam)
  · rw [frow_hS omega_sq]
    have h1 : σ * conj w * (cm * conj σ * w) - q * conj σ * w * (cp * σ * conj w) = δ := by
      linear_combination (-(conj σ)*σ*(-cm + cp*q)) * hwW + (cm - cp*q) * hsS + hdetM
    rw [h1, hδ2]

end NoFourMUBs.L1.SideConstructionCore
