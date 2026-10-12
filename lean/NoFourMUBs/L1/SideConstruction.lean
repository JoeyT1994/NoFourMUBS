import NoFourMUBs.L1.SideInput
import NoFourMUBs.L1.SideConstructionCore

/-!
# Side existence: the Fourier construction

`proof/coverage/returns/F_side_existence/SIDE_EXISTENCE.md` §§4–8, from the hypotheses
`SideInput.Valid` (see `SideInput.lean`).  The construction: a square root `δ² = e` with the sign
making `d_F ≥ 0`, `ρ = (n + d_F)/2`, the lower triangular `M`, a cube root `w³ = σ² / ρ`, and
`S = M · diag(1, w̄, w) · F₃`.
-/

open ComplexConjugate NoFourMUBs.Side NoFourMUBs.L1.SideConstructionCore

noncomputable section

namespace NoFourMUBs.L1

namespace SideInput

variable (D : SideInput)

/-- `λ = (g + c z̄) / P̄` is a unit phase when `|P|² = g² + cχ + c²η` (§2, (6)–(8)). -/
lemma lam_unit {g c χ η : ℝ} {z P : ℂ} (hP : P ≠ 0)
    (hnorm : Complex.normSq P = g ^ 2 + c * χ + c ^ 2 * η) (hz : z * conj z = η)
    (hs : (g : ℂ) * (z + conj z) = χ) :
    ((g : ℂ) + c * conj z) / conj P * conj (((g : ℂ) + c * conj z) / conj P) = 1 := by
  have hPP : P * conj P = ((g ^ 2 + c * χ + c ^ 2 * η : ℝ) : ℂ) := by rw [Complex.mul_conj, hnorm]
  push_cast at hPP
  have hc : conj P ≠ 0 := (map_ne_zero _).mpr hP
  simp only [map_div₀, map_add, map_mul, Complex.conj_ofReal, Complex.conj_conj]
  field_simp
  linear_combination (c : ℂ) * hs + (c : ℂ) ^ 2 * hz - hPP

/-- **Side existence** (`SIDE_EXISTENCE.md` §§4–8): a normalised phase side `(1; x; y)` with Gram data
`(s, t, r)`, signature `ζ`, row products `u`, `v` and permanent part `π`. -/
theorem exists_side (hD : D.Valid) :
    ∃ x y : Fin 3 → ℂ, (∀ j, Complex.normSq (x j) = 1) ∧ (∀ j, Complex.normSq (y j) = 1) ∧
      sS x = D.s ∧ sS y = D.t ∧ rS x y = D.r ∧ TS x y = D.ζ ∧
      uS x = D.u ∧ uS y = D.v ∧ piS x y = D.pi := by
  obtain ⟨g_pos, s_lt, t_lt, P0_ne, P1_ne, P2_ne, P0_norm, P1_norm, P2_norm, z_norm, z_sum, hdet,
    hI, hII, hIII, hY0, hY1⟩ := hD
  have hg0 : (D.g : ℂ) ≠ 0 := by exact_mod_cast g_pos.ne'
  -- the unit phases `λⱼ`, `u`, `v`
  have L0 : D.lam0 * conj D.lam0 = 1 := lam_unit P0_ne P0_norm z_norm z_sum
  have L1 : D.lam1 * conj D.lam1 = 1 := lam_unit P1_ne P1_norm z_norm z_sum
  have L2 : D.lam2 * conj D.lam2 = 1 := lam_unit P2_ne P2_norm z_norm z_sum
  have hu : D.u * conj D.u = 1 := by
    simp only [SideInput.u, map_mul, Complex.conj_conj]
    linear_combination (D.lam1 * conj D.lam1) * L0 + L1
  -- the real quantities `n, m, h`
  have hnD : D.n = ((1 - Complex.normSq D.s / 9 : ℝ) : ℂ) := by
    simp only [SideInput.n, SideInput.mu, map_div₀, map_ofNat]; push_cast
    rw [← Complex.mul_conj]; ring
  have hmD : D.m = ((1 - Complex.normSq D.t / 9 : ℝ) : ℂ) := by
    simp only [SideInput.m, SideInput.nu, map_div₀, map_ofNat]; push_cast
    rw [← Complex.mul_conj]; ring
  have hhD : D.h = ((D.g / 27 : ℝ) : ℂ) := by simp only [SideInput.h]; push_cast; ring
  have he : D.e * conj D.e = D.h ^ 2 := by
    have hhc : conj D.h = D.h := by rw [hhD, Complex.conj_ofReal]
    simp only [SideInput.e, map_mul, Complex.conj_conj, hhc]
    linear_combination D.h ^ 2 * (D.lam1 * conj D.lam1 * D.lam2 * conj D.lam2) * L0 +
      D.h ^ 2 * (D.lam2 * conj D.lam2) * L1 + D.h ^ 2 * L2
  obtain ⟨x, y, hx, hy, hsx, hsy, hrxy, hux, hpi, hh2⟩ :=
    construct D.mu D.nu D.k D.u D.e D.alpha D.beta D.gamma D.n D.m D.h _ _ hnD hhD
      (by have := s_lt; linarith) (by positivity) rfl rfl hdet hu rfl he hI hII hIII hY0 hY1
  have hsx' : sS x = D.s := by rw [hsx]; simp only [SideInput.mu]; ring
  have hsy' : sS y = D.t := by rw [hsy]; simp only [SideInput.nu]; ring
  have hrxy' : rS x y = D.r := by rw [hrxy]; simp only [SideInput.k]; ring
  have hpi' : piS x y = D.pi := by rw [hpi]; simp only [SideInput.gamma]; ring
  -- the second row product, from the universal side identity (37)
  have huy : uS y = D.v := by
    obtain ⟨hid, -, -, -⟩ := side_identities hx hy
    rw [hsx', hsy', hrxy', hpi', hux] at hid
    change hS x y ^ 2 = D.u * uS y * (D.c0 : ℂ) * conj D.pi - D.u * uS y * conj D.P0' at hid
    have hlam : D.lam0 * conj D.P0' = (D.g : ℂ) + D.c0 * conj D.z := by
      simp only [SideInput.lam0]; exact div_mul_cancel₀ _ ((map_ne_zero _).mpr P0_ne)
    have hPi : conj D.pi = conj D.z * conj D.lam0 := by simp only [SideInput.pi, map_mul]
    have he27 : D.e = (D.g : ℂ) / 27 * D.lam0 * conj D.lam1 * conj D.lam2 := by
      simp only [SideInput.e, SideInput.h]
    have hu' : D.u = D.lam0 * conj D.lam1 := rfl
    have hv' : D.v = D.lam0 * conj D.lam2 := rfl
    have key : (D.g : ℂ) * D.u * (uS y - D.v) = 0 := by
      linear_combination (-D.lam0) * hh2 + D.lam0 * hid
        - D.g * D.lam0 * conj D.lam2 * hu' - D.g * D.u * hv' + 27 * D.lam0 * he27
        + D.u * uS y * D.c0 * conj D.z * L0 + D.u * uS y * D.c0 * D.lam0 * hPi - D.u * uS y * hlam
    have hu0 : D.u ≠ 0 := by rintro h0; rw [h0, zero_mul] at hu; exact zero_ne_one hu
    exact sub_eq_zero.mp (cancel (mul_ne_zero hg0 hu0) key)
  refine ⟨x, y, hx, hy, hsx', hsy', hrxy', ?_, hux, huy, hpi'⟩
  -- the signature (38)–(39)
  have hz : (D.g : ℂ) * D.z = D.ζ := by simp only [SideInput.z]; field_simp
  simp only [TS, hpi', hh2, hux, huy]
  simp only [SideInput.pi, SideInput.e, SideInput.h, SideInput.u, SideInput.v, map_mul,
    Complex.conj_conj]
  linear_combination (D.g * D.z * (D.lam0 * conj D.lam0 + 1) * (D.lam1 * conj D.lam1) *
    (D.lam2 * conj D.lam2)) * L0 + (D.g * D.z * (D.lam2 * conj D.lam2)) * L1 + (D.g * D.z) * L2 + hz

end SideInput

end NoFourMUBs.L1
