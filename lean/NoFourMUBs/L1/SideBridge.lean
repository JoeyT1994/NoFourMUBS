import NoFourMUBs.L1.SideCheckNorm
import NoFourMUBs.L1.SideInput

/-!
# Side existence: bridges from the circuits to the input quantities

For a *rotated* input — `s` and `t` real, `g, η, χ` the Gram invariants, `ζ` a root of the sheet
quadratic with `ζ + ζ̄ = χ`, and `P₀, P₁, P₂ ≠ 0` — every field of `SideInput.Valid` holds
(`valid_of_rotated`).  The identities come from the kernel checks `SideCheck*` through the evaluation
homomorphism `QF.val`, after identifying each auxiliary quantity of `SideInput` (defined through the
`λⱼ`) with its compact form in `SideCircuits` (the bridges, §3.1 of `SIDE_EXISTENCE.md`).
-/

open ComplexConjugate NoFourMUBs.Side NoFourMUBs.Kronecker Circ

noncomputable section

namespace NoFourMUBs.L1
namespace SideInput
variable (D : SideInput)

def pt : Fin 4 → ℂ := ![D.s, D.t, D.r, conj D.r]

structure Rotated : Prop where
  s_real : conj D.s = D.s
  t_real : conj D.t = D.t
  g_eq : (D.g : ℂ) = SideCircuits.g.eval D.pt
  eta_eq : (D.η : ℂ) = SideCircuits.eta.eval D.pt
  chi_eq : (D.χ : ℂ) = SideCircuits.chi.eval D.pt
  g_pos : 0 < D.g
  s_lt : Complex.normSq D.s < 9
  t_lt : Complex.normSq D.t < 9
  P0_ne : D.P0' ≠ 0
  P1_ne : D.P1' ≠ 0
  P2_ne : D.P2' ≠ 0
  sheet : D.ζ ^ 2 = D.χ * D.ζ - (D.g : ℂ) ^ 2 * D.η
  conj_ζ : conj D.ζ = D.χ - D.ζ

open SideCircuits
variable {D}

@[simp] theorem ev_s : SideCircuits.s.eval D.pt = D.s := by simp [SideCircuits.s, pt]
@[simp] theorem ev_t : SideCircuits.t.eval D.pt = D.t := by simp [SideCircuits.t, pt]
@[simp] theorem ev_r : SideCircuits.r.eval D.pt = D.r := by simp [SideCircuits.r, pt]
@[simp] theorem ev_Q : SideCircuits.Q.eval D.pt = conj D.r := by simp [SideCircuits.Q, pt]

theorem ev_P0 : D.P0' = SideCircuits.P0.eval D.pt := by
  simp [P0', NoFourMUBs.Side.P0, SideCircuits.P0, SideCircuits.Z, ← Complex.mul_conj]; ring

theorem ev_B0 (hs : conj D.s = D.s) (ht : conj D.t = D.t) : conj D.P0' = SideCircuits.B0.eval D.pt := by
  simp [P0', NoFourMUBs.Side.P0, SideCircuits.B0, SideCircuits.Z, SideCircuits.S, SideCircuits.T,
    ← Complex.mul_conj, hs, ht, map_ofNat]; ring


theorem ev_P1 (hs : conj D.s = D.s) (ht : conj D.t = D.t) : D.P1' = SideCircuits.P1.eval D.pt := by
  simp [P1', NoFourMUBs.Side.P1, SideCircuits.P1, SideCircuits.Y, SideCircuits.S, SideCircuits.T,
    ← Complex.mul_conj, hs, ht, map_ofNat]; ring

theorem ev_B1 (hs : conj D.s = D.s) (ht : conj D.t = D.t) : conj D.P1' = SideCircuits.B1.eval D.pt := by
  simp [P1', NoFourMUBs.Side.P1, SideCircuits.B1, SideCircuits.Y, SideCircuits.S, SideCircuits.T,
    ← Complex.mul_conj, hs, ht, map_ofNat]; ring

theorem ev_P2 (hs : conj D.s = D.s) (ht : conj D.t = D.t) : D.P2' = SideCircuits.P2.eval D.pt := by
  simp [P2', NoFourMUBs.Side.P2, SideCircuits.P2, SideCircuits.X, SideCircuits.S, SideCircuits.T,
    ← Complex.mul_conj, hs, ht]; ring

theorem ev_c0 : (D.c0 : ℂ) = SideCircuits.c0.eval D.pt := by
  simp [c0, cR, SideCircuits.c0, SideCircuits.Z, ← Complex.mul_conj]
theorem ev_c1 (hs : conj D.s = D.s) (ht : conj D.t = D.t) : (D.c1 : ℂ) = SideCircuits.c1.eval D.pt := by
  simp [c1, cR, SideCircuits.c1, SideCircuits.Y, SideCircuits.T, ← Complex.mul_conj, ht]
theorem ev_c2 (hs : conj D.s = D.s) (ht : conj D.t = D.t) : (D.c2 : ℂ) = SideCircuits.c2.eval D.pt := by
  simp [c2, cR, SideCircuits.c2, SideCircuits.X, SideCircuits.S, ← Complex.mul_conj, hs]

theorem good (h : D.Rotated) : QF.Good C D.pt D.ζ where
  ne := by
    intro k
    fin_cases k
    · simp [C]
    · simpa [C, ← ev_B0 h.s_real h.t_real] using h.P0_ne
    · simpa [C, ← ev_P1 h.s_real h.t_real] using h.P1_ne
    · simpa [C, ← ev_P2 h.s_real h.t_real] using h.P2_ne
    · simpa [C, ← ev_P0] using h.P0_ne
    · simpa [C, ← ev_B1 h.s_real h.t_real] using h.P1_ne
  rel := by
    simp only [QF.relA, QF.relB, Frac.val, Frac.dval, C, pow_zero, Finset.prod_const_one, div_one,
      eval_sub', eval_mul', eval_zero']
    rw [← h.chi_eq, ← h.g_eq, ← h.eta_eq, h.sheet]; ring

theorem val_withDen {ρ : Fin 4 → ℂ} {ζ : ℂ} (x : E) (d : List ℕ) (h0 : ∀ i, x.x0.den i = 0)
    (h1 : ∀ i, x.x1.den i = 0) :
    (withDen x d).val ρ ζ = x.val ρ ζ / Frac.dval ρ C (fun i => d.getD i.val 0) := by
  have e0 : Frac.dval ρ C x.x0.den = 1 := by simp [Frac.dval, h0]
  have e1 : Frac.dval ρ C x.x1.den = 1 := by simp [Frac.dval, h1]
  simp only [QF.val, Frac.val, withDen, e0, e1, div_one]
  ring

theorem val_L (c : Circ 4) {ρ : Fin 4 → ℂ} {ζ : ℂ} : (L c).val ρ ζ = c.eval ρ := by
  simp [L, QF.val_ofFrac, Frac.val_ofCirc]

theorem dval_list (d : List ℕ) : Frac.dval D.pt C (fun i => d.getD i.val 0) =
    3 ^ d.getD 0 0 * (B0.eval D.pt) ^ d.getD 1 0 * (P1.eval D.pt) ^ d.getD 2 0 *
      (P2.eval D.pt) ^ d.getD 3 0 * (P0.eval D.pt) ^ d.getD 4 0 * (B1.eval D.pt) ^ d.getD 5 0 := by
  simp [Frac.dval, Fin.prod_univ_succ, C]; ring

@[simp] theorem getD0 (a : ℕ) (l : List ℕ) : (a :: l).getD 0 0 = a := rfl
@[simp] theorem getDs (a k : ℕ) (l : List ℕ) : (a :: l).getD (k + 1) 0 = l.getD k 0 := rfl
@[simp] theorem getDnil (k : ℕ) : ([] : List ℕ).getD k 0 = 0 := by cases k <;> rfl

theorem e_g (h : D.Rotated) : SideCircuits.g.eval D.pt = D.g := h.g_eq.symm
theorem e_eta (h : D.Rotated) : SideCircuits.eta.eval D.pt = D.η := h.eta_eq.symm
theorem e_chi (h : D.Rotated) : SideCircuits.chi.eval D.pt = D.χ := h.chi_eq.symm
theorem e_c0 : SideCircuits.c0.eval D.pt = D.c0 := ev_c0.symm
theorem e_c1 (h : D.Rotated) : SideCircuits.c1.eval D.pt = D.c1 := (ev_c1 h.s_real h.t_real).symm
theorem e_c2 (h : D.Rotated) : SideCircuits.c2.eval D.pt = D.c2 := (ev_c2 h.s_real h.t_real).symm
theorem e_P0 : SideCircuits.P0.eval D.pt = D.P0' := ev_P0.symm
theorem e_B0 (h : D.Rotated) : SideCircuits.B0.eval D.pt = conj D.P0' := (ev_B0 h.s_real h.t_real).symm
theorem e_P1 (h : D.Rotated) : SideCircuits.P1.eval D.pt = D.P1' := (ev_P1 h.s_real h.t_real).symm
theorem e_B1 (h : D.Rotated) : SideCircuits.B1.eval D.pt = conj D.P1' := (ev_B1 h.s_real h.t_real).symm
theorem e_P2 (h : D.Rotated) : SideCircuits.P2.eval D.pt = D.P2' := (ev_P2 h.s_real h.t_real).symm
theorem e_S (h : D.Rotated) : SideCircuits.S.eval D.pt = conj D.s := by simp [SideCircuits.S, h.s_real]
theorem e_T (h : D.Rotated) : SideCircuits.T.eval D.pt = conj D.t := by simp [SideCircuits.T, h.t_real]

theorem dz (h : D.Rotated) : D.z = D.ζ / D.g := rfl
theorem conj_z (h : D.Rotated) : conj D.z = (D.χ - D.ζ) / D.g := by
  rw [z, map_div₀, h.conj_ζ, Complex.conj_ofReal]

theorem g_ne (h : D.Rotated) : (D.g : ℂ) ≠ 0 := by exact_mod_cast h.g_pos.ne'

section
variable (h : D.Rotated)
include h

local notation "VAL" x => QF.val (C := C) D.pt D.ζ x

theorem conjs : (conj (D.g : ℂ) = D.g) ∧ (conj (D.c0 : ℂ) = D.c0) ∧ (conj (D.c1 : ℂ) = D.c1) ∧
    (conj (D.c2 : ℂ) = D.c2) ∧ conj (D.χ : ℂ) = D.χ ∧ conj (D.η : ℂ) = D.η := by
  simp [Complex.conj_ofReal]

/-- Rewrite circuit values to the input's quantities. -/
macro "evs" : tactic => `(tactic| simp only [QF.val_add (good h), QF.val_sub (good h), QF.val_mul (good h),
  QF.val_ofNat, val_L, QF.val_z, y, eval_add', eval_mul', eval_sub', eval_ofNat, ev_s, ev_t, ev_r, ev_Q,
  e_g h, e_eta h, e_chi h, e_c0, e_c1 h, e_c2 h, e_P0, e_B0 h, e_P1 h, e_B1 h, e_P2 h, e_S h, e_T h])

macro "unf" : tactic => `(tactic| simp only [SideInput.u, SideInput.v, SideInput.pi, SideInput.e,
  SideInput.h, lam0, lam1, lam2, map_div₀, map_add, map_mul, map_sub, Complex.conj_ofReal,
  Complex.conj_conj, dz h, h.conj_ζ, sub_sub_cancel])

theorem nz : (D.g : ℂ) ≠ 0 ∧ D.P0' ≠ 0 ∧ conj D.P0' ≠ 0 ∧ D.P1' ≠ 0 ∧ conj D.P1' ≠ 0 ∧ D.P2' ≠ 0 :=
  ⟨g_ne h, h.P0_ne, (map_ne_zero _).2 h.P0_ne, h.P1_ne, (map_ne_zero _).2 h.P1_ne, h.P2_ne⟩

theorem vU1 : (VAL U1) = conj D.P0' * D.P1' * D.u := by
  obtain ⟨hg, -, hb0, hp1, -, -⟩ := nz h
  rw [U1]; evs; unf
  field_simp
  linear_combination (D.c0 * D.c1 : ℂ) * h.sheet

theorem vU1b : (VAL U1b) = D.P0' * conj D.P1' * conj D.u := by
  obtain ⟨hg, hp0, -, -, hb1, -⟩ := nz h
  rw [U1b]; evs; unf
  field_simp
  linear_combination (D.c0 * D.c1 : ℂ) * h.sheet

theorem vU2 : (VAL U2) = conj D.P0' * D.P2' * D.v := by
  obtain ⟨hg, -, hb0, -, -, hp2⟩ := nz h
  rw [U2]; evs; unf
  field_simp
  linear_combination (D.c0 * D.c2 : ℂ) * h.sheet

theorem vPi : (VAL (y + L (SideCircuits.c0 * SideCircuits.eta))) = conj D.P0' * D.pi := by
  obtain ⟨hg, -, hb0, -, -, -⟩ := nz h
  evs; unf
  field_simp
  linear_combination (D.c0 : ℂ) * h.sheet

theorem vPib : (VAL (L SideCircuits.chi - y + L (SideCircuits.c0 * SideCircuits.eta))) = D.P0' * conj D.pi := by
  obtain ⟨hg, hp0, -, -, -, -⟩ := nz h
  evs; unf
  field_simp
  linear_combination (D.c0 : ℂ) * h.sheet

theorem vEN : (VAL EN) = 27 * conj D.P0' * D.P1' * D.P2' * D.e := by
  obtain ⟨hg, -, hb0, hp1, -, hp2⟩ := nz h
  rw [EN]; evs; unf
  field_simp
  linear_combination ((D.c0 * D.c1 * D.c2 : ℂ) * D.ζ - (D.g : ℂ) ^ 2 * ((D.c1 - D.c0) * D.c2 - D.c0 * D.c1)) * h.sheet

macro "den0" : tactic => `(tactic| (intro i; fin_cases i <;> rfl))

macro "atom" : tactic => `(tactic| (simp only [QF.val_add (good h), QF.val_sub (good h), QF.val_mul (good h),
  QF.val_ofNat, val_L, QF.val_z, y, eval_add', eval_mul', eval_sub', eval_ofNat, ev_s, ev_t, ev_r, ev_Q,
  e_g h, e_eta h, e_chi h, e_c0, e_c1 h, e_c2 h, e_P0, e_B0 h, e_P1 h, e_B1 h, e_P2 h, e_S h, e_T h,
  vU1 h, vU1b h, vU2 h, vEN h, getD0, getDs, getDnil, pow_zero, pow_one, one_mul, mul_one]))

macro "atomD" : tactic => `(tactic| (simp only [SideInput.n, SideInput.m, SideInput.k, SideInput.h,
  SideInput.mu, SideInput.nu, SideInput.alpha, SideInput.beta, SideInput.gamma, map_div₀, map_sub,
  map_mul, map_add, map_pow, map_ofNat, Complex.conj_conj, h.s_real, h.t_real]))

theorem vn : (VAL SideCircuits.n) = D.n := by
  rw [SideCircuits.n, val_withDen _ _ (by den0) (by den0), dval_list]; atom
  atomD; simp [SideInput.c2, cR, ← Complex.mul_conj, h.s_real]; ring
theorem vm : (VAL SideCircuits.m) = D.m := by
  rw [SideCircuits.m, val_withDen _ _ (by den0) (by den0), dval_list]; atom
  atomD; simp [SideInput.c1, cR, ← Complex.mul_conj, h.t_real]; ring
theorem vk : (VAL SideCircuits.k) = D.k := by
  rw [SideCircuits.k, val_withDen _ _ (by den0) (by den0), dval_list]; atom; atomD; try ring
theorem vK : (VAL SideCircuits.K) = conj D.k := by
  rw [SideCircuits.K, val_withDen _ _ (by den0) (by den0), dval_list]; atom; atomD; try ring
theorem vh : (VAL SideCircuits.h) = D.h := by
  rw [SideCircuits.h, val_withDen _ _ (by den0) (by den0), dval_list]; atom; atomD; try ring
theorem vu : (VAL SideCircuits.u) = D.u := by
  obtain ⟨-, -, hb0, hp1, -, -⟩ := nz h
  rw [SideCircuits.u, val_withDen _ _ (by den0) (by den0), dval_list]; atom; field_simp
theorem vmu : (VAL SideCircuits.mu) = D.mu := by
  rw [SideCircuits.mu, val_withDen _ _ (by den0) (by den0), dval_list]; atom; atomD; try ring
theorem vnu : (VAL SideCircuits.nu) = D.nu := by
  rw [SideCircuits.nu, val_withDen _ _ (by den0) (by den0), dval_list]; atom; atomD; try ring
theorem vNu : (VAL SideCircuits.Nu) = conj D.nu := by
  rw [SideCircuits.Nu, val_withDen _ _ (by den0) (by den0), dval_list]; atom; atomD; try ring
theorem va : (VAL SideCircuits.a) = D.alpha := by
  obtain ⟨-, -, hb0, hp1, -, -⟩ := nz h
  rw [SideCircuits.a, val_withDen _ _ (by den0) (by den0), dval_list, AN]; atom; atomD
  field_simp; try ring
theorem vA : (VAL SideCircuits.A) = conj D.alpha := by
  obtain ⟨-, hp0, -, -, hb1, -⟩ := nz h
  rw [SideCircuits.A, val_withDen _ _ (by den0) (by den0), dval_list, ABN]; atom; atomD
  field_simp; try ring
theorem vb : (VAL SideCircuits.b) = D.beta := by
  obtain ⟨-, -, hb0, -, -, hp2⟩ := nz h
  rw [SideCircuits.b, val_withDen _ _ (by den0) (by den0), dval_list, BN]; atom; atomD
  field_simp; try ring
theorem v3 : (VAL (3 : E)) = 3 := QF.val_ofNat 3
theorem v2 : (VAL (2 : E)) = 2 := QF.val_ofNat 2
theorem v4 : (VAL (4 : E)) = 4 := QF.val_ofNat 4

theorem vc : (VAL SideCircuits.c) = D.gamma := by
  obtain ⟨hg, -, hb0, -, -, -⟩ := nz h
  rw [SideCircuits.c, val_withDen _ _ (by den0) (by den0), dval_list, GN]
  atom; rw [v3 h]; atomD; unf
  field_simp
  linear_combination (-3 * D.c0 : ℂ) * h.sheet
theorem vCb : (VAL SideCircuits.Cb) = conj D.gamma := by
  obtain ⟨hg, hp0, -, -, -, -⟩ := nz h
  rw [SideCircuits.Cb, val_withDen _ _ (by den0) (by den0), dval_list, GBN]
  atom; rw [v3 h]; atomD; unf
  field_simp
  linear_combination (-3 * D.c0 : ℂ) * h.sheet
theorem ve : (VAL SideCircuits.e) = D.e := by
  obtain ⟨-, -, hb0, hp1, -, hp2⟩ := nz h
  rw [SideCircuits.e, val_withDen _ _ (by den0) (by den0), dval_list]; atom
  field_simp; ring


end

end SideInput

end NoFourMUBs.L1
