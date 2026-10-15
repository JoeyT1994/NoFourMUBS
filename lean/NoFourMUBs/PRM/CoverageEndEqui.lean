import NoFourMUBs.PRM.CoverageEndP7

/-!
# I5 (second half): the equicorrelation endpoint exclusion
(`CRITICAL_EQUI_CORRELATION_EXCLUSION.md`)

**Theorem (`equi_strip`).**  No all-critical strip has a corner with `X = Y = Z = 9/5`,
`|J| = 54/25`.

Let `a = (−4 + 3i)/5` (`aE`).  By `driver` the strip is `(1; x; y)` with corner sums `2 + a`, `2 + ā`
and correlation `1 + 2ā` (the data of `E₀ = [[1,1,1],[1,1,a],[1,ā,1]]`).

1. *The corner is a column permutation of `E₀`* (`equi_corner`).  Since `X = Y = Z`, the three side
   identities (`Side.side_identities`) have the same `c`, and their differences give
   `u P̄₀ = P̄₁`, `v P̄₀ = P̄₂`; numerically `P̄₀ = 108/25`, `P̄₁ = a P̄₀`, `P̄₂ = ā P̄₀`, so the coordinate
   products are `u = a`, `v = ā`.  Vieta: every `x`-coordinate is a root of `(T − 1)²(T − a)`, every
   `y`-coordinate of `(T − 1)²(T − ā)`; the sums and the correlation fix the columns.
2. *Mixed corners* (`formula3`, the paper's (3)).  For a complementary column `(1, x, y)` the corners
   with the columns `(1,1,1), (1,1,ā)` and `(1,1,1), (1,a,1)` of `E₀` give
   `(x − 1)²(x + 1)(ā x − y²) = 0` and `(y − 1)²(y + 1)(a y − x²) = 0`, hence
   `x ∈ {1, −1, a}` or `x³ = a` (`equi_column`).
3. *Orthogonality* (`cube_excl`).  The three complementary `x` sum to `−(2 + a)`.  This replaces the
   paper's field-degree argument by explicit elimination: two cube roots of `a` with sum `w` satisfy
   `(w³ − 8a)(w³ + a)² = 0` (`two_sum`), and all remaining cases are exact Gaussian-rational
   computations.
-/

open Matrix Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage.Endpoint

/-! ### The constant `a = (−4 + 3i)/5` -/

/-- `a = (−4 + 3i)/5`. -/
def aE : ℂ := ⟨-4 / 5, 3 / 5⟩

theorem aE_normSq : Complex.normSq aE = 1 := by
  simp [Complex.normSq_apply, aE]; norm_num

theorem aE_mul_conj : aE * conj aE = 1 := mul_conj_one aE_normSq

theorem conj_aE_normSq : Complex.normSq (conj aE) = 1 := by rw [Complex.normSq_conj]; exact aE_normSq

theorem aE_ne_one : aE ≠ 1 := by
  intro h; have := congrArg Complex.re h; simp [aE] at this; norm_num at this

theorem aE_ne_neg_one : aE ≠ -1 := by
  intro h; have := congrArg Complex.re h; simp [aE] at this; norm_num at this

theorem conj_aE_ne_one : conj aE ≠ 1 := by
  intro h; have := congrArg Complex.re h; simp [aE] at this; norm_num at this

theorem conj_aE_ne_neg_one : conj aE ≠ -1 := by
  intro h; have := congrArg Complex.re h; simp [aE] at this; norm_num at this

theorem conj_aE : conj aE = ⟨-4 / 5, -3 / 5⟩ := by
  apply Complex.ext <;> simp [aE]; norm_num

theorem normSq_s0 : Complex.normSq (2 + aE) = 9 / 5 := by
  simp [Complex.normSq_apply, aE]; norm_num

theorem normSq_t0 : Complex.normSq (2 + conj aE) = 9 / 5 := by
  rw [conj_aE]; simp [Complex.normSq_apply]; norm_num

theorem normSq_r0 : Complex.normSq (1 + 2 * conj aE) = 9 / 5 := by
  rw [conj_aE]; simp [Complex.normSq_apply]; norm_num

theorem rho0_eq : conj (2 + aE) * conj (1 + 2 * conj aE) * (2 + conj aE) = ⟨27 / 25, 54 / 25⟩ := by
  apply Complex.ext <;> simp [aE] <;> norm_num

/-! ### Step 1: the corner is a column permutation of `E₀` -/

theorem hP0 : conj (Side.P0 (2 + aE) (2 + conj aE) (1 + 2 * conj aE)) = 108 / 25 := by
  have c2 : conj (2 : ℂ) = 2 := map_ofNat _ 2
  rw [Side.P0, normSq_r0]
  simp only [map_add, map_mul, map_pow, Complex.conj_ofReal, Complex.conj_conj, c2, map_one]
  rw [conj_aE]
  apply Complex.ext <;> simp [aE, pow_two] <;> norm_num

theorem hP1 : conj (Side.P1 (2 + aE) (2 + conj aE) (1 + 2 * conj aE)) = 108 / 25 * aE := by
  have c2 : conj (2 : ℂ) = 2 := map_ofNat _ 2
  rw [Side.P1, normSq_t0]
  simp only [map_add, map_mul, map_pow, Complex.conj_ofReal, Complex.conj_conj, c2, map_one]
  rw [conj_aE]
  apply Complex.ext <;> simp [aE, pow_two] <;> norm_num

theorem hP2 : conj (Side.P2 (2 + aE) (2 + conj aE) (1 + 2 * conj aE)) = 108 / 25 * conj aE := by
  have c2 : conj (2 : ℂ) = 2 := map_ofNat _ 2
  rw [Side.P2, normSq_s0]
  simp only [map_add, map_mul, map_pow, Complex.conj_ofReal, Complex.conj_conj, c2, map_one]
  rw [conj_aE]
  apply Complex.ext <;> simp [aE, pow_two] <;> norm_num

theorem vieta3 {p0 p1 p2 e1 e2 e3 x : ℂ} (h1 : p0 + p1 + p2 = e1) (h2 : p0 * p1 + p0 * p2 + p1 * p2 = e2)
    (h3 : p0 * p1 * p2 = e3) (hx : x = p0 ∨ x = p1 ∨ x = p2) : x ^ 3 - e1 * x ^ 2 + e2 * x - e3 = 0 := by
  rcases hx with rfl | rfl | rfl <;> linear_combination x ^ 2 * h1 - x * h2 + h3

/-- The coordinates of a unit triple with sum `2 + c` and product `c` (`|c| = 1`) lie in `{1, c}`. -/
theorem coord_root {p0 p1 p2 c : ℂ} (n0 : Complex.normSq p0 = 1) (n1 : Complex.normSq p1 = 1)
    (n2 : Complex.normSq p2 = 1) (hc : c * conj c = 1) (hs : p0 + p1 + p2 = 2 + c)
    (hu : p0 * p1 * p2 = c) {x : ℂ} (hx : x = p0 ∨ x = p1 ∨ x = p2) : x = 1 ∨ x = c := by
  have c0 := mul_conj_one n0; have c1 := mul_conj_one n1; have c2 := mul_conj_one n2
  have hsc : conj p0 + conj p1 + conj p2 = 2 + conj c := by
    have := congrArg conj hs
    simpa only [map_add, show conj (2 : ℂ) = 2 from map_ofNat _ 2] using this
  have he2 : p0 * p1 + p0 * p2 + p1 * p2 = c * (2 + conj c) := by
    linear_combination (p0 * p1 * p2) * hsc + (2 + conj c) * hu - (p1 * p2) * c0 - (p0 * p2) * c1 -
      (p0 * p1) * c2
  have v := vieta3 hs he2 hu hx
  have key : (x - 1) ^ 2 * (x - c) = 0 := by linear_combination v - x * hc
  rcases mul_eq_zero.1 key with k | k
  · exact Or.inl (sub_eq_zero.1 (pow_eq_zero_iff two_ne_zero |>.1 k))
  · exact Or.inr (sub_eq_zero.1 k)

theorem shape3 {z : Fin 3 → ℂ} {c : ℂ} (hc : c ≠ 1) (h : ∀ j, z j = 1 ∨ z j = c)
    (hs : z 0 + z 1 + z 2 = 2 + c) :
    (z 0 = c ∧ z 1 = 1 ∧ z 2 = 1) ∨ (z 0 = 1 ∧ z 1 = c ∧ z 2 = 1) ∨ (z 0 = 1 ∧ z 1 = 1 ∧ z 2 = c) := by
  have hc' : c - 1 ≠ 0 := sub_ne_zero.2 hc
  rcases h 0 with h0 | h0 <;> rcases h 1 with h1 | h1 <;> rcases h 2 with h2 | h2 <;>
    rw [h0, h1, h2] at hs
  · exact absurd (by linear_combination -hs) hc'
  · exact Or.inr (Or.inr ⟨h0, h1, h2⟩)
  · exact Or.inr (Or.inl ⟨h0, h1, h2⟩)
  · exact absurd (by linear_combination hs) hc'
  · exact Or.inl ⟨h0, h1, h2⟩
  · exact absurd (by linear_combination hs) hc'
  · exact absurd (by linear_combination hs) hc'
  · exact absurd (by linear_combination hs / 2) hc'

theorem equi_corner {p q : Fin 3 → ℂ} (hp : ∀ j, Complex.normSq (p j) = 1)
    (hq : ∀ j, Complex.normSq (q j) = 1) (hs : Side.sS p = 2 + aE) (ht : Side.sS q = 2 + conj aE)
    (hr : Side.rS p q = 1 + 2 * conj aE) :
    ∃ j1 j2 j3 : Fin 3, p j1 = 1 ∧ q j1 = 1 ∧ p j2 = 1 ∧ q j2 = conj aE ∧ p j3 = aE ∧ q j3 = 1 := by
  obtain ⟨I0, I1, I2, -⟩ := Side.side_identities hp hq
  rw [hs, ht, hr] at I0 I1 I2
  rw [Side.cR, normSq_r0, hP0] at I0
  rw [Side.cR, normSq_t0, hP1] at I1
  rw [Side.cR, normSq_s0, hP2] at I2
  have nu : Side.uS p ≠ 0 := by
    simp only [Side.uS]
    exact mul_ne_zero (mul_ne_zero (Side.ne_zero_of_normSq (hp 0)) (Side.ne_zero_of_normSq (hp 1)))
      (Side.ne_zero_of_normSq (hp 2))
  have nv : Side.uS q ≠ 0 := by
    simp only [Side.uS]
    exact mul_ne_zero (mul_ne_zero (Side.ne_zero_of_normSq (hq 0)) (Side.ne_zero_of_normSq (hq 1)))
      (Side.ne_zero_of_normSq (hq 2))
  have hu : Side.uS p = aE := by
    have : Side.uS q * (Side.uS p - aE) = 0 := by linear_combination (25 / 108 : ℂ) * (I0 - I1)
    exact sub_eq_zero.1 ((mul_eq_zero.1 this).resolve_left nv)
  have hv : Side.uS q = conj aE := by
    have : Side.uS p * (Side.uS q - conj aE) = 0 := by linear_combination (25 / 108 : ℂ) * (I0 - I2)
    exact sub_eq_zero.1 ((mul_eq_zero.1 this).resolve_left nu)
  simp only [Side.sS] at hs ht
  simp only [Side.uS] at hu hv
  have hP : (p 0 = aE ∧ p 1 = 1 ∧ p 2 = 1) ∨ (p 0 = 1 ∧ p 1 = aE ∧ p 2 = 1) ∨
      (p 0 = 1 ∧ p 1 = 1 ∧ p 2 = aE) := by
    refine shape3 aE_ne_one (fun j => ?_) hs
    refine coord_root (hp 0) (hp 1) (hp 2) aE_mul_conj hs hu ?_
    fin_cases j <;> simp
  have hQ : (q 0 = conj aE ∧ q 1 = 1 ∧ q 2 = 1) ∨ (q 0 = 1 ∧ q 1 = conj aE ∧ q 2 = 1) ∨
      (q 0 = 1 ∧ q 1 = 1 ∧ q 2 = conj aE) := by
    refine shape3 conj_aE_ne_one (fun j => ?_) ht
    refine coord_root (hq 0) (hq 1) (hq 2) (by rw [Complex.conj_conj, mul_comm]; exact aE_mul_conj)
      ht hv ?_
    fin_cases j <;> simp
  have bad : ¬ (conj aE * conj aE + 1 + 1 = 1 + 2 * conj aE) := by
    intro e
    have : (conj aE - 1) ^ 2 = 0 := by linear_combination e
    exact conj_aE_ne_one (sub_eq_zero.1 (pow_eq_zero_iff two_ne_zero |>.1 this))
  simp only [Side.rS] at hr
  rcases hP with ⟨a0, a1, a2⟩ | ⟨a0, a1, a2⟩ | ⟨a0, a1, a2⟩ <;>
    rcases hQ with ⟨b0, b1, b2⟩ | ⟨b0, b1, b2⟩ | ⟨b0, b1, b2⟩
  · rw [a0, a1, a2, b0, b1, b2] at hr; simp only [map_one, mul_one] at hr
    exact (bad (by linear_combination hr)).elim
  · exact ⟨2, 1, 0, a2, b2, a1, b1, a0, b0⟩
  · exact ⟨1, 2, 0, a1, b1, a2, b2, a0, b0⟩
  · exact ⟨2, 0, 1, a2, b2, a0, b0, a1, b1⟩
  · rw [a0, a1, a2, b0, b1, b2] at hr; simp only [map_one, mul_one] at hr
    exact (bad (by linear_combination hr)).elim
  · exact ⟨0, 2, 1, a0, b0, a2, b2, a1, b1⟩
  · exact ⟨1, 0, 2, a1, b1, a0, b0, a2, b2⟩
  · exact ⟨0, 1, 2, a0, b0, a1, b1, a2, b2⟩
  · rw [a0, a1, a2, b0, b1, b2] at hr; simp only [map_one, mul_one] at hr
    exact (bad (by linear_combination hr)).elim

/-! ### Step 2: mixed corners -/

/-- The paper's identity (3): for the block with columns `(1,1,1), (1,1,c), (1,x,y)`,
`(T − T̄) c² x² y = −(c − 1)²(c + 1)(x − 1)²(x + 1)(c x − y²)`. -/
theorem formula3 {c x y : ℂ} (hc : Complex.normSq c = 1) (hx : Complex.normSq x = 1)
    (hy : Complex.normSq y = 1) (h : (Step2.sideSignature !![1, 1, 1; 1, 1, x; 1, c, y]).im = 0) :
    (c - 1) ^ 2 * (c + 1) * (x - 1) ^ 2 * (x + 1) * (c * x - y ^ 2) = 0 := by
  have hT : Step2.sideSignature !![1, 1, 1; 1, 1, x; 1, c, y] = Side.TS ![1, 1, x] ![1, c, y] :=
    Step2.sig_rows _ (fun j => by fin_cases j <;> rfl)
  rw [hT] at h
  have e : conj (Side.TS ![1, 1, x] ![1, c, y]) = Side.TS ![1, 1, x] ![1, c, y] :=
    Complex.conj_eq_iff_im.2 h
  have cc' := Side.conj_eq_inv hc; have cx := Side.conj_eq_inv hx; have cy := Side.conj_eq_inv hy
  have nc := Side.ne_zero_of_normSq hc; have nx := Side.ne_zero_of_normSq hx
  have ny := Side.ne_zero_of_normSq hy
  have key : (Side.TS ![1, 1, x] ![1, c, y] - conj (Side.TS ![1, 1, x] ![1, c, y])) *
      (c ^ 2 * x ^ 2 * y) = -((c - 1) ^ 2 * (c + 1) * (x - 1) ^ 2 * (x + 1) * (c * x - y ^ 2)) := by
    simp only [Side.TS, Side.piS, Side.hS, Side.uS, Matrix.cons_val_zero, Matrix.cons_val_one,
      Matrix.cons_val_two, Matrix.head_cons, Matrix.tail_cons, map_mul, map_add, map_sub, map_neg,
      map_pow, map_one, map_inv₀, inv_inv, cc', cx, cy]
    field_simp
    ring
  rw [e, sub_self, zero_mul] at key
  linear_combination key

theorem equi_column {x y : ℂ} (hx : Complex.normSq x = 1)
    (h1 : (x - 1) ^ 2 * (x + 1) * (conj aE * x - y ^ 2) = 0)
    (h2 : (y - 1) ^ 2 * (y + 1) * (aE * y - x ^ 2) = 0) :
    (x = 1 ∨ x = -1 ∨ x = aE) ∨ x ^ 3 = aE := by
  have haa := aE_mul_conj
  rcases mul_eq_zero.1 h1 with k | k
  · rcases mul_eq_zero.1 k with k | k
    · exact Or.inl (Or.inl (sub_eq_zero.1 (pow_eq_zero_iff two_ne_zero |>.1 k)))
    · exact Or.inl (Or.inr (Or.inl (eq_neg_of_add_eq_zero_left k)))
  · rcases mul_eq_zero.1 h2 with k' | k'
    · rcases mul_eq_zero.1 k' with k' | k'
      · have hy : y = 1 := sub_eq_zero.1 (pow_eq_zero_iff two_ne_zero |>.1 k')
        rw [hy] at k
        exact Or.inl (Or.inr (Or.inr (by linear_combination aE * k - x * haa)))
      · have hy : y = -1 := eq_neg_of_add_eq_zero_left k'
        rw [hy] at k
        exact Or.inl (Or.inr (Or.inr (by linear_combination aE * k - x * haa)))
    · right
      have nx := Side.ne_zero_of_normSq hx
      have : x * (x ^ 3 - aE) = 0 := by
        linear_combination -(x ^ 2 + aE * y) * k' - aE ^ 2 * k + aE * x * haa
      exact sub_eq_zero.1 ((mul_eq_zero.1 this).resolve_left nx)

/-! ### Step 3: orthogonality excludes the remaining coordinates -/

/-- The finite coordinate values. -/
def Fm (x : ℂ) : Prop := x = 1 ∨ x = -1 ∨ x = aE

theorem two_sum {α β A B : ℂ} (hα : α ^ 3 = A) (hβ : β ^ 3 = B) :
    ((α + β) ^ 3 - A - B) ^ 3 = 27 * (α + β) ^ 3 * A * B := by
  have e : (α + β) ^ 3 - A - B = 3 * α * β * (α + β) := by linear_combination hα + hβ
  rw [e]
  linear_combination (27 * (α + β) ^ 3) * (β ^ 3 * hα + A * hβ)

theorem cube_k0 {f0 f1 f2 : ℂ} (h0 : Fm f0) (h1 : Fm f1) (h2 : Fm f2)
    (hs : f0 + f1 + f2 = -(2 + aE)) : False := by
  rcases h0 with rfl | rfl | rfl <;> rcases h1 with rfl | rfl | rfl <;>
    rcases h2 with rfl | rfl | rfl <;> norm_num [Complex.ext_iff, aE] at hs

theorem cube_k1 {ξ f1 f2 : ℂ} (hξ : ξ ^ 3 = aE) (h1 : Fm f1) (h2 : Fm f2)
    (hs : ξ + f1 + f2 = -(2 + aE)) : False := by
  have e : ξ = -(2 + aE) - f1 - f2 := by linear_combination hs
  subst e
  rcases h1 with rfl | rfl | rfl <;> rcases h2 with rfl | rfl | rfl <;>
    norm_num [Complex.ext_iff, aE, pow_succ] at hξ

theorem two_cubes {ξ1 ξ2 : ℂ} (h1 : ξ1 ^ 3 = aE) (h2 : ξ2 ^ 3 = aE) :
    (ξ1 + ξ2) ^ 3 = 8 * aE ∨ (ξ1 + ξ2) ^ 3 = -aE := by
  have T := two_sum h1 h2
  have fac : ((ξ1 + ξ2) ^ 3 - 8 * aE) * ((ξ1 + ξ2) ^ 3 + aE) ^ 2 = 0 := by linear_combination T
  rcases mul_eq_zero.1 fac with k | k
  · exact Or.inl (sub_eq_zero.1 k)
  · exact Or.inr (eq_neg_of_add_eq_zero_left (pow_eq_zero_iff two_ne_zero |>.1 k))

theorem cube_k2 {ξ1 ξ2 f : ℂ} (h1 : ξ1 ^ 3 = aE) (h2 : ξ2 ^ 3 = aE) (hf : Fm f)
    (hs : ξ1 + ξ2 + f = -(2 + aE)) : False := by
  have hw : ξ1 + ξ2 = -(2 + aE) - f := by linear_combination hs
  have k := two_cubes h1 h2
  rw [hw] at k
  rcases hf with rfl | rfl | rfl <;> rcases k with k | k <;>
    norm_num [Complex.ext_iff, aE, pow_succ] at k

theorem cube_k3 {ξ1 ξ2 ξ3 : ℂ} (h1 : ξ1 ^ 3 = aE) (h2 : ξ2 ^ 3 = aE) (h3 : ξ3 ^ 3 = aE)
    (hs : ξ1 + ξ2 + ξ3 = -(2 + aE)) : False := by
  have T := two_sum (α := ξ1 + ξ2) (A := (ξ1 + ξ2) ^ 3) rfl h3
  rw [hs] at T
  have hσ : (-(2 + aE)) ^ 3 = ⟨-54 / 125, -297 / 125⟩ := by
    apply Complex.ext <;> norm_num [aE, pow_succ]
  rw [hσ] at T
  rcases two_cubes h1 h2 with k | k <;> rw [k] at T <;>
    norm_num [Complex.ext_iff, aE, pow_succ] at T

theorem cube_excl {x0 x1 x2 : ℂ} (h0 : Fm x0 ∨ x0 ^ 3 = aE) (h1 : Fm x1 ∨ x1 ^ 3 = aE)
    (h2 : Fm x2 ∨ x2 ^ 3 = aE) (hs : x0 + x1 + x2 = -(2 + aE)) : False := by
  rcases h0 with h0 | h0 <;> rcases h1 with h1 | h1 <;> rcases h2 with h2 | h2
  · exact cube_k0 h0 h1 h2 hs
  · exact cube_k1 h2 h0 h1 (by linear_combination hs)
  · exact cube_k1 h1 h0 h2 (by linear_combination hs)
  · exact cube_k2 h1 h2 h0 (by linear_combination hs)
  · exact cube_k1 h0 h1 h2 hs
  · exact cube_k2 h0 h2 h1 (by linear_combination hs)
  · exact cube_k2 h0 h1 h2 hs
  · exact cube_k3 h0 h1 h2 hs

/-! ### The core and the strip theorem -/

theorem inj3 {u v w : I6} (h01 : u ≠ v) (h02 : u ≠ w) (h12 : v ≠ w) :
    Function.Injective ![u, v, w] := by
  intro i i' e
  fin_cases i <;> fin_cases i' <;>
    first
    | rfl
    | (exfalso; simp at e
       first
       | exact h01 e | exact h02 e | exact h12 e
       | exact h01 e.symm | exact h02 e.symm | exact h12 e.symm)

theorem equi_core {x y : I6 → ℂ}
    (h : Pre (2 + aE) (2 + conj aE) (conj (2 + aE) * conj (1 + 2 * conj aE) * (2 + conj aE)) x y)
    (hr : cc y x = 1 + 2 * conj aE) : False := by
  have ex := h.sx
  rw [sum_I6] at ex
  have cx := h.cx
  simp only [csum, Fin.sum_univ_three] at cx ex
  obtain ⟨j1, j2, j3, h1p, h1q, h2p, h2q, h3p, h3q⟩ :=
    equi_corner (p := fun i => x (Sum.inr i)) (q := fun i => y (Sum.inr i)) (fun j => h.ux _)
      (fun j => h.uy _) (by simpa [Side.sS, csum, Fin.sum_univ_three] using h.cx)
      (by simpa [Side.sS, csum, Fin.sum_univ_three] using h.cy)
      (by simpa [Side.rS, cc, Fin.sum_univ_three] using hr)
  replace h1p : x (Sum.inr j1) = 1 := h1p
  replace h1q : y (Sum.inr j1) = 1 := h1q
  replace h2p : x (Sum.inr j2) = 1 := h2p
  replace h2q : y (Sum.inr j2) = conj aE := h2q
  replace h3p : x (Sum.inr j3) = aE := h3p
  replace h3q : y (Sum.inr j3) = 1 := h3q
  have hj12 : j1 ≠ j2 := by
    rintro rfl; rw [h1q] at h2q; exact conj_aE_ne_one h2q.symm
  have hj13 : j1 ≠ j3 := by
    rintro rfl; rw [h1p] at h3p; exact aE_ne_one h3p.symm
  have col : ∀ k : Fin 3, Fm (x (Sum.inl k)) ∨ x (Sum.inl k) ^ 3 = aE := by
    intro k
    have c1 := h.crit _ (inj3 (u := Sum.inr j1) (v := Sum.inr j2) (w := Sum.inl k)
      (fun e => hj12 (Sum.inr_injective e)) Sum.inr_ne_inl Sum.inr_ne_inl)
    have e1 : blk ![fun _ => 1, x, y] ![Sum.inr j1, Sum.inr j2, Sum.inl k] =
        !![1, 1, 1; 1, 1, x (Sum.inl k); 1, conj aE, y (Sum.inl k)] := by
      ext i j; fin_cases i <;> fin_cases j <;> simp [blk, h1p, h1q, h2p, h2q]
    rw [e1] at c1
    have f1 := formula3 conj_aE_normSq (h.ux _) (h.uy _) c1
    have c2 := h.crit _ (inj3 (u := Sum.inr j1) (v := Sum.inr j3) (w := Sum.inl k)
      (fun e => hj13 (Sum.inr_injective e)) Sum.inr_ne_inl Sum.inr_ne_inl)
    have e2 : (blk ![fun _ => 1, x, y] ![Sum.inr j1, Sum.inr j3, Sum.inl k]).submatrix
        (Equiv.swap (1 : Fin 3) 2) (Equiv.refl (Fin 3)) =
        !![1, 1, 1; 1, 1, y (Sum.inl k); 1, aE, x (Sum.inl k)] := by
      ext i j; fin_cases i <;> fin_cases j <;> simp [blk, h1p, h1q, h3p, h3q, Equiv.swap_apply_def]
    rw [← Step2.sideSignature_submatrix _ (Equiv.swap (1 : Fin 3) 2) (Equiv.refl (Fin 3)), e2] at c2
    have f2 := formula3 aE_normSq (h.uy _) (h.ux _) c2
    have n1 : (conj aE - 1) ^ 2 * (conj aE + 1) ≠ 0 :=
      mul_ne_zero (pow_ne_zero _ (sub_ne_zero.2 conj_aE_ne_one))
        (fun e => conj_aE_ne_neg_one (eq_neg_of_add_eq_zero_left e))
    have n2 : (aE - 1) ^ 2 * (aE + 1) ≠ 0 :=
      mul_ne_zero (pow_ne_zero _ (sub_ne_zero.2 aE_ne_one))
        (fun e => aE_ne_neg_one (eq_neg_of_add_eq_zero_left e))
    have g1 : (x (Sum.inl k) - 1) ^ 2 * (x (Sum.inl k) + 1) * (conj aE * x (Sum.inl k) - y (Sum.inl k) ^ 2) = 0 := by
      have : ((conj aE - 1) ^ 2 * (conj aE + 1)) * ((x (Sum.inl k) - 1) ^ 2 * (x (Sum.inl k) + 1) *
          (conj aE * x (Sum.inl k) - y (Sum.inl k) ^ 2)) = 0 := by linear_combination f1
      exact (mul_eq_zero.1 this).resolve_left n1
    have g2 : (y (Sum.inl k) - 1) ^ 2 * (y (Sum.inl k) + 1) * (aE * y (Sum.inl k) - x (Sum.inl k) ^ 2) = 0 := by
      have : ((aE - 1) ^ 2 * (aE + 1)) * ((y (Sum.inl k) - 1) ^ 2 * (y (Sum.inl k) + 1) *
          (aE * y (Sum.inl k) - x (Sum.inl k) ^ 2)) = 0 := by linear_combination f2
      exact (mul_eq_zero.1 this).resolve_left n2
    exact equi_column (h.ux _) g1 g2
  exact cube_excl (col 0) (col 1) (col 2) (by linear_combination ex - cx)

/-- **The equicorrelation exclusion on a strip.** -/
theorem equi_strip {a b c : I6 → ℂ} (h : StripData a b c) (hs : Complex.normSq (cc b a) = 9 / 5)
    (ht : Complex.normSq (cc c a) = 9 / 5) (hr : Complex.normSq (cc c b) = 9 / 5)
    (hJ : Side.jS (cc b a) (cc c a) (cc c b) = 54 / 25 ∨ Side.jS (cc b a) (cc c a) (cc c b) = -(54 / 25)) :
    False := by
  have hs0 : (2 + aE) ≠ 0 := fun e => by
    have := normSq_s0; rw [e, Complex.normSq_zero] at this; norm_num at this
  have ht0 : (2 + conj aE) ≠ 0 := fun e => by
    have := normSq_t0; rw [e, Complex.normSq_zero] at this; norm_num at this
  obtain ⟨hre, him⟩ := rho_data (cc b a) (cc c a) (cc c b)
  have hρ := rho_cases (ρ := conj (cc b a) * conj (cc c b) * cc c a)
    (ρ0 := conj (2 + aE) * conj (1 + 2 * conj aE) * (2 + conj aE))
    (by rw [hre, rho0_eq]; rcases hJ with e | e <;> rw [e] <;> norm_num)
    (by rw [him, rho0_eq, hs, ht, hr]; rcases hJ with e | e <;> rw [e] <;> norm_num)
  obtain ⟨x, y, hp, hc⟩ := driver h hs0 ht0 (by rw [hs, normSq_s0]) (by rw [ht, normSq_t0]) hρ
  exact equi_core hp hc

end NoFourMUBs.PRM.Coverage.Endpoint
