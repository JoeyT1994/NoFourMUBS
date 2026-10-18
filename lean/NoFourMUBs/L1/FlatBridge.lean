import NoFourMUBs.L1.FlatCheckTable
import NoFourMUBs.L1.SideGram
import NoFourMUBs.L1.SideFormulas
import NoFourMUBs.L1.FlatMatrix

/-!
# Matched flatness: from the kernel checks to the weighted defects

At a strict seed point `ρ`, every `Frac` of `FlatCircuits` evaluates to the quantity it names: the
Gram data and invariants of the two sides, the inverses of the table factors, the forced-block map
`K` and its adjoint.  With the actual-side formulas (`side_moments`), the third moments of the
horizontal side are `Qh q 0 + z Qh q 1` and those of the vertical side `Qv p 0 + z̄ Qv p 1`.  The
checked identities then give `W p q = F0 p q + z F1 p q = 0`.
-/

open ComplexConjugate NoFourMUBs.Side NoFourMUBs.Kronecker Circ Matrix

noncomputable section

namespace NoFourMUBs.L1.FlatCircuits

variable {m : ℕ} {C : Ctx 4 m} {ρ : Fin 4 → ℂ}

@[simp] theorem fval_ofNat (k : ℕ) [k.AtLeastTwo] :
    (no_index (OfNat.ofNat k : Frac C)).val ρ = OfNat.ofNat k := by
  rw [Frac.val_ofNat]; rfl
@[simp] theorem fval_one : (1 : Frac C).val ρ = 1 := by
  rw [show (1 : Frac C) = OfNat.ofNat 1 from rfl, Frac.val_ofNat]; simp
@[simp] theorem fval_zero : (0 : Frac C).val ρ = 0 := by
  rw [show (0 : Frac C) = OfNat.ofNat 0 from rfl, Frac.val_ofNat]; simp

/-- The invariants of Gram data, evaluated. -/
theorem gram_vals (hC : ∀ k, (C.f k).eval ρ ≠ 0) (G : Gram C) {s t r : ℂ} (hs : G.s.val ρ = s)
    (hS : G.S.val ρ = conj s) (ht : G.t.val ρ = t) (hT : G.T.val ρ = conj t) (hr : G.r.val ρ = r)
    (hQ : G.Q.val ρ = conj r) :
    G.g.val ρ = gG s t r ∧ G.eta.val ρ = gEta s t r ∧ G.chi.val ρ = gChi s t r ∧
    G.c0.val ρ = (cR r : ℂ) ∧ G.c1.val ρ = (cR t : ℂ) ∧ G.c2.val ρ = (cR s : ℂ) ∧
    G.P0.val ρ = P0 s t r ∧ G.B1.val ρ = conj (P1 s t r) ∧ G.B2.val ρ = conj (P2 s t r) := by
  have hJ : ((gJ s t r : ℝ) : ℂ) = s * r * conj t + conj s * conj r * t := by
    rw [gJ, cast_twoRe]; simp [map_mul]
  have hX : ((gX s : ℝ) : ℂ) = s * conj s := cast_normSq s
  have hY : ((gX t : ℝ) : ℂ) = t * conj t := cast_normSq t
  have hZ : ((gX r : ℝ) : ℂ) = r * conj r := cast_normSq r
  simp only [Gram.g, Gram.eta, Gram.chi, Gram.c0, Gram.c1, Gram.c2, Gram.P0, Gram.B1, Gram.B2, Gram.p,
    Gram.X, Gram.Y, Gram.Z, Gram.J, Frac.val_add hC, Frac.val_sub hC, Frac.val_mul, fval_ofNat, hs, hS, ht,
    hT, hr, hQ]
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · simp only [gG, gPs]; push_cast [hX, hY, hZ, hJ]; ring
  · simp only [gEta, gPs]; push_cast [hX, hY, hZ, hJ]; ring
  · simp only [gChi, gPs]; push_cast [hX, hY, hZ, hJ]; ring
  · simp only [cR]; push_cast [← Complex.mul_conj]; ring
  · simp only [cR]; push_cast [← Complex.mul_conj]; ring
  · simp only [cR]; push_cast [← Complex.mul_conj]; ring
  · simp only [P0]; push_cast [← Complex.mul_conj]; ring
  · simp only [P1, map_add, map_mul, map_pow, Complex.conj_conj, Complex.conj_ofReal]
    push_cast [← Complex.mul_conj]; ring
  · simp only [P2, map_add, map_mul, map_pow, Complex.conj_conj, Complex.conj_ofReal]
    push_cast [← Complex.mul_conj]; ring

/-! ### The seed point -/

section Seeds

variable (ρ : Fin 4 → ℂ)

def sh : ℂ := -(1 + ρ 0 + ρ 1)
def th : ℂ := -(1 + ρ 2 + ρ 3)
def rh : ℂ := -(1 + ρ 2 * conj (ρ 0) + ρ 3 * conj (ρ 1))
def sv : ℂ := -(1 + ρ 0 + ρ 2)
def tv : ℂ := -(1 + ρ 1 + ρ 3)
def rv : ℂ := -(1 + ρ 1 * conj (ρ 0) + ρ 3 * conj (ρ 2))

variable {ρ}

theorem conj_unit (hu : ∀ i, Complex.normSq (ρ i) = 1) (i : Fin 4) : conj (ρ i) = (ρ i)⁻¹ :=
  conj_eq_inv (hu i)

theorem cs_ne (hu : ∀ i, Complex.normSq (ρ i) = 1) : ∀ k, (CS.f k).eval ρ ≠ 0 := by
  intro k; fin_cases k <;> simpa [CS, a, b, c, d] using ne_zero_of_normSq (hu _)

set_option hygiene false in
macro "atoms" : tactic => `(tactic| (simp only [Gram.horiz, Gram.vert, Frac.val_neg, Frac.val_add (cs_ne hu),
  Frac.val_mul, fval_one, Frac.val_ofCirc, Frac.val_inv, sh, th, rh, sv, tv, rv, map_neg, map_add, map_one,
  map_mul, Complex.conj_conj, conj_unit hu] <;> simp [CS, a, b, c, d, conj_unit hu, inv_inv] <;> ring))

theorem HS_vals (hu : ∀ i, Complex.normSq (ρ i) = 1) :
    HS.g.val ρ = gG (sh ρ) (th ρ) (rh ρ) ∧ HS.eta.val ρ = gEta (sh ρ) (th ρ) (rh ρ) ∧
    HS.chi.val ρ = gChi (sh ρ) (th ρ) (rh ρ) ∧ HS.P0.val ρ = P0 (sh ρ) (th ρ) (rh ρ) ∧
    HS.B1.val ρ = conj (P1 (sh ρ) (th ρ) (rh ρ)) ∧ HS.B2.val ρ = conj (P2 (sh ρ) (th ρ) (rh ρ)) := by
  obtain ⟨h1, h2, h3, -, -, -, h7, h8, h9⟩ := gram_vals (cs_ne hu) HS (s := sh ρ) (t := th ρ) (r := rh ρ)
    (by simp only [HS]; atoms) (by simp only [HS]; atoms) (by simp only [HS]; atoms)
    (by simp only [HS]; atoms) (by simp only [HS]; atoms) (by simp only [HS]; atoms)
  exact ⟨h1, h2, h3, h7, h8, h9⟩

theorem VS_vals (hu : ∀ i, Complex.normSq (ρ i) = 1) :
    VS.g.val ρ = gG (sv ρ) (tv ρ) (rv ρ) ∧ VS.eta.val ρ = gEta (sv ρ) (tv ρ) (rv ρ) ∧
    VS.chi.val ρ = gChi (sv ρ) (tv ρ) (rv ρ) ∧ VS.P0.val ρ = P0 (sv ρ) (tv ρ) (rv ρ) ∧
    VS.B1.val ρ = conj (P1 (sv ρ) (tv ρ) (rv ρ)) ∧ VS.B2.val ρ = conj (P2 (sv ρ) (tv ρ) (rv ρ)) := by
  obtain ⟨h1, h2, h3, -, -, -, h7, h8, h9⟩ := gram_vals (cs_ne hu) VS (s := sv ρ) (t := tv ρ) (r := rv ρ)
    (by simp only [VS]; atoms) (by simp only [VS]; atoms) (by simp only [VS]; atoms)
    (by simp only [VS]; atoms) (by simp only [VS]; atoms) (by simp only [VS]; atoms)
  exact ⟨h1, h2, h3, h7, h8, h9⟩

theorem monoL_ne (hu : ∀ i, Complex.normSq (ρ i) = 1) (l : List ℕ) : (monoL l).eval ρ ≠ 0 := by
  have := fun i => ne_zero_of_normSq (hu i)
  simp only [monoL, a, b, c, d, eval_mul', eval_pow', eval_var]
  exact mul_ne_zero (mul_ne_zero (mul_ne_zero (pow_ne_zero _ (this 0)) (pow_ne_zero _ (this 1)))
    (pow_ne_zero _ (this 2))) (pow_ne_zero _ (this 3))

/-- A table polynomial is its Laurent factor times its monomial. -/
theorem table_eval (hu : ∀ i, Complex.normSq (ρ i) = 1) {x : Frac CS} {l : List ℕ} {P : V}
    (h : (x * Frac.ofCirc (monoL l) - Frac.ofCirc P).num.valid 0 = true) :
    P.eval ρ = x.val ρ * (monoL l).eval ρ := by
  have := Frac.val_eq_zero (ρ := ρ) h
  rw [Frac.val_sub (cs_ne hu), Frac.val_mul, Frac.val_ofCirc, Frac.val_ofCirc] at this
  linear_combination -this

/-- `det E` for the corner with seeds `ρ`. -/
def dE (ρ : Fin 4 → ℂ) : ℂ := ρ 0 * ρ 3 - ρ 1 * ρ 2 - ρ 3 + ρ 1 + ρ 2 - ρ 0

theorem cast_det (s t r : ℂ) : (((27 - 3 * gPs s t r - gJ s t r : ℝ)) : ℂ) =
    27 - 3 * (s * conj s + t * conj t + r * conj r) - (s * r * conj t + conj s * conj r * t) := by
  have hJ : ((gJ s t r : ℝ) : ℂ) = s * r * conj t + conj s * conj r * t := by
    rw [gJ, cast_twoRe]; simp [map_mul]
  simp only [gPs, gX]; push_cast [hJ, cast_normSq]; ring

theorem det_gram (hu : ∀ i, Complex.normSq (ρ i) = 1) :
    (((27 - 3 * gPs (sh ρ) (th ρ) (rh ρ) - gJ (sh ρ) (th ρ) (rh ρ) : ℝ) : ℂ) = dE ρ * conj (dE ρ)) ∧
    (((27 - 3 * gPs (sv ρ) (tv ρ) (rv ρ) - gJ (sv ρ) (tv ρ) (rv ρ) : ℝ) : ℂ) = dE ρ * conj (dE ρ)) := by
  have n := fun i => ne_zero_of_normSq (hu i)
  have h0 := n 0; have h1 := n 1; have h2 := n 2; have h3 := n 3
  constructor <;>
  · rw [cast_det]
    simp only [sh, th, rh, sv, tv, rv, dE]
    simp only [map_neg, map_add, map_sub, map_one, map_mul, Complex.conj_conj]
    simp only [conj_unit hu]
    field_simp
    ring

theorem det_nonneg (hu : ∀ i, Complex.normSq (ρ i) = 1) :
    0 ≤ 27 - 3 * gPs (sh ρ) (th ρ) (rh ρ) - gJ (sh ρ) (th ρ) (rh ρ) ∧
    0 ≤ 27 - 3 * gPs (sv ρ) (tv ρ) (rv ρ) - gJ (sv ρ) (tv ρ) (rv ρ) := by
  obtain ⟨h1, h2⟩ := det_gram hu
  rw [Complex.mul_conj] at h1 h2
  exact ⟨by rw [Complex.ofReal_injective h1]; exact Complex.normSq_nonneg _,
    by rw [Complex.ofReal_injective h2]; exact Complex.normSq_nonneg _⟩

/-- A strict seed point: unit seeds and `R > 0`. -/
structure Strict (ρ : Fin 4 → ℂ) : Prop where
  unit : ∀ i, Complex.normSq (ρ i) = 1
  R : 0 < gR (sh ρ) (th ρ) (rh ρ)

theorem hv_eq (hu : ∀ i, Complex.normSq (ρ i) = 1) :
    gG (sv ρ) (tv ρ) (rv ρ) = gG (sh ρ) (th ρ) (rh ρ) ∧ gEta (sv ρ) (tv ρ) (rv ρ) = gEta (sh ρ) (th ρ) (rh ρ) ∧
    gChi (sv ρ) (tv ρ) (rv ρ) = gChi (sh ρ) (th ρ) (rh ρ) := by
  obtain ⟨g1, e1, c1, -⟩ := HS_vals hu
  obtain ⟨g2, e2, c2, -⟩ := VS_vals hu
  have k1 := Frac.val_eq_zero (ρ := ρ) g_hv_valid
  have k2 := Frac.val_eq_zero (ρ := ρ) eta_hv_valid
  have k3 := Frac.val_eq_zero (ρ := ρ) chi_hv_valid
  rw [Frac.val_sub (cs_ne hu)] at k1 k2 k3
  rw [g1, g2] at k1; rw [e1, e2] at k2; rw [c1, c2] at k3
  exact ⟨by exact_mod_cast sub_eq_zero.1 k1, by exact_mod_cast sub_eq_zero.1 k2,
    by exact_mod_cast sub_eq_zero.1 k3⟩

theorem Strict.facts (h : Strict ρ) :
    0 < gG (sh ρ) (th ρ) (rh ρ) ∧ 0 < gR (sv ρ) (tv ρ) (rv ρ) ∧
    (P0 (sh ρ) (th ρ) (rh ρ) ≠ 0 ∧ P1 (sh ρ) (th ρ) (rh ρ) ≠ 0 ∧ P2 (sh ρ) (th ρ) (rh ρ) ≠ 0) ∧
    (P0 (sv ρ) (tv ρ) (rv ρ) ≠ 0 ∧ P1 (sv ρ) (tv ρ) (rv ρ) ≠ 0 ∧ P2 (sv ρ) (tv ρ) (rv ρ) ≠ 0) := by
  obtain ⟨d1, d2⟩ := det_nonneg h.unit
  obtain ⟨eg, ee, ec⟩ := hv_eq h.unit
  have hRv : 0 < gR (sv ρ) (tv ρ) (rv ρ) := by unfold gR; rw [eg, ee, ec]; exact h.R
  exact ⟨(domain h.R d1).2.1, hRv, P_ne_gram h.R d1, P_ne_gram hRv d2⟩

theorem c0_ne (h : Strict ρ) : ∀ k, (C0.f k).eval ρ ≠ 0 := by
  obtain ⟨hg, -, ⟨p0, p1, p2⟩, ⟨q0, q1, q2⟩⟩ := h.facts
  obtain ⟨g1, -, -, h4, h5, h6⟩ := HS_vals h.unit
  obtain ⟨-, -, -, v4, v5, v6⟩ := VS_vals h.unit
  have m := monoL_ne h.unit
  have u := fun i => ne_zero_of_normSq (h.unit i)
  intro k
  fin_cases k
  · simpa [C0, a] using u 0
  · simpa [C0, b] using u 1
  · simpa [C0, c] using u 2
  · simpa [C0, d] using u 3
  · change gP.eval ρ ≠ 0; rw [table_eval h.unit gP_valid, g1]
    exact mul_ne_zero (by exact_mod_cast hg.ne') (m _)
  · change P0hP.eval ρ ≠ 0; rw [table_eval h.unit P0hP_valid, h4]; exact mul_ne_zero p0 (m _)
  · change B1hP.eval ρ ≠ 0; rw [table_eval h.unit B1hP_valid, h5]; exact mul_ne_zero ((map_ne_zero _).2 p1) (m _)
  · change B2hP.eval ρ ≠ 0; rw [table_eval h.unit B2hP_valid, h6]; exact mul_ne_zero ((map_ne_zero _).2 p2) (m _)
  · change P0vP.eval ρ ≠ 0; rw [table_eval h.unit P0vP_valid, v4]; exact mul_ne_zero q0 (m _)
  · change B1vP.eval ρ ≠ 0; rw [table_eval h.unit B1vP_valid, v5]; exact mul_ne_zero ((map_ne_zero _).2 q1) (m _)
  · change B2vP.eval ρ ≠ 0; rw [table_eval h.unit B2vP_valid, v6]; exact mul_ne_zero ((map_ne_zero _).2 q2) (m _)
  · simp [C0]
  · simp [C0]
  · simp [C0]

set_option hygiene false in
macro "atoms0" : tactic => `(tactic| (simp only [H, Vg, Gram.horiz, Gram.vert, fa, fb, fc, fd, fl, ia, ib, ic, id',
  Frac.val_neg, Frac.val_add (c0_ne h), Frac.val_mul, fval_one, Frac.val_ofCirc, Frac.val_inv, sh, th, rh, sv, tv,
  rv, map_neg, map_add, map_one, map_mul, Complex.conj_conj, conj_unit h.unit] <;>
  simp [C0, a, b, c, d, conj_unit h.unit, inv_inv] <;> ring))

theorem H_vals (h : Strict ρ) :
    H.g.val ρ = gG (sh ρ) (th ρ) (rh ρ) ∧ H.eta.val ρ = gEta (sh ρ) (th ρ) (rh ρ) ∧
    H.chi.val ρ = gChi (sh ρ) (th ρ) (rh ρ) ∧ H.c0.val ρ = (cR (rh ρ) : ℂ) ∧ H.c1.val ρ = (cR (th ρ) : ℂ) ∧
    H.c2.val ρ = (cR (sh ρ) : ℂ) ∧ H.P0.val ρ = P0 (sh ρ) (th ρ) (rh ρ) ∧
    H.B1.val ρ = conj (P1 (sh ρ) (th ρ) (rh ρ)) ∧ H.B2.val ρ = conj (P2 (sh ρ) (th ρ) (rh ρ)) ∧
    H.s.val ρ = sh ρ ∧ H.S.val ρ = conj (sh ρ) ∧ H.t.val ρ = th ρ ∧ H.T.val ρ = conj (th ρ) ∧
    H.r.val ρ = rh ρ ∧ H.Q.val ρ = conj (rh ρ) := by
  have e1 : H.s.val ρ = sh ρ := by atoms0
  have e2 : H.S.val ρ = conj (sh ρ) := by atoms0
  have e3 : H.t.val ρ = th ρ := by atoms0
  have e4 : H.T.val ρ = conj (th ρ) := by atoms0
  have e5 : H.r.val ρ = rh ρ := by atoms0
  have e6 : H.Q.val ρ = conj (rh ρ) := by atoms0
  obtain ⟨g1, g2, g3, g4, g5, g6, g7, g8, g9⟩ := gram_vals (c0_ne h) H e1 e2 e3 e4 e5 e6
  exact ⟨g1, g2, g3, g4, g5, g6, g7, g8, g9, e1, e2, e3, e4, e5, e6⟩

theorem Vg_vals (h : Strict ρ) :
    Vg.g.val ρ = gG (sv ρ) (tv ρ) (rv ρ) ∧ Vg.eta.val ρ = gEta (sv ρ) (tv ρ) (rv ρ) ∧
    Vg.chi.val ρ = gChi (sv ρ) (tv ρ) (rv ρ) ∧ Vg.c0.val ρ = (cR (rv ρ) : ℂ) ∧ Vg.c1.val ρ = (cR (tv ρ) : ℂ) ∧
    Vg.c2.val ρ = (cR (sv ρ) : ℂ) ∧ Vg.P0.val ρ = P0 (sv ρ) (tv ρ) (rv ρ) ∧
    Vg.B1.val ρ = conj (P1 (sv ρ) (tv ρ) (rv ρ)) ∧ Vg.B2.val ρ = conj (P2 (sv ρ) (tv ρ) (rv ρ)) ∧
    Vg.s.val ρ = sv ρ ∧ Vg.S.val ρ = conj (sv ρ) ∧ Vg.t.val ρ = tv ρ ∧ Vg.T.val ρ = conj (tv ρ) ∧
    Vg.r.val ρ = rv ρ ∧ Vg.Q.val ρ = conj (rv ρ) := by
  have e1 : Vg.s.val ρ = sv ρ := by atoms0
  have e2 : Vg.S.val ρ = conj (sv ρ) := by atoms0
  have e3 : Vg.t.val ρ = tv ρ := by atoms0
  have e4 : Vg.T.val ρ = conj (tv ρ) := by atoms0
  have e5 : Vg.r.val ρ = rv ρ := by atoms0
  have e6 : Vg.Q.val ρ = conj (rv ρ) := by atoms0
  obtain ⟨g1, g2, g3, g4, g5, g6, g7, g8, g9⟩ := gram_vals (c0_ne h) Vg e1 e2 e3 e4 e5 e6
  exact ⟨g1, g2, g3, g4, g5, g6, g7, g8, g9, e1, e2, e3, e4, e5, e6⟩

theorem tinv_val (h : Strict ρ) {k : Fin 14} {l : List ℕ} {x : Frac CS} {P : V} (hk : C0.f k = P)
    (hx : (x * Frac.ofCirc (monoL l) - Frac.ofCirc P).num.valid 0 = true) :
    (tinv k l).val ρ = (x.val ρ)⁻¹ := by
  have hm := monoL_ne h.unit l
  have hP : P.eval ρ ≠ 0 := hk ▸ c0_ne h k
  rw [table_eval h.unit hx] at hP
  have hx0 := (mul_ne_zero_iff.1 hP).1
  rw [tinv, Frac.val_mul, Frac.val_inv, fl, Frac.val_ofCirc, hk, table_eval h.unit hx]
  field_simp

theorem inv_vals (h : Strict ρ) :
    ig.val ρ = ((gG (sh ρ) (th ρ) (rh ρ) : ℝ) : ℂ)⁻¹ ∧ iP0h.val ρ = (P0 (sh ρ) (th ρ) (rh ρ))⁻¹ ∧
    iB1h.val ρ = (conj (P1 (sh ρ) (th ρ) (rh ρ)))⁻¹ ∧ iB2h.val ρ = (conj (P2 (sh ρ) (th ρ) (rh ρ)))⁻¹ ∧
    iP0v.val ρ = (P0 (sv ρ) (tv ρ) (rv ρ))⁻¹ ∧ iB1v.val ρ = (conj (P1 (sv ρ) (tv ρ) (rv ρ)))⁻¹ ∧
    iB2v.val ρ = (conj (P2 (sv ρ) (tv ρ) (rv ρ)))⁻¹ := by
  obtain ⟨g1, -, -, h4, h5, h6⟩ := HS_vals h.unit
  obtain ⟨-, -, -, v4, v5, v6⟩ := VS_vals h.unit
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [ig, tinv_val h (by simp [C0]) gP_valid, g1]
  · rw [iP0h, tinv_val h (by simp [C0]) P0hP_valid, h4]
  · rw [iB1h, tinv_val h (by simp [C0]) B1hP_valid, h5]
  · rw [iB2h, tinv_val h (by simp [C0]) B2hP_valid, h6]
  · rw [iP0v, tinv_val h (by simp [C0]) P0vP_valid, v4]
  · rw [iB1v, tinv_val h (by simp [C0]) B1vP_valid, v5]
  · rw [iB2v, tinv_val h (by simp [C0]) B2vP_valid, v6]

/-! ### The forced-block map -/

/-- The corner. -/
def Em (ρ : Fin 4 → ℂ) : Hadamard6.Mat3 := Hadamard6.corner (ρ 0) (ρ 1) (ρ 2) (ρ 3)

theorem E_vals (h : Strict ρ) (i j : Fin 3) : (E i j).val ρ = Em ρ i j ∧ (Ec i j).val ρ = conj (Em ρ i j) := by
  fin_cases i <;> fin_cases j <;>
    simp [E, Ec, Em, Hadamard6.corner, fa, fb, fc, fd, fl, ia, ib, ic, id', Frac.val_ofCirc, Frac.val_inv,
      C0, a, b, c, d, conj_unit h.unit] <;> exact fval_one

theorem Gh_val (h : Strict ρ) (i j : Fin 3) :
    (Gh i j).val ρ = (Hadamard6.sixI3 - Em ρ * (Em ρ)ᴴ) i j := by
  have u := fun i => ne_zero_of_normSq (h.unit i)
  have e : ∀ i j, (E i j).val ρ = Em ρ i j := fun i j => (E_vals h i j).1
  have ec : ∀ i j, (Ec i j).val ρ = conj (Em ρ i j) := fun i j => (E_vals h i j).2
  simp only [Gh, Frac.val_sub (c0_ne h), Frac.val_add (c0_ne h), Frac.val_mul, e, ec]
  simp only [Hadamard6.sixI3, Matrix.sub_apply, Matrix.smul_apply, Matrix.one_apply, Matrix.mul_apply,
    Matrix.conjTranspose_apply, Fin.sum_univ_three, smul_eq_mul, Complex.star_def]
  split_ifs <;> simp

/-- `G = 6 I − E E*` in Gram form. -/
theorem G_eq (h : Strict ρ) : Hadamard6.sixI3 - Em ρ * (Em ρ)ᴴ =
    !![3, conj (sh ρ), conj (th ρ); sh ρ, 3, conj (rh ρ); th ρ, rh ρ, 3] := by
  have n : ∀ i, ρ i * conj (ρ i) = 1 := fun i => by rw [Complex.mul_conj, h.unit i, Complex.ofReal_one]
  ext i j
  simp only [Hadamard6.sixI3, Matrix.sub_apply, Matrix.smul_apply, Matrix.one_apply, Matrix.mul_apply,
    Fin.sum_univ_three, Matrix.conjTranspose_apply, Complex.star_def, smul_eq_mul]
  fin_cases i <;> fin_cases j <;>
    simp [Em, Hadamard6.corner, sh, th, rh] <;>
    (first
      | ring1
      | linear_combination (-1 : ℂ) * n 0 - n 1
      | linear_combination (-1 : ℂ) * n 2 - n 3)

theorem det_G (h : Strict ρ) : (Hadamard6.sixI3 - Em ρ * (Em ρ)ᴴ).det = gG (sh ρ) (th ρ) (rh ρ) := by
  rw [G_eq h, Matrix.det_fin_three]
  have hJ : ((gJ (sh ρ) (th ρ) (rh ρ) : ℝ) : ℂ) = sh ρ * rh ρ * conj (th ρ) + conj (sh ρ) * conj (rh ρ) * th ρ := by
    rw [gJ, cast_twoRe]; simp [map_mul]
  simp only [gG, gPs, gX]; push_cast [hJ, cast_normSq]
  simp; ring

theorem Ginv_val (h : Strict ρ) (i j : Fin 3) :
    (Ginv i j).val ρ = (Hadamard6.sixI3 - Em ρ * (Em ρ)ᴴ)⁻¹ i j := by
  obtain ⟨hg, -⟩ := h.facts
  have hg' : ((gG (sh ρ) (th ρ) (rh ρ) : ℝ) : ℂ) ≠ 0 := by exact_mod_cast hg.ne'
  have hdet := det_G h
  rw [G_eq h] at hdet ⊢
  rw [Matrix.inv_def, hdet, Ring.inverse_eq_inv', Matrix.smul_apply, Matrix.adjugate_fin_three]
  have hG := fun i j => Gh_val h i j
  rw [G_eq h] at hG
  have ig' := (inv_vals h).1
  fin_cases i <;> fin_cases j <;>
    simp [Ginv, oth, Frac.val_mul, Frac.val_sub (c0_ne h), Frac.val_neg, hG, ig', fval_one] <;> ring

theorem K_val (h : Strict ρ) (i j : Fin 3) : (K i j).val ρ = Kmap (Em ρ) i j := by
  have e := fun i j => (E_vals h i j).2
  simp only [K, Kmap, Frac.val_neg, Frac.val_add (c0_ne h), Frac.val_mul, e, Ginv_val h,
    Matrix.neg_apply, Matrix.mul_apply, Fin.sum_univ_three, Matrix.conjTranspose_apply, Complex.star_def]

theorem Kst_val (h : Strict ρ) (i j : Fin 3) : (Kst i j).val ρ = (Kmap (Em ρ))ᴴ i j := by
  have e := fun i j => (E_vals h i j).1
  have hH : (Hadamard6.sixI3 - Em ρ * (Em ρ)ᴴ)ᴴ = Hadamard6.sixI3 - Em ρ * (Em ρ)ᴴ := by
    rw [Matrix.conjTranspose_sub, Matrix.conjTranspose_mul, Matrix.conjTranspose_conjTranspose]
    simp [Hadamard6.sixI3, Matrix.conjTranspose_smul]
  have hK : (Kmap (Em ρ))ᴴ = -((Hadamard6.sixI3 - Em ρ * (Em ρ)ᴴ)⁻¹ * Em ρ) := by
    rw [Kmap, Matrix.conjTranspose_neg, Matrix.conjTranspose_mul, Matrix.conjTranspose_nonsing_inv, hH,
      Matrix.conjTranspose_conjTranspose]
  rw [hK]
  simp only [Kst, Frac.val_neg, Frac.val_add (c0_ne h), Frac.val_mul, e, Ginv_val h, Matrix.neg_apply,
    Matrix.mul_apply, Fin.sum_univ_three]

/-! ### Third moments of an actual side -/

theorem gS_eq (s t r : ℂ) : gS s t r = gG s t r := by
  simp only [gS, gG, gPs, gX, gJ]
  have : (conj s * conj r * t).re = (s * r * conj t).re := by
    rw [← Complex.conj_re]; simp [map_mul]
  rw [this]

/-- The third moments of a normalised phase side `(1; x; y)` whose Gram data `G` evaluates to
`(s, t, r)`: `Q⁽q⁺¹⁾ = Qm q 0 + z Qm q 1` with `z = T / g` (`FLATNESS.md` (4.3), (4.4)). -/
theorem Qm_val (h : Strict ρ) (G : Gram C0) {iP0 iB1 iB2 : Fr} {x y : Fin 3 → ℂ}
    (hx : ∀ j, Complex.normSq (x j) = 1) (hy : ∀ j, Complex.normSq (y j) = 1)
    (hs : G.s.val ρ = sS x) (hS : G.S.val ρ = conj (sS x)) (ht : G.t.val ρ = sS y)
    (hT : G.T.val ρ = conj (sS y)) (hr : G.r.val ρ = rS x y) (hQ : G.Q.val ρ = conj (rS x y))
    (hc0 : G.c0.val ρ = (cR (rS x y) : ℂ)) (hc1 : G.c1.val ρ = (cR (sS y) : ℂ))
    (hc2 : G.c2.val ρ = (cR (sS x) : ℂ)) {g η χ : ℝ}
    (hg : H.g.val ρ = g) (he : H.eta.val ρ = η) (hc : H.chi.val ρ = χ)
    (hgS : gS (sS x) (sS y) (rS x y) = g) (hg0 : 0 < g)
    (hzz : (TS x y / g) * conj (TS x y / g) = η) (hzs : (g : ℂ) * (TS x y / g + conj (TS x y / g)) = χ)
    (hP0 : P0 (sS x) (sS y) (rS x y) ≠ 0) (hP1 : P1 (sS x) (sS y) (rS x y) ≠ 0)
    (hP2 : P2 (sS x) (sS y) (rS x y) ≠ 0)
    (hi0 : iP0.val ρ = (P0 (sS x) (sS y) (rS x y))⁻¹) (hi1 : iB1.val ρ = (conj (P1 (sS x) (sS y) (rS x y)))⁻¹)
    (hi2 : iB2.val ρ = (conj (P2 (sS x) (sS y) (rS x y)))⁻¹) (q : Fin 2) (a c : Fin 3) :
    Q3 (sideMat x y) q.succ a c =
      (Qm G iP0 iB1 iB2 q.val 0 a c).val ρ + TS x y / g * (Qm G iP0 iB1 iB2 q.val 1 a c).val ρ := by
  obtain ⟨f1, f2, f3, f4, f5⟩ := side_moments hx hy hgS hg0 hzz hzs hP0 hP1 hP2
  have hC := c0_ne h
  fin_cases q
  · change Q3 (sideMat x y) 1 a c =
      (Qm G iP0 iB1 iB2 0 0 a c).val ρ + TS x y / g * (Qm G iP0 iB1 iB2 0 1 a c).val ρ
    rw [Q3_row1 x y hx hy]
    fin_cases a <;> fin_cases c <;>
      simp only [Qm, Fin.zero_eta, Fin.isValue, Fin.mk_one, Fin.reduceFinMk, Matrix.of_apply,
        Matrix.cons_val', Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two, Matrix.empty_val',
        Matrix.cons_val_fin_one, Matrix.head_cons, Matrix.tail_cons, Matrix.head_fin_const,
        Frac.val_add hC, Frac.val_sub hC, Frac.val_mul, Frac.val_neg, fval_ofNat, fval_zero, hs, hS, hT, hr,
        hc0, hc1, hg, he, hc, hi0, hi1] <;>
      first
        | ring1
        | linear_combination (-2 * sS x) * f1
        | linear_combination -f3
        | linear_combination -f4
  · change Q3 (sideMat x y) 2 a c =
      (Qm G iP0 iB1 iB2 1 0 a c).val ρ + TS x y / g * (Qm G iP0 iB1 iB2 1 1 a c).val ρ
    rw [Q3_row2 x y hx hy]
    fin_cases a <;> fin_cases c <;>
      simp only [Qm, Fin.zero_eta, Fin.isValue, Fin.mk_one, Fin.reduceFinMk, Matrix.of_apply,
        Matrix.cons_val', Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two, Matrix.empty_val',
        Matrix.cons_val_fin_one, Matrix.head_cons, Matrix.tail_cons, Matrix.head_fin_const,
        Frac.val_add hC, Frac.val_sub hC, Frac.val_mul, Frac.val_neg, fval_ofNat, fval_zero, hS, ht, hT,
        hQ, hc0, hc2, hg, he, hc, hi0, hi2] <;>
      first
        | ring1
        | linear_combination (-2 * sS y) * f2
        | linear_combination -f3
        | linear_combination -f5

/-! ### The two sides as candidates -/

theorem Gv_eq (h : Strict ρ) : Hadamard6.sixI3 - (Em ρ)ᴴ * Em ρ =
    !![3, sv ρ, tv ρ; conj (sv ρ), 3, rv ρ; conj (tv ρ), conj (rv ρ), 3] := by
  have n : ∀ i, ρ i * conj (ρ i) = 1 := fun i => by rw [Complex.mul_conj, h.unit i, Complex.ofReal_one]
  have n' : ∀ i, conj (ρ i) * ρ i = 1 := fun i => by rw [mul_comm]; exact n i
  ext i j
  simp only [Hadamard6.sixI3, Matrix.sub_apply, Matrix.smul_apply, Matrix.one_apply, Matrix.mul_apply,
    Fin.sum_univ_three, Matrix.conjTranspose_apply, Complex.star_def, smul_eq_mul]
  fin_cases i <;> fin_cases j <;>
    simp [Em, Hadamard6.corner, sv, tv, rv] <;>
    (first
      | ring1
      | linear_combination (-1 : ℂ) * n' 0 - n' 2
      | linear_combination (-1 : ℂ) * n' 1 - n' 3)

theorem unit_mul_conj {x : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1) (j : Fin 3) :
    x j * conj (x j) = 1 := by rw [Complex.mul_conj, hx j, Complex.ofReal_one]

theorem side_gram {x y : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1) (hy : ∀ j, Complex.normSq (y j) = 1) :
    sideMat x y * (sideMat x y)ᴴ =
      !![3, conj (sS x), conj (sS y); sS x, 3, conj (rS x y); sS y, rS x y, 3] := by
  have ex := unit_mul_conj hx; have ey := unit_mul_conj hy
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [sideMat, Matrix.mul_apply, Fin.sum_univ_three, sS, rS, map_add, ex, ey]
  all_goals ring1

theorem horiz_cand (h : Strict ρ) {x y : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) (hs : sS x = sh ρ) (ht : sS y = th ρ) (hr : rS x y = rh ρ) :
    sideMat x y ∈ Hadamard6.horizontalCandidates (Em ρ) := by
  refine ⟨?_, fun j => rfl, ?_⟩
  · intro i j; fin_cases i <;> simp [sideMat, hx, hy]
  · rw [side_gram hx hy, hs, ht, hr, ← G_eq h]; abel

theorem vert_cand (h : Strict ρ) {x y : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) (hs : sS x = sv ρ) (ht : sS y = tv ρ) (hr : rS x y = rv ρ) :
    (sideMat x y)ᵀ ∈ Hadamard6.verticalCandidates (Em ρ) := by
  refine ⟨?_, fun i => rfl, ?_⟩
  · intro i j; fin_cases j <;> simp [sideMat, hx, hy]
  · have hT : ((sideMat x y)ᵀ)ᴴ * (sideMat x y)ᵀ = (sideMat x y * (sideMat x y)ᴴ)ᵀ := by
      ext i j
      simp only [Matrix.mul_apply, Matrix.transpose_apply, Matrix.conjTranspose_apply, Complex.star_def]
      exact Finset.sum_congr rfl fun k _ => mul_comm _ _
    have hM : (!![3, conj (sv ρ), conj (tv ρ); sv ρ, 3, conj (rv ρ); tv ρ, rv ρ, 3] : Hadamard6.Mat3)ᵀ =
        !![3, sv ρ, tv ρ; conj (sv ρ), 3, rv ρ; conj (tv ρ), conj (rv ρ), 3] := by
      ext i j; fin_cases i <;> fin_cases j <;> rfl
    rw [hT, side_gram hx hy, hs, ht, hr, hM, ← Gv_eq h]; abel

/-! ### The weighted defects -/

theorem sum9_val (hC : ∀ k, (C0.f k).eval ρ ≠ 0) (f : Fin 3 → Fin 3 → Fr) :
    (sum9 f).val ρ = ∑ a, ∑ c, (f a c).val ρ := by
  simp only [sum9, Frac.val_add hC, Fin.sum_univ_three]; ring

/-- The algebra of (4.6): on the matched sheet the weighted defect is `F₀ + z F₁`. -/
theorem W_alg {v0 v1 m0 m1 : Fin 3 → Fin 3 → ℂ} {z zb hh η S : ℂ} (h1 : z + zb = hh) (h2 : z * zb = η)
    (F0 : (∑ a, ∑ c, v0 a c * m0 a c) + hh * (∑ a, ∑ c, v1 a c * m0 a c) +
      η * (∑ a, ∑ c, v1 a c * m1 a c) - S = 0)
    (F1 : ∑ a, ∑ c, (v0 a c * m1 a c - v1 a c * m0 a c) = 0) :
    ∑ a, ∑ c, (v0 a c + zb * v1 a c) * (m0 a c + z * m1 a c) - S = 0 := by
  have e1 : ∑ a, ∑ c, (v0 a c + zb * v1 a c) * (m0 a c + z * m1 a c) =
      (∑ a, ∑ c, v0 a c * m0 a c) + z * (∑ a, ∑ c, (v0 a c * m1 a c - v1 a c * m0 a c)) +
        (z + zb) * (∑ a, ∑ c, v1 a c * m0 a c) + z * zb * (∑ a, ∑ c, v1 a c * m1 a c) := by
    simp only [Fin.sum_univ_three]; ring
  rw [e1, h1, h2, F1]
  linear_combination F0

/-- **The weighted defect `W₁₁` at a strict seed point**, from the kernel checks of the entry `(p, q) = (0, 0)`
(zero-based, as in `FlatCircuits`): for actual sides on the two conjugate roots, `W₁₁ = F₀ + z F₁ = 0`. -/
theorem W_zero11 (h : Strict ρ)
    (hmh : ∀ i : Fin 2, ∀ a c : Fin 3, (mhUnred 0 i.val a c - mhData 0 i.val a c).num.validR 2 = true)
    (hqv : ∀ i : Fin 2, ∀ a c : Fin 3, (Qv 0 i.val a c - qvData 0 i.val a c).num.validR 2 = true)
    (hF : (F0 0 0).num.validR 2 = true ∧ (F1 0 0).num.validR 2 = true)
    {x y x' y' : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1) (hy : ∀ j, Complex.normSq (y j) = 1)
    (hx' : ∀ j, Complex.normSq (x' j) = 1) (hy' : ∀ j, Complex.normSq (y' j) = 1)
    (hs : sS x = sh ρ) (ht : sS y = th ρ) (hr : rS x y = rh ρ)
    (hs' : sS x' = sv ρ) (ht' : sS y' = tv ρ) (hr' : rS x' y' = rv ρ) {ζ : ℂ}
    (hT : TS x y = ζ) (hT' : TS x' y' = conj ζ)
    (hζ : ζ * conj ζ = ((gG (sh ρ) (th ρ) (rh ρ) : ℝ) : ℂ) ^ 2 * (gEta (sh ρ) (th ρ) (rh ρ) : ℂ))
    (hζc : ζ + conj ζ = (gChi (sh ρ) (th ρ) (rh ρ) : ℂ))
    (hBdet : IsUnit (sideMat x y).det) :
    W (Em ρ) (sideMat x y) (sideMat x' y')ᵀ 1 1 = 0 := by
  obtain ⟨hg0, -, ⟨p0, p1, p2⟩, ⟨q0, q1, q2⟩⟩ := h.facts
  obtain ⟨eg, -, -⟩ := hv_eq h.unit
  obtain ⟨Hg, He, Hc, Hc0, Hc1, Hc2, -, -, -, Hs, HS, Ht, HT, Hr, HQ⟩ := H_vals h
  obtain ⟨-, -, -, Vc0, Vc1, Vc2, -, -, -, Vs, VS, Vt, VT, Vr, VQ⟩ := Vg_vals h
  obtain ⟨ig', i0h, i1h, i2h, i0v, i1v, i2v⟩ := inv_vals h
  have hC := c0_ne h
  set g := gG (sh ρ) (th ρ) (rh ρ)
  set η := gEta (sh ρ) (th ρ) (rh ρ)
  set χ := gChi (sh ρ) (th ρ) (rh ρ)
  have gne : (g : ℂ) ≠ 0 := by exact_mod_cast hg0.ne'
  have cd : ∀ w : ℂ, conj (w / g) = conj w / g := fun w => by rw [map_div₀, Complex.conj_ofReal]
  have hzz : ζ / g * conj (ζ / g) = η := by
    rw [cd]; field_simp; linear_combination hζ
  have hzs : (g : ℂ) * (ζ / g + conj (ζ / g)) = χ := by
    rw [cd]; field_simp; linear_combination hζc
  have hzz' : conj ζ / g * conj (conj ζ / g) = η := by
    rw [cd, Complex.conj_conj]; field_simp; linear_combination hζ
  have hzs' : (g : ℂ) * (conj ζ / g + conj (conj ζ / g)) = χ := by
    rw [cd, Complex.conj_conj]; field_simp; linear_combination hζc
  -- the third moments of the two sides against their second rows
  have QH : ∀ a c, Q3 (sideMat x y) 1 a c = (Qh 0 0 a c).val ρ + ζ / g * (Qh 0 1 a c).val ρ := by
    intro a c
    have := Qm_val h H hx hy (Hs.trans hs.symm) (HS.trans (by rw [hs])) (Ht.trans ht.symm)
      (HT.trans (by rw [ht])) (Hr.trans hr.symm) (HQ.trans (by rw [hr])) (Hc0.trans (by rw [hr]))
      (Hc1.trans (by rw [ht])) (Hc2.trans (by rw [hs])) Hg He Hc (by rw [gS_eq, hs, ht, hr]) hg0
      (by rw [hT]; exact hzz) (by rw [hT]; exact hzs) (by rw [hs, ht, hr]; exact p0)
      (by rw [hs, ht, hr]; exact p1) (by rw [hs, ht, hr]; exact p2) (by rw [i0h, hs, ht, hr])
      (by rw [i1h, hs, ht, hr]) (by rw [i2h, hs, ht, hr]) 0 a c
    rw [hT] at this; exact this
  have QV : ∀ a c, Q3 (sideMat x' y') 1 a c =
      (qvData 0 0 a c).val ρ + conj ζ / g * (qvData 0 1 a c).val ρ := by
    intro a c
    have := Qm_val h Vg hx' hy' (Vs.trans hs'.symm) (VS.trans (by rw [hs'])) (Vt.trans ht'.symm)
      (VT.trans (by rw [ht'])) (Vr.trans hr'.symm) (VQ.trans (by rw [hr'])) (Vc0.trans (by rw [hr']))
      (Vc1.trans (by rw [ht'])) (Vc2.trans (by rw [hs'])) Hg He Hc (by rw [gS_eq, hs', ht', hr', eg]) hg0
      (by rw [hT']; exact hzz') (by rw [hT']; exact hzs') (by rw [hs', ht', hr']; exact q0)
      (by rw [hs', ht', hr']; exact q1) (by rw [hs', ht', hr']; exact q2) (by rw [i0v, hs', ht', hr'])
      (by rw [i1v, hs', ht', hr']) (by rw [i2v, hs', ht', hr']) 0 a c
    rw [hT'] at this
    have e0 : (Qv 0 0 a c - qvData 0 0 a c).num.validR 2 = true := hqv 0 a c
    have e1 : (Qv 0 1 a c - qvData 0 1 a c).num.validR 2 = true := hqv 1 a c
    have v0 := Frac.val_eq_zero_of_validR e0 ρ
    have v1 := Frac.val_eq_zero_of_validR e1 ρ
    rw [Frac.val_sub hC, sub_eq_zero] at v0 v1
    rw [← v0, ← v1]; exact this
  have M : ∀ a c, (Kmap (Em ρ) * Q3 (sideMat x y) 1 * (Kmap (Em ρ))ᴴ) a c =
      (mhData 0 0 a c).val ρ + ζ / g * (mhData 0 1 a c).val ρ := by
    intro a c
    have e0 : (mhUnred 0 0 a c - mhData 0 0 a c).num.validR 2 = true := hmh 0 a c
    have e1 : (mhUnred 0 1 a c - mhData 0 1 a c).num.validR 2 = true := hmh 1 a c
    have v0 := Frac.val_eq_zero_of_validR e0 ρ
    have v1 := Frac.val_eq_zero_of_validR e1 ρ
    rw [Frac.val_sub hC, sub_eq_zero] at v0 v1
    rw [← v0, ← v1]
    simp only [mhUnred, Frac.val_add hC, Frac.val_mul, Matrix.mul_apply, Fin.sum_univ_three, ← K_val h,
      ← Kst_val h, QH]
    ring
  have hcons : (∑ i, conj ((sideMat x' y')ᵀ i 1)) * (∑ j, conj (sideMat x y 1 j)) =
      (if (0 : ℕ) = 0 then Vg.S else Vg.T).val ρ * (if (0 : ℕ) = 0 then H.S else H.T).val ρ := by
    simp [sideMat, Fin.sum_univ_three, VS, HS, ← hs, ← hs', sS, map_add]
  rw [W_eq _ _ _ (horiz_cand h hx hy hs ht hr) (vert_cand h hx' hy' hs' ht' hr') hBdet,
    Matrix.transpose_transpose, hcons]
  simp only [QV, M]
  have f0 := Frac.val_eq_zero_of_validR hF.1 ρ
  have f1 := Frac.val_eq_zero_of_validR hF.2 ρ
  simp only [F0, F1, FlatCircuits.hF, Frac.val_sub hC, Frac.val_add hC, Frac.val_mul, sum9_val hC, Hc, He, ig'] at f0 f1
  refine W_alg (z := ζ / g) (zb := conj ζ / g) (hh := (χ : ℂ) * (g : ℂ)⁻¹)
    (η := (η : ℂ)) ?_ (by rw [← cd]; exact hzz) f0 f1
  rw [← hzs, cd]; field_simp

/-! ### The other three weighted defects, by relabelling (handoff M)

Exchanging rows 1, 2 of the corner (`E ↦ P E`, seeds `(a, b, c, d) ↦ (c, d, a, b)`) and of the horizontal side
(`B ↦ P B`, rows `x, y ↦ y, x`) keeps the forced block and swaps `W₁₁` with `W₁₂` (`W_rowPerm`); exchanging columns
(`E ↦ E P`, seeds `↦ (b, a, d, c)`, `C ↦ C P`) swaps `W₁q` with `W₂q` (`W_colPerm`).  The relabelled seed is again
strict, with the same invariants, and the relabelled sides are again actual sides with the same signatures. -/

/-- The seeds of `P E`: rows 1 and 2 of the corner exchanged. -/
def rowSwap (ρ : Fin 4 → ℂ) : Fin 4 → ℂ := ![ρ 2, ρ 3, ρ 0, ρ 1]
/-- The seeds of `E P`: columns 1 and 2 of the corner exchanged. -/
def colSwap (ρ : Fin 4 → ℂ) : Fin 4 → ℂ := ![ρ 1, ρ 0, ρ 3, ρ 2]

theorem Em_rowSwap : Em (rowSwap ρ) = (Em ρ).submatrix (Equiv.swap 1 2) id := by
  ext i j; fin_cases i <;> fin_cases j <;> simp [Em, Hadamard6.corner, rowSwap, Equiv.swap_apply_of_ne_of_ne]

theorem Em_colSwap : Em (colSwap ρ) = (Em ρ).submatrix id (Equiv.swap 1 2) := by
  ext i j; fin_cases i <;> fin_cases j <;> simp [Em, Hadamard6.corner, colSwap, Equiv.swap_apply_of_ne_of_ne]

theorem sh_rowSwap : sh (rowSwap ρ) = th ρ := rfl
theorem th_rowSwap : th (rowSwap ρ) = sh ρ := rfl
theorem rh_rowSwap : rh (rowSwap ρ) = conj (rh ρ) := by
  simp only [rh, rowSwap, map_neg, map_add, map_one, map_mul, Complex.conj_conj]; simp; ring
theorem sv_rowSwap : sv (rowSwap ρ) = sv ρ := by simp only [sv, rowSwap]; simp; ring
theorem tv_rowSwap : tv (rowSwap ρ) = tv ρ := by simp only [tv, rowSwap]; simp; ring
theorem rv_rowSwap : rv (rowSwap ρ) = rv ρ := by simp only [rv, rowSwap]; simp; ring

theorem sh_colSwap : sh (colSwap ρ) = sh ρ := by simp only [sh, colSwap]; simp; ring
theorem th_colSwap : th (colSwap ρ) = th ρ := by simp only [th, colSwap]; simp; ring
theorem rh_colSwap : rh (colSwap ρ) = rh ρ := by simp only [rh, colSwap]; simp; ring
theorem sv_colSwap : sv (colSwap ρ) = tv ρ := rfl
theorem tv_colSwap : tv (colSwap ρ) = sv ρ := rfl
theorem rv_colSwap : rv (colSwap ρ) = conj (rv ρ) := by
  simp only [rv, colSwap, map_neg, map_add, map_one, map_mul, Complex.conj_conj]; simp; ring

/-- The invariants are unchanged by `(s, t, r) ↦ (t, s, r̄)`. -/
theorem gram_swap (s t r : ℂ) :
    gG t s (conj r) = gG s t r ∧ gEta t s (conj r) = gEta s t r ∧ gChi t s (conj r) = gChi s t r ∧
      gR t s (conj r) = gR s t r := by
  have hX : gX (conj r) = gX r := Complex.normSq_conj r
  have hP : gPs t s (conj r) = gPs s t r := by simp only [gPs, hX]; ring
  have hJ : gJ t s (conj r) = gJ s t r := by
    simp only [gJ]
    rw [show t * conj r * conj s = conj (s * r * conj t) by simp only [map_mul, Complex.conj_conj]; ring,
      Complex.conj_re]
  have hG : gG t s (conj r) = gG s t r := by simp only [gG, hP, hJ]
  have hE : gEta t s (conj r) = gEta s t r := by simp only [gEta, hP, hJ]
  have hC : gChi t s (conj r) = gChi s t r := by simp only [gChi, hP, hJ, hX]; ring
  exact ⟨hG, hE, hC, by simp only [gR, hG, hE, hC]⟩

theorem Strict.rowSwap (h : Strict ρ) : Strict (rowSwap ρ) :=
  ⟨fun i => by fin_cases i <;> simp [FlatCircuits.rowSwap, h.unit],
    by rw [sh_rowSwap, th_rowSwap, rh_rowSwap, (gram_swap _ _ _).2.2.2]; exact h.R⟩

theorem Strict.colSwap (h : Strict ρ) : Strict (colSwap ρ) :=
  ⟨fun i => by fin_cases i <;> simp [FlatCircuits.colSwap, h.unit],
    by rw [sh_colSwap, th_colSwap, rh_colSwap]; exact h.R⟩

/-- The side with its two lower rows exchanged. -/
theorem sideMat_swap (x y : Fin 3 → ℂ) : sideMat y x = (sideMat x y).submatrix (Equiv.swap 1 2) id := by
  ext i j; fin_cases i <;> simp [sideMat, Equiv.swap_apply_of_ne_of_ne]

theorem sideMatT_swap (x y : Fin 3 → ℂ) :
    (sideMat y x)ᵀ = ((sideMat x y)ᵀ).submatrix id (Equiv.swap 1 2) := by
  ext i j; fin_cases j <;> simp [sideMat, Equiv.swap_apply_of_ne_of_ne]

theorem rS_swap (x y : Fin 3 → ℂ) : rS y x = conj (rS x y) := by
  simp only [rS, map_add, map_mul, Complex.conj_conj]; ring

theorem TS_swap (x y : Fin 3 → ℂ) : TS y x = TS x y := by
  have hp : piS y x = piS x y := by simp only [piS]; ring
  have hh : hS y x = -hS x y := by simp only [hS]; ring
  simp only [TS, hp, hh, neg_sq]; ring

theorem det_sideMat_swap (x y : Fin 3 → ℂ) : (sideMat y x).det = -(sideMat x y).det := by
  rw [sideMat_swap, Matrix.det_permute, Equiv.Perm.sign_swap (by decide)]; simp

/-- The weighted defects `W₁q` (`q ≠ 0`): `W₁₂` is `W₁₁` at the row-relabelled seed. -/
theorem W_zero_row1 (h : Strict ρ)
    (hmh : ∀ i : Fin 2, ∀ a c : Fin 3, (mhUnred 0 i.val a c - mhData 0 i.val a c).num.validR 2 = true)
    (hqv : ∀ i : Fin 2, ∀ a c : Fin 3, (Qv 0 i.val a c - qvData 0 i.val a c).num.validR 2 = true)
    (hF : (F0 0 0).num.validR 2 = true ∧ (F1 0 0).num.validR 2 = true)
    {x y x' y' : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1) (hy : ∀ j, Complex.normSq (y j) = 1)
    (hx' : ∀ j, Complex.normSq (x' j) = 1) (hy' : ∀ j, Complex.normSq (y' j) = 1)
    (hs : sS x = sh ρ) (ht : sS y = th ρ) (hr : rS x y = rh ρ)
    (hs' : sS x' = sv ρ) (ht' : sS y' = tv ρ) (hr' : rS x' y' = rv ρ) {ζ : ℂ}
    (hT : TS x y = ζ) (hT' : TS x' y' = conj ζ)
    (hζ : ζ * conj ζ = ((gG (sh ρ) (th ρ) (rh ρ) : ℝ) : ℂ) ^ 2 * (gEta (sh ρ) (th ρ) (rh ρ) : ℂ))
    (hζc : ζ + conj ζ = (gChi (sh ρ) (th ρ) (rh ρ) : ℂ))
    (hBdet : IsUnit (sideMat x y).det) (q : Fin 3) (hq : q ≠ 0) :
    W (Em ρ) (sideMat x y) (sideMat x' y')ᵀ 1 q = 0 := by
  obtain ⟨hG, hE, hC, -⟩ := gram_swap (sh ρ) (th ρ) (rh ρ)
  fin_cases q
  · exact absurd rfl hq
  · exact W_zero11 h hmh hqv hF hx hy hx' hy' hs ht hr hs' ht' hr' hT hT' hζ hζc hBdet
  · have e := W_zero11 h.rowSwap hmh hqv hF hy hx hx' hy' (by rw [sh_rowSwap]; exact ht)
      (by rw [th_rowSwap]; exact hs) (by rw [rS_swap, rh_rowSwap, hr]) (by rw [sv_rowSwap]; exact hs')
      (by rw [tv_rowSwap]; exact ht') (by rw [rv_rowSwap]; exact hr') (by rw [TS_swap]; exact hT) hT'
      (by rw [sh_rowSwap, th_rowSwap, rh_rowSwap, hG, hE]; exact hζ)
      (by rw [sh_rowSwap, th_rowSwap, rh_rowSwap, hC]; exact hζc)
      (by rw [det_sideMat_swap]; exact hBdet.neg)
    rw [Em_rowSwap, sideMat_swap x y, W_rowPerm] at e
    exact e

/-- **Matched flatness at a strict seed point**: for actual sides on the two conjugate roots, the four weighted
defects vanish.  `W₁₁` is checked (`W_zero11`); the other three are `W₁₁` at relabelled seeds. -/
theorem W_zero (h : Strict ρ)
    (hmh : ∀ i : Fin 2, ∀ a c : Fin 3, (mhUnred 0 i.val a c - mhData 0 i.val a c).num.validR 2 = true)
    (hqv : ∀ i : Fin 2, ∀ a c : Fin 3, (Qv 0 i.val a c - qvData 0 i.val a c).num.validR 2 = true)
    (hF : (F0 0 0).num.validR 2 = true ∧ (F1 0 0).num.validR 2 = true)
    {x y x' y' : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1) (hy : ∀ j, Complex.normSq (y j) = 1)
    (hx' : ∀ j, Complex.normSq (x' j) = 1) (hy' : ∀ j, Complex.normSq (y' j) = 1)
    (hs : sS x = sh ρ) (ht : sS y = th ρ) (hr : rS x y = rh ρ)
    (hs' : sS x' = sv ρ) (ht' : sS y' = tv ρ) (hr' : rS x' y' = rv ρ) {ζ : ℂ}
    (hT : TS x y = ζ) (hT' : TS x' y' = conj ζ)
    (hζ : ζ * conj ζ = ((gG (sh ρ) (th ρ) (rh ρ) : ℝ) : ℂ) ^ 2 * (gEta (sh ρ) (th ρ) (rh ρ) : ℂ))
    (hζc : ζ + conj ζ = (gChi (sh ρ) (th ρ) (rh ρ) : ℂ))
    (hBdet : IsUnit (sideMat x y).det) (p q : Fin 3) (hp : p ≠ 0) (hq : q ≠ 0) :
    W (Em ρ) (sideMat x y) (sideMat x' y')ᵀ p q = 0 := by
  fin_cases p
  · exact absurd rfl hp
  · exact W_zero_row1 h hmh hqv hF hx hy hx' hy' hs ht hr hs' ht' hr' hT hT' hζ hζc hBdet q hq
  · have e := W_zero_row1 h.colSwap hmh hqv hF hx hy hy' hx' (by rw [sh_colSwap]; exact hs)
      (by rw [th_colSwap]; exact ht) (by rw [rh_colSwap]; exact hr) (by rw [sv_colSwap]; exact ht')
      (by rw [tv_colSwap]; exact hs') (by rw [rS_swap, rv_colSwap, hr']) hT (by rw [TS_swap]; exact hT')
      (by rw [sh_colSwap, th_colSwap, rh_colSwap]; exact hζ) (by rw [sh_colSwap, th_colSwap, rh_colSwap]; exact hζc)
      hBdet q hq
    rw [Em_colSwap, sideMatT_swap x' y', W_colPerm] at e
    exact e

end Seeds

end NoFourMUBs.L1.FlatCircuits
