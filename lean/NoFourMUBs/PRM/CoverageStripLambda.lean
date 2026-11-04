import NoFourMUBs.PRM.CoverageStripNewton

/-!
# The `λ`-substitution on a critical half (`CRITICAL_STRIP_CLASSIFICATION.md` (1))

For a nonsingular unit side `(1; x; y)` whose signature is real, `T = g z`, and whose moment
denominators `L_j = g + c_j z` are nonzero, the `λ`-identities of `SIDE_FIBER.md` §1
(`Side.side_identities`, `Side.lam_eq`) give `λ_j = P_j / L_j`, `λ̄_j = P̄_j / L_j` and

  `u = λ₀λ̄₁, v = λ₀λ̄₂, w = λ₂λ̄₁, U = λ̄₀λ₁, V = λ̄₀λ₂, W = λ₁λ̄₂, π = zλ₀, Π = zλ̄₀,`
  `uΠ = zλ̄₁, vΠ = zλ̄₂, π/u = zλ₁, π/v = zλ₂`

(`halfDataOf_eq_lamData`).  So every moment of the half is a rational function of `s, t, r, z, g`
(`half_moment`).
-/

open ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripMoments

open Side

/-- The moment denominators `L₀, L₁, L₂ = g + (9 − |r|²) z, g + (9 − |t|²) z, g + (9 − |s|²) z`. -/
def lamL (s t r : ℂ) (z g : ℝ) (j : Fin 3) : ℝ :=
  ![g + (9 - Complex.normSq r) * z, g + (9 - Complex.normSq t) * z, g + (9 - Complex.normSq s) * z] j

/-- The eighteen symbols of a critical half as functions of `s, t, r, z, g` (the paper's `side`):
`λ_j = P_j / L_j`, `λ̄_j = P̄_j / L_j`. -/
def lamData (s t r : ℂ) (z g : ℝ) : HalfData :=
  let la := P0 s t r / (lamL s t r z g 0 : ℂ)
  let lb := P1 s t r / (lamL s t r z g 1 : ℂ)
  let lc := P2 s t r / (lamL s t r z g 2 : ℂ)
  let ba := conj (P0 s t r) / (lamL s t r z g 0 : ℂ)
  let bb := conj (P1 s t r) / (lamL s t r z g 1 : ℂ)
  let bc := conj (P2 s t r) / (lamL s t r z g 2 : ℂ)
  ⟨s, conj s, t, conj t, r, conj r, la * bb, la * bc, lc * bb, lb * ba, lc * ba, lb * bc, la * z, ba * z,
    bb * z, bc * z, lb * z, lc * z⟩

/-- `λ = P / L` from `λ P̄ = L` (`L` real, nonzero) and `|λ| = 1`. -/
theorem lam_of {lam P : ℂ} {L : ℝ} (hl : lam * conj lam = 1) (hL : (L : ℂ) ≠ 0)
    (h : lam * conj P = L) : lam = P / L ∧ conj lam = conj P / L := by
  have h' : conj lam * P = L := by
    have := congrArg conj h; rwa [map_mul, Complex.conj_conj, Complex.conj_ofReal] at this
  have hl' : conj lam * lam = 1 := by rw [mul_comm]; exact hl
  constructor
  · rw [eq_div_iff hL]; linear_combination (-lam) * h' + P * hl
  · rw [eq_div_iff hL]; linear_combination (-conj lam) * h + conj P * hl'

/-- **The `λ`-substitution.** -/
theorem halfDataOf_eq_lamData {x y : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) (hh : hS x y ≠ 0) {z : ℝ}
    (hT : TS x y = ((gS (sS x) (sS y) (rS x y) * z : ℝ) : ℂ))
    (hL : ∀ j, lamL (sS x) (sS y) (rS x y) z (gS (sS x) (sS y) (rS x y)) j ≠ 0) :
    halfDataOf x y = lamData (sS x) (sS y) (rS x y) z (gS (sS x) (sS y) (rS x y)) := by
  obtain ⟨I0, I1, I2, G⟩ := side_identities hx hy
  have cx : ∀ j, conj (x j) = (x j)⁻¹ := fun j => conj_eq_inv (hx j)
  have cy : ∀ j, conj (y j) = (y j)⁻¹ := fun j => conj_eq_inv (hy j)
  have uu : uS x * conj (uS x) = 1 := by
    rw [Complex.mul_conj]; simp [uS, Complex.normSq_mul, hx]
  have vv : uS y * conj (uS y) = 1 := by
    rw [Complex.mul_conj]; simp [uS, Complex.normSq_mul, hy]
  have gC : hS x y * conj (hS x y) = (gS (sS x) (sS y) (rS x y) : ℂ) := by
    rw [Complex.mul_conj]; exact G
  have hg0 : (gS (sS x) (sS y) (rS x y) : ℂ) ≠ 0 := by
    rw [← gC]; exact mul_ne_zero hh ((map_ne_zero _).2 hh)
  have hq : (-piS x y * hS x y ^ 2 * conj (uS x) * conj (uS y)) / (hS x y * conj (hS x y)) =
      (z : ℂ) := by
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
  have unit : ∀ a : ℂ, a * conj a = 1 → (-a * conj (hS x y) / hS x y) * conj (-a * conj (hS x y) / hS x y) = 1 := by
    intro a ha
    have hc : conj (hS x y) ≠ 0 := (map_ne_zero _).2 hh
    rw [map_div₀, map_mul, map_neg, Complex.conj_conj, div_mul_div_comm,
      div_eq_one_iff_eq (mul_ne_zero hh hc)]
    linear_combination (hS x y * conj (hS x y)) * ha
  have e0 : l0 * conj l0 = 1 := unit (uS x * uS y) (by
    rw [map_mul]; linear_combination (uS y * conj (uS y)) * uu + vv)
  have e1 : l1 * conj l1 = 1 := unit (uS y) vv
  have e2 : l2 * conj l2 = 1 := unit (uS x) uu
  have hL0 : ((lamL (sS x) (sS y) (rS x y) z (gS (sS x) (sS y) (rS x y)) 0 : ℝ) : ℂ) ≠ 0 := by
    exact_mod_cast hL 0
  have hL1 : ((lamL (sS x) (sS y) (rS x y) z (gS (sS x) (sS y) (rS x y)) 1 : ℝ) : ℂ) ≠ 0 := by
    exact_mod_cast hL 1
  have hL2 : ((lamL (sS x) (sS y) (rS x y) z (gS (sS x) (sS y) (rS x y)) 2 : ℝ) : ℂ) ≠ 0 := by
    exact_mod_cast hL 2
  have c0 : l0 * conj (P0 (sS x) (sS y) (rS x y)) =
      ((lamL (sS x) (sS y) (rS x y) z (gS (sS x) (sS y) (rS x y)) 0 : ℝ) : ℂ) := by
    rw [L0]; simp [lamL, cR]
  have c1 : l1 * conj (P1 (sS x) (sS y) (rS x y)) =
      ((lamL (sS x) (sS y) (rS x y) z (gS (sS x) (sS y) (rS x y)) 1 : ℝ) : ℂ) := by
    rw [L1]; simp [lamL, cR]
  have c2 : l2 * conj (P2 (sS x) (sS y) (rS x y)) =
      ((lamL (sS x) (sS y) (rS x y) z (gS (sS x) (sS y) (rS x y)) 2 : ℝ) : ℂ) := by
    rw [L2]; simp [lamL, cR]
  obtain ⟨a0, b0⟩ := lam_of e0 hL0 c0
  obtain ⟨a1, b1⟩ := lam_of e1 hL1 c1
  obtain ⟨a2, b2⟩ := lam_of e2 hL2 c2
  have hl01 : l0 = uS x * l1 := by rw [hl0, hl1]; ring
  have hl02 : l0 = uS y * l2 := by rw [hl0, hl2]; ring
  have hu' : uS x = l0 * conj l1 := by rw [hl01]; linear_combination (-uS x) * e1
  have hv' : uS y = l0 * conj l2 := by rw [hl02]; linear_combination (-uS y) * e2
  have hPI : piS (fun k => (x k)⁻¹) (fun k => (y k)⁻¹) = conj (piS x y) := by
    simp only [piS, map_add, map_mul, cx, cy]
  have nl1 : conj l1 ≠ 0 := fun h0 => by rw [h0, mul_zero] at e1; exact zero_ne_one e1
  have nl2 : conj l2 ≠ 0 := fun h0 => by rw [h0, mul_zero] at e2; exact zero_ne_one e2
  have nl0 : l0 ≠ 0 := fun h0 => by rw [h0, zero_mul] at e0; exact zero_ne_one e0
  have nu : uS x ≠ 0 := fun h0 => by rw [h0, zero_mul] at uu; exact zero_ne_one uu
  have nv : uS y ≠ 0 := fun h0 => by rw [h0, zero_mul] at vv; exact zero_ne_one vv
  have e1' : conj l1 * l1 = 1 := by rw [mul_comm]; exact e1
  have e2' : conj l2 * l2 = 1 := by rw [mul_comm]; exact e2
  have e0' : conj l0 * l0 = 1 := by rw [mul_comm]; exact e0
  ext
  · rfl
  · simp only [halfDataOf, lamData, sS, map_add, cx]
  · rfl
  · simp only [halfDataOf, lamData, sS, map_add, cy]
  · simp only [halfDataOf, lamData, rS, cx, div_eq_mul_inv]; try ring
  · simp only [halfDataOf, lamData, rS, map_add, map_mul, Complex.conj_conj, cy, div_eq_mul_inv]; try ring
  · simp only [halfDataOf, lamData]; rw [← a0, ← b1]; exact hu'
  · simp only [halfDataOf, lamData]; rw [← a0, ← b2]; exact hv'
  · simp only [halfDataOf, lamData]; rw [← a2, ← b1, div_eq_iff nv, hu', hv']
    linear_combination (-(l0 * conj l1)) * e2
  · simp only [halfDataOf, lamData]; rw [← a1, ← b0]
    apply inv_eq_of_mul_eq_one_right; rw [hu']
    linear_combination (conj l1 * l1) * e0 + e1'
  · simp only [halfDataOf, lamData]; rw [← a2, ← b0]
    apply inv_eq_of_mul_eq_one_right; rw [hv']
    linear_combination (conj l2 * l2) * e0 + e2'
  · simp only [halfDataOf, lamData]; rw [← a1, ← b2, div_eq_iff nu, hu', hv']
    linear_combination (-(l0 * conj l2)) * e1
  · simp only [halfDataOf, lamData]; rw [← a0, hpi]; ring
  · simp only [halfDataOf, lamData]; rw [← b0, hPI, hpi, map_mul, Complex.conj_ofReal]; ring
  · simp only [halfDataOf, lamData]; rw [← b1, hPI, hpi, hu', map_mul, Complex.conj_ofReal]
    linear_combination (conj l1 * (z : ℂ)) * e0
  · simp only [halfDataOf, lamData]; rw [← b2, hPI, hpi, hv', map_mul, Complex.conj_ofReal]
    linear_combination (conj l2 * (z : ℂ)) * e0
  · simp only [halfDataOf, lamData]; rw [← a1, hpi, div_eq_iff nu, hu']
    linear_combination (-((z : ℂ) * l0)) * e1
  · simp only [halfDataOf, lamData]; rw [← a2, hpi, div_eq_iff nv, hv']
    linear_combination (-((z : ℂ) * l0)) * e2

end NoFourMUBs.PRM.Coverage.StripMoments

namespace NoFourMUBs.PRM.Coverage.StripId

open StripMoments Side

/-- `lamData` is `fData` at the conjugates, moduli and `λ`-denominators. -/
theorem lamData_eq_fData (s t r : ℂ) (z g : ℝ) :
    lamData s t r z g = fData s (conj s) t (conj t) r (conj r) (Complex.normSq s) (Complex.normSq t)
      (Complex.normSq r) (lamL s t r z g 0) (lamL s t r z g 1) (lamL s t r z g 2) z := by
  simp only [lamData, fData, P0, P1, P2, map_add, map_mul, map_pow, Complex.conj_conj,
    Complex.conj_ofReal]
  push_cast
  rfl

end NoFourMUBs.PRM.Coverage.StripId
