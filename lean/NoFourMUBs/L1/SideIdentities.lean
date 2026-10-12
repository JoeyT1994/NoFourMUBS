import NoFourMUBs.L1.SideBridge
import NoFourMUBs.L1.SideCheckCore
import NoFourMUBs.L1.SideCheckY0
import NoFourMUBs.L1.SideCheckY1

/-!
# Side existence: the hypotheses from the checked identities

For a *rotated* input — `s` and `t` real, `g, η, χ` the Gram invariants, `ζ` a root of the sheet
quadratic with `ζ + ζ̄ = χ`, and `P₀, P₁, P₂ ≠ 0` — every field of `SideInput.Valid` holds
(`valid_of_rotated`).  The identities come from the kernel checks `SideCheck*` through the evaluation
homomorphism `QF.val` and the bridges of `SideBridge`.
-/

open ComplexConjugate NoFourMUBs.Side NoFourMUBs.Kronecker Circ

noncomputable section

namespace NoFourMUBs.L1
namespace SideInput

open SideCircuits
variable {D : SideInput}

section
variable (h : D.Rotated)
include h

local notation "VAL" x => QF.val (C := C) D.pt D.ζ x

set_option hygiene false in
macro "hom" : tactic => `(tactic| simp only [QF.val_add (good h), QF.val_sub (good h), QF.val_mul (good h),
  QF.val_neg, QF.val_ofNat, vn h, vm h, vk h, vK h, vh h, vu h, vmu h, vnu h, vNu h, va h, vA h, vb h,
  vc h, vCb h, ve h, v2 h, v4 h, Nat.cast_ofNat] at this)

theorem e_B2 : SideCircuits.B2.eval D.pt = conj D.P2' := by
  simp only [SideCircuits.B2, SideCircuits.X, SideCircuits.S, eval_add', eval_mul', eval_sub', eval_ofNat,
    ev_s, ev_t, ev_r, P2', NoFourMUBs.Side.P2, map_add, map_mul, map_pow, Complex.conj_conj, Complex.conj_ofReal,
    h.s_real, h.t_real]
  push_cast [← Complex.mul_conj, h.s_real]; ring

theorem normP (x : Circ 4) (c : ℝ) (P : ℂ) (hx : (SideCircuits.L x).val D.pt D.ζ = 0)
    (hxe : x.eval D.pt = P * conj P - ((D.g : ℂ) ^ 2 + c * D.χ + c ^ 2 * D.η)) :
    Complex.normSq P = D.g ^ 2 + c * D.χ + c ^ 2 * D.η := by
  rw [val_L, hxe, Complex.mul_conj] at hx
  exact_mod_cast sub_eq_zero.1 hx

/-- **The hypotheses of the construction hold for a rotated strict input.** -/
theorem valid_of_rotated : D.Valid where
  g_pos := h.g_pos
  s_lt := h.s_lt
  t_lt := h.t_lt
  P0_ne := h.P0_ne
  P1_ne := h.P1_ne
  P2_ne := h.P2_ne
  P0_norm := normP h _ _ _ (QF.val_eq_zero norm0_valid) (by
    simp only [eval_sub', eval_mul', eval_add', e_P0, e_B0 h, e_g h, e_chi h, e_eta h, e_c0, norm0]; ring)
  P1_norm := normP h _ _ _ (QF.val_eq_zero norm1_valid) (by
    simp only [eval_sub', eval_mul', eval_add', e_P1 h, e_B1 h, e_g h, e_chi h, e_eta h, e_c1 h, norm1]; ring)
  P2_norm := normP h _ _ _ (QF.val_eq_zero norm2_valid) (by
    simp only [eval_sub', eval_mul', eval_add', e_P2 h, e_B2 h, e_g h, e_chi h, e_eta h, e_c2 h, norm2]; ring)
  z_norm := by
    have hg := g_ne h
    rw [dz h, map_div₀, h.conj_ζ, Complex.conj_ofReal]
    field_simp
    linear_combination (-1 : ℂ) * h.sheet
  z_sum := by
    have hg := g_ne h
    rw [dz h, map_div₀, h.conj_ζ, Complex.conj_ofReal]
    field_simp; ring
  det := by
    have := QF.val_eq_zero (ρ := D.pt) (ζ := D.ζ) detId_valid
    rw [detId] at this; hom
    linear_combination this
  I := by
    have := QF.val_eq_zero (ρ := D.pt) (ζ := D.ζ) coreI_valid
    rw [coreI] at this; hom
    linear_combination this
  II := by
    have := QF.val_eq_zero (ρ := D.pt) (ζ := D.ζ) coreII_valid
    rw [coreII] at this; hom
    linear_combination this
  III := by
    have := QF.val_eq_zero (ρ := D.pt) (ζ := D.ζ) coreIII_valid
    rw [coreIII] at this; hom
    linear_combination this
  Y0 := by
    have := QF.val_eq_zero (ρ := D.pt) (ζ := D.ζ) Y0_valid
    simp only [SideCircuits.Y0, L00, L10, L11, Dd, t3, t2, t1, u3, u2] at this; hom
    simp only [Y0Y1]
    linear_combination this
  Y1 := by
    have := QF.val_eq_zero (ρ := D.pt) (ζ := D.ζ) Y1_valid
    simp only [SideCircuits.Y1, L01, L10, L11, Dd, t3, t2, t1, u3, u2] at this; hom
    simp only [Y0Y1]
    linear_combination this

end

end SideInput
end NoFourMUBs.L1
