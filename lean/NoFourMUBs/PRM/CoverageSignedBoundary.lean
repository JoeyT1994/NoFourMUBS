import NoFourMUBs.PRM.CoverageSignedMoments
import NoFourMUBs.PRM.CoverageStripReduce

/-!
# The signed sum forces `Im w = 0` or a repeated modulus, poles included (return K, `REPORT.md` §3)

At a corner `B = triBlock H 0 l` of the top strip with `J > 0`, whose two halves are nonsingular and
critical, and with every top corner critical:

* on each half, the `λ`-identities in cleared form `L_j λ_j = P_j` (no division by `L_j`) and the three
  moments `M(1,1) = st − zλ₀`, `M(2,−1) = s r̄ − z λ̄₁`, `M(−1,2) = t r − z λ̄₂` (`half_cleared`,
  `block_cleared`);
* adding the two halves, (5): `L_{0,+}L_{0,−} a = c_k A`, `L_{1,+}L_{1,−} b = c_k B`,
  `L_{2,+}L_{2,−} c = c_k C` with `c_k = 16k(3k² + 1)/h³` (`paired`);
* the universal identity (6) `Ā B C − A B̄ C̄ = (1 + k²p)(s r t̄ − s̄ r̄ t)(X − Y)(Y − Z)(Z − X)`
  (`universal`, by `ring`);
* with (3) (`signed_zero`) this gives (7): `Im w = 0` or two of `X, Y, Z` agree (`signed_boundary`),
  where `w = s̄ r̄ t` (`blockWc`).  No `L_j ≠ 0` is assumed.
-/

open Matrix Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage

open StripMoments Side Quartic

/-! ### One half, cleared -/

/-- **The cleared `λ`-identities and three moments of one critical half.** -/
theorem half_cleared {x y : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) (hh : hS x y ≠ 0) {z : ℝ}
    (hT : TS x y = ((Side.gS (sS x) (sS y) (rS x y) * z : ℝ) : ℂ)) :
    ∃ l : Fin 3 → ℂ,
      ((lamL (sS x) (sS y) (rS x y) z (Side.gS (sS x) (sS y) (rS x y)) 0 : ℝ) : ℂ) * l 0 =
          P0 (sS x) (sS y) (rS x y) ∧
      ((lamL (sS x) (sS y) (rS x y) z (Side.gS (sS x) (sS y) (rS x y)) 1 : ℝ) : ℂ) * l 1 =
          P1 (sS x) (sS y) (rS x y) ∧
      ((lamL (sS x) (sS y) (rS x y) z (Side.gS (sS x) (sS y) (rS x y)) 2 : ℝ) : ℂ) * l 2 =
          P2 (sS x) (sS y) (rS x y) ∧
      ∑ k, x k ^ (1 : ℤ) * y k ^ (1 : ℤ) = sS x * sS y - z * l 0 ∧
      ∑ k, x k ^ (2 : ℤ) * y k ^ (-1 : ℤ) = sS x * conj (rS x y) - z * conj (l 1) ∧
      ∑ k, x k ^ (-1 : ℤ) * y k ^ (2 : ℤ) = sS y * rS x y - z * conj (l 2) := by
  obtain ⟨I0, I1, I2, G⟩ := side_identities hx hy
  have cx : ∀ j, conj (x j) = (x j)⁻¹ := fun j => conj_eq_inv (hx j)
  have cy : ∀ j, conj (y j) = (y j)⁻¹ := fun j => conj_eq_inv (hy j)
  have nx : ∀ j, x j ≠ 0 := fun j => ne_zero_of_normSq (hx j)
  have ny : ∀ j, y j ≠ 0 := fun j => ne_zero_of_normSq (hy j)
  have uu : uS x * conj (uS x) = 1 := by
    rw [Complex.mul_conj]; simp [uS, Complex.normSq_mul, hx]
  have vv : uS y * conj (uS y) = 1 := by
    rw [Complex.mul_conj]; simp [uS, Complex.normSq_mul, hy]
  have gC : hS x y * conj (hS x y) = (Side.gS (sS x) (sS y) (rS x y) : ℂ) := by
    rw [Complex.mul_conj]; exact G
  have hq : (-piS x y * hS x y ^ 2 * conj (uS x) * conj (uS y)) / (hS x y * conj (hS x y)) =
      (z : ℂ) := by
    have hg0 : (Side.gS (sS x) (sS y) (rS x y) : ℂ) ≠ 0 := by
      rw [← gC]; exact mul_ne_zero hh ((map_ne_zero _).2 hh)
    rw [show -piS x y * hS x y ^ 2 * conj (uS x) * conj (uS y) = TS x y from rfl, hT, gC]
    push_cast; field_simp
  have hTz : conj ((-piS x y * hS x y ^ 2 * conj (uS x) * conj (uS y)) / (hS x y * conj (hS x y))) =
      (z : ℂ) := by rw [hq, Complex.conj_ofReal]
  have L0 := lam_eq hh (uS x * uS y) I0
  have L1 := lam_eq hh (uS y) I1
  have L2 := lam_eq hh (uS x) I2
  rw [hTz, gC] at L0 L1 L2
  have hpi := pi_eq (π := piS x y) hh uu vv
  rw [hq] at hpi
  set l0 := -(uS x * uS y) * conj (hS x y) / hS x y with hl0
  set l1 := -uS y * conj (hS x y) / hS x y with hl1
  set l2 := -uS x * conj (hS x y) / hS x y with hl2
  have unit : ∀ a : ℂ, a * conj a = 1 →
      (-a * conj (hS x y) / hS x y) * conj (-a * conj (hS x y) / hS x y) = 1 := by
    intro a ha
    have hc : conj (hS x y) ≠ 0 := (map_ne_zero _).2 hh
    rw [map_div₀, map_mul, map_neg, Complex.conj_conj, div_mul_div_comm,
      div_eq_one_iff_eq (mul_ne_zero hh hc)]
    linear_combination (hS x y * conj (hS x y)) * ha
  have e0 : l0 * conj l0 = 1 := unit (uS x * uS y) (by
    rw [map_mul]; linear_combination (uS y * conj (uS y)) * uu + vv)
  have e1 : l1 * conj l1 = 1 := unit (uS y) vv
  have e2 : l2 * conj l2 = 1 := unit (uS x) uu
  set g := Side.gS (sS x) (sS y) (rS x y)
  -- `l P̄ = L` gives `L l = P`
  have clear : ∀ {l P : ℂ} {L : ℝ}, l * conj l = 1 → l * conj P = L → (L : ℂ) * l = P := by
    intro l P L hl h
    have h' : conj l * P = L := by
      have := congrArg conj h; rwa [map_mul, Complex.conj_conj, Complex.conj_ofReal] at this
    rw [← h']; linear_combination P * hl
  have c0 : l0 * conj (P0 (sS x) (sS y) (rS x y)) = ((lamL (sS x) (sS y) (rS x y) z g 0 : ℝ) : ℂ) := by
    rw [L0]; simp [lamL, cR]
  have c1 : l1 * conj (P1 (sS x) (sS y) (rS x y)) = ((lamL (sS x) (sS y) (rS x y) z g 1 : ℝ) : ℂ) := by
    rw [L1]; simp [lamL, cR]
  have c2 : l2 * conj (P2 (sS x) (sS y) (rS x y)) = ((lamL (sS x) (sS y) (rS x y) z g 2 : ℝ) : ℂ) := by
    rw [L2]; simp [lamL, cR]
  have hl01 : l0 = uS x * l1 := by rw [hl0, hl1]; ring
  have hl02 : l0 = uS y * l2 := by rw [hl0, hl2]; ring
  have hu' : uS x = l0 * conj l1 := by rw [hl01]; linear_combination (-uS x) * e1
  have hv' : uS y = l0 * conj l2 := by rw [hl02]; linear_combination (-uS y) * e2
  have hpi' : piS x y = z * l0 := by rw [hpi]
  have cpi : conj (piS x y) = z * conj l0 := by rw [hpi', map_mul, Complex.conj_ofReal]
  refine ⟨![l0, l1, l2], clear e0 c0, clear e1 c1, clear e2 c2, ?_, ?_, ?_⟩
  · simp only [Matrix.cons_val_zero]
    rw [← hpi']
    simp only [Fin.sum_univ_three, zpow_one, sS, piS]; ring
  · have n21 : ∑ k, x k ^ (2 : ℤ) * y k ^ (-1 : ℤ) =
        sS x * conj (rS x y) - uS x * conj (piS x y) := by
      have a0 := nx 0; have a1 := nx 1; have a2 := nx 2
      have b0 := ny 0; have b1 := ny 1; have b2 := ny 2
      simp only [Fin.sum_univ_three, sS, rS, piS, uS, map_add, map_mul, Complex.conj_conj, cx, cy,
        map_inv₀, inv_inv, _root_.zpow_neg, zpow_one, zpow_two]
      field_simp; ring
    rw [n21, cpi, hu']
    simp only [Matrix.cons_val_one, Matrix.cons_val_zero]
    linear_combination (-(z : ℂ) * conj l1) * e0
  · have n12 : ∑ k, x k ^ (-1 : ℤ) * y k ^ (2 : ℤ) = sS y * rS x y - uS y * conj (piS x y) := by
      have a0 := nx 0; have a1 := nx 1; have a2 := nx 2
      have b0 := ny 0; have b1 := ny 1; have b2 := ny 2
      simp only [Fin.sum_univ_three, sS, rS, piS, uS, map_add, map_mul, Complex.conj_conj, cx, cy,
        map_inv₀, inv_inv, _root_.zpow_neg, zpow_one, zpow_two]
      field_simp; ring
    rw [n12, cpi, hv']
    simp only [Matrix.cons_val_two, Matrix.cons_val_one, Matrix.cons_val_zero, Matrix.head_cons,
      Matrix.tail_cons]
    linear_combination (-(z : ℂ) * conj l2) * e0

/-- **One half of the top strip, cleared.** -/
theorem block_cleared {H : Mat6} (hH : Hadamard6.IsHadamard H) (l : Fin 20)
    (hIm : (Step2.sideSignature (triBlock H 0 l)).im = 0) (hd : (triBlock H 0 l).det ≠ 0) :
    ∃ lam : Fin 3 → ℂ, (∀ j, (blockL (triBlock H 0 l) j : ℂ) * lam j = blockPj (triBlock H 0 l) j) ∧
      ∑ k : Fin 3, xsH H (tri l k) ^ (1 : ℤ) * ysH H (tri l k) ^ (1 : ℤ) =
        blockS (triBlock H 0 l) * blockT (triBlock H 0 l) - blockTheta (triBlock H 0 l) * lam 0 ∧
      ∑ k : Fin 3, xsH H (tri l k) ^ (2 : ℤ) * ysH H (tri l k) ^ (-1 : ℤ) =
        blockS (triBlock H 0 l) * conj (blockR (triBlock H 0 l)) -
          blockTheta (triBlock H 0 l) * conj (lam 1) ∧
      ∑ k : Fin 3, xsH H (tri l k) ^ (-1 : ℤ) * ysH H (tri l k) ^ (2 : ℤ) =
        blockT (triBlock H 0 l) * blockR (triBlock H 0 l) -
          blockTheta (triBlock H 0 l) * conj (lam 2) := by
  have hB := triBlock_unit hH 0 l
  set B := triBlock H 0 l with hBdef
  have ex : ∀ k, dephase B 1 k = xsH H (tri l k) := by
    intro k; simp [hBdef, dephase, triBlock, xsH, tri0_row]
  have ey : ∀ k, dephase B 2 k = ysH H (tri l k) := by
    intro k; simp [hBdef, dephase, triBlock, ysH, tri0_row]
  obtain ⟨lam, h0, h1, h2, m11, m21, m12⟩ := half_cleared (x := dephase B 1) (y := dephase B 2)
    (z := blockTheta B) (dephase_unit hB 1) (dephase_unit hB 2) (dephase_hS_ne hB hd)
    (by
      rw [← Step2.sig_rows _ (dephase_row0 hB), dephase_sig hB, dephase_sS1, dephase_sS2, dephase_rS hB]
      obtain ⟨-, -, hre⟩ := critical_data hB hd hIm
      apply Complex.ext
      · rw [hre, Complex.ofReal_re]; rfl
      · rw [hIm, Complex.ofReal_im])
  simp only [dephase_sS1, dephase_sS2, dephase_rS hB] at h0 h1 h2 m11 m21 m12
  simp only [ex, ey] at m11 m21 m12
  have hL : ∀ j, lamL (blockS B) (blockT B) (blockR B) (blockTheta B)
      (Side.gS (blockS B) (blockT B) (blockR B)) j = blockL B j := lamL_block B
  rw [hL] at h0 h1 h2
  refine ⟨lam, fun j => ?_, m11, m21, m12⟩
  fin_cases j
  · exact h0
  · exact h1
  · exact h2

/-! ### The paired equations (5) and the universal identity (6) -/

/-- `c_k = 16k(3k² + 1)/h³`. -/
def ck (k : ℝ) : ℝ := 16 * k * (3 * k ^ 2 + 1) / hk k ^ 3

/-- **(5)**, one index: `L₊ L₋ (2u − z₊ λ − z₋ λ') = c_k (v − k(p − m) u)`. -/
theorem paired {k m : ℝ} {u v l l' : ℂ}
    (hp : ((Quartic.gS 1 k + (9 - m) * zS 1 k : ℝ) : ℂ) * l = (3 - m) * u + v)
    (hm : ((Quartic.gS (-1) k + (9 - m) * zS (-1) k : ℝ) : ℂ) * l' = (3 - m) * u - v) :
    ((Quartic.gS 1 k + (9 - m) * zS 1 k : ℝ) : ℂ) * ((Quartic.gS (-1) k + (9 - m) * zS (-1) k : ℝ) : ℂ) *
        (2 * u - (zS 1 k : ℂ) * l - (zS (-1) k : ℂ) * l') =
      (ck k : ℂ) * (v - k * (pk k - m) * u) := by
  have hh : ((hk k : ℝ) : ℂ) ≠ 0 := by exact_mod_cast (hk_pos k).ne'
  have R : 2 * u * ((Quartic.gS 1 k + (9 - m) * zS 1 k : ℝ) : ℂ) * ((Quartic.gS (-1) k + (9 - m) * zS (-1) k : ℝ) : ℂ) -
      (zS 1 k : ℂ) * ((Quartic.gS (-1) k + (9 - m) * zS (-1) k : ℝ) : ℂ) * ((3 - m) * u + v) -
      (zS (-1) k : ℂ) * ((Quartic.gS 1 k + (9 - m) * zS 1 k : ℝ) : ℂ) * ((3 - m) * u - v) =
      (ck k : ℂ) * (v - k * (pk k - m) * u) := by
    simp only [Quartic.gS, zS, ck, pk, qk, Jk] at hh ⊢
    push_cast at hh ⊢
    field_simp
    simp only [hk]; push_cast; ring
  linear_combination (-(zS 1 k : ℂ) * ((Quartic.gS (-1) k + (9 - m) * zS (-1) k : ℝ) : ℂ)) * hp +
    (-(zS (-1) k : ℂ) * ((Quartic.gS 1 k + (9 - m) * zS 1 k : ℝ) : ℂ)) * hm + R

/-- **(6)**, the universal identity, in independent variables (`S, T, R` for `s̄, t̄, r̄`). -/
theorem universal (s S t T r R k : ℂ) :
    (R * S ^ 2 + r * T ^ 2 - k * (s * S + t * T) * S * T) *
        (T * s ^ 2 + R ^ 2 * t - k * (s * S + r * R) * s * R) *
        (S * t ^ 2 + r ^ 2 * s - k * (t * T + r * R) * t * r) -
      (r * s ^ 2 + R * t ^ 2 - k * (s * S + t * T) * s * t) *
        (t * S ^ 2 + r ^ 2 * T - k * (s * S + r * R) * S * r) *
        (s * T ^ 2 + R ^ 2 * S - k * (t * T + r * R) * T * R) =
      (1 + k ^ 2 * (s * S + t * T + r * R)) * (s * r * T - S * R * t) * (s * S - t * T) *
        (t * T - r * R) * (r * R - s * S) := by
  ring

/-! ### The strip -/

theorem momentOf_neg {xs ys : Fin 6 → ℂ} (hx : ∀ u, Complex.normSq (xs u) = 1)
    (hy : ∀ u, Complex.normSq (ys u) = 1) (i j : ℤ) :
    momentOf xs ys (-i, -j) = conj (momentOf xs ys (i, j)) := by
  simp only [momentOf, map_sum, map_mul, map_zpow₀, conj_eq_inv (hx _), conj_eq_inv (hy _),
    _root_.inv_zpow']

theorem momentOf_halves (H : Mat6) (l : Fin 20) (p : ℤ × ℤ) :
    momentOf (xsH H) (ysH H) p = ∑ k : Fin 3, xsH H (tri l k) ^ p.1 * ysH H (tri l k) ^ p.2 +
      ∑ k : Fin 3, xsH H (tri (19 - l) k) ^ p.1 * ysH H (tri (19 - l) k) ^ p.2 :=
  (sum_tri_compl l (fun u => xsH H u ^ p.1 * ysH H u ^ p.2)).symm

/-- The `L`-factor `g_σ + (9 − m) z_σ` (a real number). -/
def lf (σ k m : ℝ) : ℝ := Quartic.gS σ k + (9 - m) * zS σ k

/-- **(7), the algebra**: the cleared equations of the two halves (Gram data `s, t, r` and
`−s, −t, −r`), the moments `a, b, c` they give, and (3) `ā b c − a b̄ c̄ = 0` force `Im w = 0` or a
repeated modulus. -/
theorem boundary_alg {s t r : ℂ} {k : ℝ} (hk : 0 < k)
    (hp : Complex.normSq s + Complex.normSq t + Complex.normSq r = pk k) (la lb : Fin 3 → ℂ)
    (ha0 : (lf 1 k (Complex.normSq r) : ℂ) * la 0 = P0 s t r)
    (ha1 : (lf 1 k (Complex.normSq t) : ℂ) * la 1 = P1 s t r)
    (ha2 : (lf 1 k (Complex.normSq s) : ℂ) * la 2 = P2 s t r)
    (hb0 : (lf (-1) k (Complex.normSq r) : ℂ) * lb 0 = P0 (-s) (-t) (-r))
    (hb1 : (lf (-1) k (Complex.normSq t) : ℂ) * lb 1 = P1 (-s) (-t) (-r))
    (hb2 : (lf (-1) k (Complex.normSq s) : ℂ) * lb 2 = P2 (-s) (-t) (-r)) {a b c : ℂ}
    (ha : a = 2 * (s * t) - (zS 1 k : ℂ) * la 0 - (zS (-1) k : ℂ) * lb 0)
    (hb : b = 2 * (s * conj r) - (zS 1 k : ℂ) * conj (la 1) - (zS (-1) k : ℂ) * conj (lb 1))
    (hc : c = 2 * (t * r) - (zS 1 k : ℂ) * conj (la 2) - (zS (-1) k : ℂ) * conj (lb 2))
    (hsig : conj a * b * c - a * conj b * conj c = 0) :
    (conj s * conj r * t).im = 0 ∨
      (Complex.normSq s - Complex.normSq t) * (Complex.normSq t - Complex.normSq r) *
        (Complex.normSq r - Complex.normSq s) = 0 := by
  have hXc : ((Complex.normSq s : ℝ) : ℂ) = s * conj s := cast_normSq' s
  have hYc : ((Complex.normSq t : ℝ) : ℂ) = t * conj t := cast_normSq' t
  have hZc : ((Complex.normSq r : ℝ) : ℂ) = r * conj r := cast_normSq' r
  have conjL : ∀ {L : ℝ} {l P : ℂ}, (L : ℂ) * l = P → (L : ℂ) * conj l = conj P := by
    intro L l P h; have := congrArg conj h; rwa [map_mul, Complex.conj_ofReal] at this
  -- (5)
  have q0 := paired (k := k) (m := Complex.normSq r) (u := s * t) (v := r * s ^ 2 + conj r * t ^ 2)
    (l := la 0) (l' := lb 0)
    (by rw [show ((Quartic.gS 1 k + (9 - Complex.normSq r) * zS 1 k : ℝ) : ℂ) = lf 1 k (Complex.normSq r)
      from rfl, ha0, P0]; push_cast; ring)
    (by rw [show ((Quartic.gS (-1) k + (9 - Complex.normSq r) * zS (-1) k : ℝ) : ℂ) =
      lf (-1) k (Complex.normSq r) from rfl, hb0, P0]; push_cast [Complex.normSq_neg, map_neg]; ring)
  have q1 := paired (k := k) (m := Complex.normSq t) (u := s * conj r)
    (v := conj t * s ^ 2 + conj r ^ 2 * t) (l := conj (la 1)) (l' := conj (lb 1))
    (by rw [show ((Quartic.gS 1 k + (9 - Complex.normSq t) * zS 1 k : ℝ) : ℂ) = lf 1 k (Complex.normSq t)
      from rfl, conjL ha1, P1]
        simp only [map_add, map_mul, map_pow, Complex.conj_conj, Complex.conj_ofReal]; push_cast; ring)
    (by rw [show ((Quartic.gS (-1) k + (9 - Complex.normSq t) * zS (-1) k : ℝ) : ℂ) =
      lf (-1) k (Complex.normSq t) from rfl, conjL hb1, P1]
        simp only [map_add, map_mul, map_pow, map_neg, Complex.conj_conj, Complex.conj_ofReal,
          Complex.normSq_neg]; push_cast; ring)
  have q2 := paired (k := k) (m := Complex.normSq s) (u := t * r)
    (v := conj s * t ^ 2 + r ^ 2 * s) (l := conj (la 2)) (l' := conj (lb 2))
    (by rw [show ((Quartic.gS 1 k + (9 - Complex.normSq s) * zS 1 k : ℝ) : ℂ) = lf 1 k (Complex.normSq s)
      from rfl, conjL ha2, P2]
        simp only [map_add, map_mul, map_pow, Complex.conj_conj, Complex.conj_ofReal]; push_cast; ring)
    (by rw [show ((Quartic.gS (-1) k + (9 - Complex.normSq s) * zS (-1) k : ℝ) : ℂ) =
      lf (-1) k (Complex.normSq s) from rfl, conjL hb2, P2]
        simp only [map_add, map_mul, map_pow, map_neg, Complex.conj_conj, Complex.conj_ofReal,
          Complex.normSq_neg]; push_cast; ring)
  -- multiply (3) by the six denominators
  set Λ0 := ((Quartic.gS 1 k + (9 - Complex.normSq r) * zS 1 k : ℝ) : ℂ) *
    ((Quartic.gS (-1) k + (9 - Complex.normSq r) * zS (-1) k : ℝ) : ℂ)
  set Λ1 := ((Quartic.gS 1 k + (9 - Complex.normSq t) * zS 1 k : ℝ) : ℂ) *
    ((Quartic.gS (-1) k + (9 - Complex.normSq t) * zS (-1) k : ℝ) : ℂ)
  set Λ2 := ((Quartic.gS 1 k + (9 - Complex.normSq s) * zS 1 k : ℝ) : ℂ) *
    ((Quartic.gS (-1) k + (9 - Complex.normSq s) * zS (-1) k : ℝ) : ℂ)
  have cΛ : ∀ {a b : ℝ}, conj ((a : ℂ) * (b : ℂ)) = (a : ℂ) * (b : ℂ) := by
    intro a b; rw [map_mul, Complex.conj_ofReal, Complex.conj_ofReal]
  set A := r * s ^ 2 + conj r * t ^ 2 - (k : ℂ) * (pk k - Complex.normSq r) * (s * t) with hA
  set Bq := conj t * s ^ 2 + conj r ^ 2 * t - (k : ℂ) * (pk k - Complex.normSq t) * (s * conj r) with hBq
  set Cq := conj s * t ^ 2 + r ^ 2 * s - (k : ℂ) * (pk k - Complex.normSq s) * (t * r) with hCq
  have ea : Λ0 * a = (ck k : ℂ) * A := by rw [ha]; exact q0
  have eb : Λ1 * b = (ck k : ℂ) * Bq := by rw [hb]; exact q1
  have ec : Λ2 * c = (ck k : ℂ) * Cq := by rw [hc]; exact q2
  have cconj : ∀ {Λ c X : ℂ} {a : ℂ}, conj Λ = Λ → conj c = c → Λ * a = c * X →
      Λ * conj a = c * conj X := by
    intro Λ c X a hΛ hc h
    have := congrArg conj h; rwa [map_mul, map_mul, hΛ, hc] at this
  have hck : conj (ck k : ℂ) = ck k := Complex.conj_ofReal _
  have ea' := cconj cΛ hck ea
  have eb' := cconj cΛ hck eb
  have ec' := cconj cΛ hck ec
  have hmain : (ck k : ℂ) ^ 3 * (conj A * Bq * Cq - A * conj Bq * conj Cq) = 0 := by
    linear_combination (Λ0 * Λ1 * Λ2) * hsig - (Λ1 * b * (Λ2 * c)) * ea' -
      ((ck k : ℂ) * conj A * (Λ2 * c)) * eb - ((ck k : ℂ) * conj A * ((ck k : ℂ) * Bq)) * ec +
      (Λ1 * conj b * (Λ2 * conj c)) * ea +
      ((ck k : ℂ) * A * (Λ2 * conj c)) * eb' + ((ck k : ℂ) * A * ((ck k : ℂ) * conj Bq)) * ec'
  have hck0 : (ck k : ℂ) ≠ 0 := by
    have : 0 < ck k := by unfold ck; have := hk_pos k; positivity
    exact_mod_cast this.ne'
  have h6 : conj A * Bq * Cq - A * conj Bq * conj Cq = 0 :=
    (mul_eq_zero.1 hmain).resolve_left (pow_ne_zero 3 hck0)
  have hpXY : ((pk k : ℝ) : ℂ) = s * conj s + t * conj t + r * conj r := by
    rw [← hp]; push_cast; rw [hXc, hYc, hZc]
  -- (6)
  have e6 : conj A * Bq * Cq - A * conj Bq * conj Cq =
      (1 + (k : ℂ) ^ 2 * (s * conj s + t * conj t + r * conj r)) * (s * r * conj t - conj s * conj r * t) *
        (s * conj s - t * conj t) * (t * conj t - r * conj r) * (r * conj r - s * conj s) := by
    rw [← universal]
    simp only [hA, hBq, hCq, map_sub, map_add, map_mul, map_pow, Complex.conj_conj, Complex.conj_ofReal]
    rw [hpXY, hXc, hYc, hZc]
    ring
  rw [e6] at h6
  have hpos : (1 + (k : ℂ) ^ 2 * (s * conj s + t * conj t + r * conj r)) ≠ 0 := by
    rw [← hpXY]
    have : 0 < 1 + k ^ 2 * pk k := by
      rw [← hp]
      have := mul_nonneg (sq_nonneg k) (add_nonneg (add_nonneg (Complex.normSq_nonneg s)
        (Complex.normSq_nonneg t)) (Complex.normSq_nonneg r))
      linarith
    exact_mod_cast this.ne'
  have hw : s * r * conj t - conj s * conj r * t = conj (conj s * conj r * t) - conj s * conj r * t := by
    simp only [map_mul, Complex.conj_conj]
  rcases mul_eq_zero.1 h6 with h | h
  · rcases mul_eq_zero.1 h with h | h
    · rcases mul_eq_zero.1 h with h | h
      · rcases mul_eq_zero.1 h with h | h
        · exact absurd h hpos
        · left; rw [hw] at h; exact Complex.conj_eq_iff_im.1 (sub_eq_zero.1 h)
      · right; rw [← hXc, ← hYc] at h
        have : Complex.normSq s - Complex.normSq t = 0 := by exact_mod_cast h
        rw [this]; ring
    · right; rw [← hYc, ← hZc] at h
      have : Complex.normSq t - Complex.normSq r = 0 := by exact_mod_cast h
      rw [this]; ring
  · right; rw [← hZc, ← hXc] at h
    have : Complex.normSq r - Complex.normSq s = 0 := by exact_mod_cast h
    rw [this]; ring

/-- **(7)**: on a strip with all top corners critical, a corner with `J > 0` and nonsingular halves
has `Im w = 0` or a repeated modulus.  This includes the pole strata. -/
theorem signed_boundary {H : Mat6} (hH : Hadamard6.IsHadamard H)
    (hcrit : ∀ m : Fin 20, (Step2.sideSignature (triBlock H 0 m)).im = 0) (l : Fin 20)
    (hd : (triBlock H 0 l).det ≠ 0) (hd' : (triBlock H 0 (19 - l)).det ≠ 0)
    (hJ : 0 < blockJ (triBlock H 0 l)) :
    (blockWc (triBlock H 0 l)).im = 0 ∨
      (blockX (triBlock H 0 l) - blockY (triBlock H 0 l)) *
        (blockY (triBlock H 0 l) - blockZ (triBlock H 0 l)) *
          (blockZ (triBlock H 0 l) - blockX (triBlock H 0 l)) = 0 := by
  have hIm := hcrit l
  have hIm' := hcrit (19 - l)
  obtain ⟨h1, h2, h3, h4⟩ := halves_reduction hH l hIm hIm' hd hd'
  obtain ⟨h5, h9, hJ2, hW⟩ := CoverageSum.nonzero_J_reduction _ _ _ h3 h4 hJ.ne' h1 h2
  obtain ⟨hk0, hp, hJk, hWk⟩ := param_of_reduction h5 h9 hJ2 hW hJ
  obtain ⟨la, ha, a11, a21, a12⟩ := block_cleared hH l hIm hd
  obtain ⟨lb, hb, b11, b21, b12⟩ := block_cleared hH (19 - l) hIm' hd'
  have eS := blockS_compl hH 0 l
  have eT := blockT_compl hH 0 l
  have eR := blockR_compl hH 0 l
  have hp' := blockP_compl hH 0 l
  have hJ' := blockJ_compl hH 0 l
  have hW' := blockW_compl hH 0 l
  have eM := blockMod_compl hH 0 l
  generalize triBlock H 0 (19 - l) = B' at *
  generalize triBlock H 0 l = B at *
  generalize hk : 2 * blockJ B / (9 - blockP B) ^ 2 = k at *
  obtain ⟨hg, hz⟩ := theta_param (σ := 1) (g := blockG B) (χ := blockChi B) hk0 (Or.inl rfl)
    (by rw [blockG_eq, hp, ← hJk]; ring) (by rw [blockChi_eq, hp, ← hJk, hWk]; ring)
  obtain ⟨hg', hz'⟩ := theta_param (σ := -1) (g := blockG B') (χ := blockChi B') hk0 (Or.inr rfl)
    (by rw [blockG_eq, hp', hp, hJ', hJk]; ring) (by rw [blockChi_eq, hp', hp, hJ', hJk, hW', hWk]; ring)
  have hz2 : blockTheta B = zS 1 k := hz
  have hz2' : blockTheta B' = zS (-1) k := hz'
  have eL : ∀ j, blockL B j = lf 1 k (blockMod B j) := by
    intro j; rw [blockL, hz2, hg, blockC_eq]; rfl
  have eL' : ∀ j, blockL B' j = lf (-1) k (blockMod B j) := by
    intro j; rw [blockL, hz2', hg', blockC_eq, eM]; rfl
  have hx : ∀ u, Complex.normSq (xsH H u) = 1 := xsH_unit hH
  have hy : ∀ u, Complex.normSq (ysH H u) = 1 := ysH_unit hH
  have hsig := (signed_zero hH hcrit).1
  simp only [signedPoly] at hsig
  rw [momentOf_neg hx hy 1 1, show ((-2 : ℤ), (1 : ℤ)) = (-2, -(-1)) from rfl, momentOf_neg hx hy 2 (-1),
    show ((1 : ℤ), (-2 : ℤ)) = (-(-1), -2) from rfl, momentOf_neg hx hy (-1) 2] at hsig
  have key := boundary_alg (s := blockS B) (t := blockT B) (r := blockR B) hk0 hp la lb
    (by have h := ha 0; rw [eL 0] at h; exact h) (by have h := ha 1; rw [eL 1] at h; exact h)
    (by have h := ha 2; rw [eL 2] at h; exact h)
    (by have h := hb 0; rw [eL' 0, blockPj_zero, eS, eT, eR] at h; exact h)
    (by have h := hb 1; rw [eL' 1, blockPj_one, eS, eT, eR] at h; exact h)
    (by have h := hb 2; rw [eL' 2, blockPj_two, eS, eT, eR] at h; exact h)
    (by rw [momentOf_halves H l, a11, b11, eS, eT, hz2, hz2']; ring)
    (by rw [momentOf_halves H l, a21, b21, eS, eR, hz2, hz2', map_neg]; ring)
    (by rw [momentOf_halves H l, a12, b12, eT, eR, hz2, hz2']; ring) hsig
  rcases key with h | h
  · left; exact h
  · right; exact h

end NoFourMUBs.PRM.Coverage
