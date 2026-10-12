import NoFourMUBs.L1.SideConstruction
import NoFourMUBs.L1.SideIdentities

/-!
# Side existence for arbitrary Gram data

`exists_side_gram`: for Gram data `(s, t, r)` with `R > 0` and `det (6 I − G) ≥ 0`, and either root `ζ`
of the sheet quadratic, there is a normalised phase side `(1; x; y)` with Gram data `(s, t, r)` and
signature `ζ`.

Proof: rotate by row phases so that `s, t ≥ 0` (the invariants and the signature are unchanged), check
the hypotheses of the construction there (`SideInput.valid_of_rotated`, the domain inequalities of
`SIDE_EXISTENCE.md` §2), build the side (`SideInput.exists_side`), and rotate back.
-/

open ComplexConjugate NoFourMUBs.Side NoFourMUBs.Kronecker Circ

noncomputable section

namespace NoFourMUBs.L1

/-! ### The Gram invariants (as in `Step2/Statements.lean`) -/

def gX (s : ℂ) : ℝ := Complex.normSq s
def gPs (s t r : ℂ) : ℝ := gX s + gX t + gX r
def gJ (s t r : ℂ) : ℝ := 2 * (s * r * conj t).re
def gG (s t r : ℂ) : ℝ := 27 - 3 * gPs s t r + gJ s t r
def gEta (s t r : ℂ) : ℝ := 9 - gPs s t r + gJ s t r
def gChi (s t r : ℂ) : ℝ :=
  gX s * gX t + gX s * gX r + gX t * gX r - gX s * gX t * gX r - (gPs s t r - 9) * (gPs s t r - 18) +
    (gPs s t r - 15) * gJ s t r
def gR (s t r : ℂ) : ℝ := 4 * gG s t r ^ 2 * gEta s t r - gChi s t r ^ 2

/-! ### Row-phase rotation -/

section Rotation

variable {α β : ℂ}

theorem gX_rot (hα : Complex.normSq α = 1) (s : ℂ) : gX (α * s) = gX s := by
  simp [gX, Complex.normSq_mul, hα]

theorem gJ_rot (hα : Complex.normSq α = 1) (hβ : Complex.normSq β = 1) (s t r : ℂ) :
    gJ (conj α * s) (conj β * t) (α * conj β * r) = gJ s t r := by
  have hα' : conj α * α = 1 := by rw [mul_comm, Complex.mul_conj, hα, Complex.ofReal_one]
  have hβ' : conj β * β = 1 := by rw [mul_comm, Complex.mul_conj, hβ, Complex.ofReal_one]
  have : conj α * s * (α * conj β * r) * conj (conj β * t) = s * r * conj t := by
    simp only [map_mul, Complex.conj_conj]
    linear_combination (s * r * conj t * conj β * β) * hα' + (s * r * conj t) * hβ'
  unfold gJ; rw [this]

theorem rot_invariants (hα : Complex.normSq α = 1) (hβ : Complex.normSq β = 1) (s t r : ℂ) :
    gG (conj α * s) (conj β * t) (α * conj β * r) = gG s t r ∧
    gEta (conj α * s) (conj β * t) (α * conj β * r) = gEta s t r ∧
    gChi (conj α * s) (conj β * t) (α * conj β * r) = gChi s t r := by
  have hα' : Complex.normSq (conj α) = 1 := by rwa [Complex.normSq_conj]
  have hβ' : Complex.normSq (conj β) = 1 := by rwa [Complex.normSq_conj]
  have h1 : gX (conj α * s) = gX s := gX_rot hα' s
  have h2 : gX (conj β * t) = gX t := gX_rot hβ' t
  have h3 : gX (α * conj β * r) = gX r := by
    rw [gX_rot (by rw [Complex.normSq_mul, hα, hβ', one_mul]) r]
  have hJ := gJ_rot hα hβ s t r
  simp only [gG, gEta, gChi, gPs, h1, h2, h3, hJ, and_self]

theorem TS_rot (hα : Complex.normSq α = 1) (hβ : Complex.normSq β = 1) (x y : Fin 3 → ℂ) :
    TS (fun j => α * x j) (fun j => β * y j) = TS x y := by
  have hα' : α * conj α = 1 := by rw [Complex.mul_conj, hα, Complex.ofReal_one]
  have hβ' : β * conj β = 1 := by rw [Complex.mul_conj, hβ, Complex.ofReal_one]
  have key : TS (fun j => α * x j) (fun j => β * y j) = (α * conj α) ^ 3 * (β * conj β) ^ 3 * TS x y := by
    simp only [TS, piS, hS, uS, map_mul]; ring
  rw [key, hα', hβ']; ring

end Rotation

/-! ### The domain inequalities (`SIDE_EXISTENCE.md` §2) -/

theorem domain {s t r : ℂ} (hR : 0 < gR s t r) (hdet : 0 ≤ 27 - 3 * gPs s t r - gJ s t r) :
    0 < gEta s t r ∧ 0 < gG s t r ∧ gX s < 9 ∧ gX t < 9 := by
  have hη : 0 < gEta s t r := by
    by_contra h
    have : gR s t r ≤ 0 := by
      unfold gR; nlinarith [sq_nonneg (gG s t r), sq_nonneg (gChi s t r)]
    linarith
  have hX : 0 ≤ gX s := Complex.normSq_nonneg _
  have hY : 0 ≤ gX t := Complex.normSq_nonneg _
  have hZ : 0 ≤ gX r := Complex.normSq_nonneg _
  have hp : gPs s t r < 9 := by unfold gEta at hη; linarith
  refine ⟨hη, ?_, ?_, ?_⟩
  · unfold gG; unfold gEta at hη; linarith
  · unfold gPs at hp; linarith
  · unfold gPs at hp; linarith

/-! ### Evaluating the circuits on rotated data -/

namespace SideInput

variable {D : SideInput}

theorem cast_normSq (z : ℂ) : ((Complex.normSq z : ℝ) : ℂ) = z * conj z := (Complex.mul_conj z).symm

theorem cast_twoRe (z : ℂ) : ((2 * z.re : ℝ) : ℂ) = z + conj z := by
  rw [Complex.add_conj]

theorem eval_inv (hs : conj D.s = D.s) (ht : conj D.t = D.t) :
    ((gG D.s D.t D.r : ℝ) : ℂ) = SideCircuits.g.eval D.pt ∧
    ((gEta D.s D.t D.r : ℝ) : ℂ) = SideCircuits.eta.eval D.pt ∧
    ((gChi D.s D.t D.r : ℝ) : ℂ) = SideCircuits.chi.eval D.pt := by
  have hX : ((gX D.s : ℝ) : ℂ) = D.s * D.s := by rw [gX, cast_normSq, hs]
  have hY : ((gX D.t : ℝ) : ℂ) = D.t * D.t := by rw [gX, cast_normSq, ht]
  have hZ : ((gX D.r : ℝ) : ℂ) = D.r * conj D.r := by rw [gX, cast_normSq]
  have hJ : ((gJ D.s D.t D.r : ℝ) : ℂ) = D.s * D.r * D.t + D.s * conj D.r * D.t := by
    rw [gJ, cast_twoRe]; simp only [map_mul, hs, ht]; try ring
  refine ⟨?_, ?_, ?_⟩
  · simp only [gG, gPs]; push_cast [hX, hY, hZ, hJ]
    simp only [SideCircuits.g, SideCircuits.p, SideCircuits.X, SideCircuits.Y, SideCircuits.Z,
      SideCircuits.J, SideCircuits.S, SideCircuits.T, eval_add', eval_sub', eval_mul', eval_ofNat,
      ev_s, ev_t, ev_r, ev_Q]; try ring
  · simp only [gEta, gPs]; push_cast [hX, hY, hZ, hJ]
    simp only [SideCircuits.eta, SideCircuits.p, SideCircuits.X, SideCircuits.Y, SideCircuits.Z,
      SideCircuits.J, SideCircuits.S, SideCircuits.T, eval_add', eval_sub', eval_mul', eval_ofNat,
      ev_s, ev_t, ev_r, ev_Q]; try ring
  · simp only [gChi, gPs]; push_cast [hX, hY, hZ, hJ]
    simp only [SideCircuits.chi, SideCircuits.p, SideCircuits.X, SideCircuits.Y, SideCircuits.Z,
      SideCircuits.J, SideCircuits.S, SideCircuits.T, eval_add', eval_sub', eval_mul', eval_ofNat,
      ev_s, ev_t, ev_r, ev_Q]; try ring

end SideInput

/-! ### Side existence -/

theorem phase_exists (s : ℂ) : ∃ α : ℂ, Complex.normSq α = 1 ∧ conj (conj α * s) = conj α * s := by
  refine ⟨Complex.exp (s.arg * Complex.I), ?_, ?_⟩
  · rw [Complex.normSq_eq_norm_sq, Complex.norm_exp_ofReal_mul_I, one_pow]
  · have hs : s = (‖s‖ : ℂ) * Complex.exp (s.arg * Complex.I) := (Complex.norm_mul_exp_arg_mul_I s).symm
    have key : conj (Complex.exp (s.arg * Complex.I)) = Complex.exp (-(s.arg * Complex.I)) := by
      rw [← Complex.exp_conj, map_mul, Complex.conj_ofReal, Complex.conj_I, mul_neg]
    have h : conj (Complex.exp (s.arg * Complex.I)) * s = (‖s‖ : ℂ) := by
      rw [key]
      conv_lhs => arg 2; rw [hs]
      rw [mul_left_comm, ← Complex.exp_add, neg_add_cancel, Complex.exp_zero, mul_one]
    rw [h, Complex.conj_ofReal]

theorem ne_of_norm {P : ℂ} {g η χ c : ℝ} (hη : 0 < η) (hR : 0 < 4 * g ^ 2 * η - χ ^ 2)
    (hn : Complex.normSq P = g ^ 2 + c * χ + c ^ 2 * η) : P ≠ 0 := by
  intro h0
  rw [h0, Complex.normSq_zero] at hn
  nlinarith [sq_nonneg (2 * c * η + χ)]

namespace SideInput

variable {D : SideInput}

theorem norms (hs : conj D.s = D.s) (ht : conj D.t = D.t) (hg : (D.g : ℂ) = SideCircuits.g.eval D.pt)
    (hη : (D.η : ℂ) = SideCircuits.eta.eval D.pt) (hχ : (D.χ : ℂ) = SideCircuits.chi.eval D.pt) :
    Complex.normSq D.P0' = D.g ^ 2 + D.c0 * D.χ + D.c0 ^ 2 * D.η ∧
    Complex.normSq D.P1' = D.g ^ 2 + D.c1 * D.χ + D.c1 ^ 2 * D.η ∧
    Complex.normSq D.P2' = D.g ^ 2 + D.c2 * D.χ + D.c2 ^ 2 * D.η := by
  have hB2 : SideCircuits.B2.eval D.pt = conj D.P2' := by
    simp only [SideCircuits.B2, SideCircuits.X, SideCircuits.S, eval_add', eval_mul', eval_sub', eval_ofNat,
      ev_s, ev_t, ev_r, P2', NoFourMUBs.Side.P2, map_add, map_mul, map_pow, Complex.conj_conj,
      Complex.conj_ofReal, hs, ht]
    push_cast [← Complex.mul_conj, hs]; ring
  have key : ∀ (x : Circ 4), (SideCircuits.L x).val (C := SideCircuits.C) D.pt D.ζ = 0 → x.eval D.pt = 0 :=
    fun x hx => by rwa [val_L] at hx
  have h0 := key _ (QF.val_eq_zero SideCircuits.norm0_valid)
  have h1 := key _ (QF.val_eq_zero SideCircuits.norm1_valid)
  have h2 := key _ (QF.val_eq_zero SideCircuits.norm2_valid)
  simp only [SideCircuits.norm0, SideCircuits.norm1, SideCircuits.norm2, eval_sub', eval_mul', eval_add',
    ← ev_P0, ← ev_B0 hs ht, ← ev_P1 hs ht, ← ev_B1 hs ht, ← ev_P2 hs ht, hB2, ← hg, ← hη, ← hχ, ← ev_c0,
    ← ev_c1 hs ht, ← ev_c2 hs ht, Complex.mul_conj] at h0 h1 h2
  refine ⟨?_, ?_, ?_⟩ <;> [have h := h0; have h := h1; have h := h2] <;>
    (have := sub_eq_zero.1 h; apply Complex.ofReal_injective; push_cast; rw [this]; ring)

end SideInput

/-- **Side existence** for Gram data `(s, t, r)` (`SIDE_EXISTENCE.md`, Theorem (1)). -/
theorem exists_side_gram {s t r ζ : ℂ} (hR : 0 < gR s t r) (hdet : 0 ≤ 27 - 3 * gPs s t r - gJ s t r)
    (hζ : ζ ^ 2 = (gChi s t r : ℂ) * ζ - ((gG s t r : ℝ) : ℂ) ^ 2 * (gEta s t r : ℂ))
    (hζc : conj ζ = (gChi s t r : ℂ) - ζ) :
    ∃ x y : Fin 3 → ℂ, (∀ j, Complex.normSq (x j) = 1) ∧ (∀ j, Complex.normSq (y j) = 1) ∧
      sS x = s ∧ sS y = t ∧ rS x y = r ∧ TS x y = ζ := by
  obtain ⟨hη, hg, hs9, ht9⟩ := domain hR hdet
  obtain ⟨α, hα, hαs⟩ := phase_exists s
  obtain ⟨β, hβ, hβt⟩ := phase_exists t
  obtain ⟨hGi, hEi, hCi⟩ := rot_invariants hα hβ s t r
  let D : SideInput := ⟨conj α * s, conj β * t, α * conj β * r, ζ, gG s t r, gEta s t r, gChi s t r⟩
  have hαc : Complex.normSq (conj α) = 1 := by rwa [Complex.normSq_conj]
  have hβc : Complex.normSq (conj β) = 1 := by rwa [Complex.normSq_conj]
  obtain ⟨eg, eη, eχ⟩ := SideInput.eval_inv (D := D) hαs hβt
  rw [hGi] at eg; rw [hEi] at eη; rw [hCi] at eχ
  obtain ⟨n0, n1, n2⟩ := SideInput.norms (D := D) hαs hβt eg eη eχ
  have hRot : D.Rotated :=
    { s_real := hαs
      t_real := hβt
      g_eq := eg
      eta_eq := eη
      chi_eq := eχ
      g_pos := hg
      s_lt := by
        change Complex.normSq (conj α * s) < 9
        rw [Complex.normSq_mul, hαc, one_mul]; exact hs9
      t_lt := by
        change Complex.normSq (conj β * t) < 9
        rw [Complex.normSq_mul, hβc, one_mul]; exact ht9
      P0_ne := ne_of_norm hη hR n0
      P1_ne := ne_of_norm hη hR n1
      P2_ne := ne_of_norm hη hR n2
      sheet := hζ
      conj_ζ := hζc }
  obtain ⟨x, y, hx, hy, hsx, hty, hr, hT, -, -, -⟩ := D.exists_side (SideInput.valid_of_rotated hRot)
  have hαα : α * conj α = 1 := by rw [Complex.mul_conj, hα, Complex.ofReal_one]
  have hββ : β * conj β = 1 := by rw [Complex.mul_conj, hβ, Complex.ofReal_one]
  refine ⟨fun j => α * x j, fun j => β * y j, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · intro j; rw [Complex.normSq_mul, hα, hx j, one_mul]
  · intro j; rw [Complex.normSq_mul, hβ, hy j, one_mul]
  · change α * x 0 + α * x 1 + α * x 2 = s
    have : x 0 + x 1 + x 2 = conj α * s := hsx
    linear_combination α * this + s * hαα
  · change β * y 0 + β * y 1 + β * y 2 = t
    have : y 0 + y 1 + y 2 = conj β * t := hty
    linear_combination β * this + t * hββ
  · change β * y 0 * conj (α * x 0) + β * y 1 * conj (α * x 1) + β * y 2 * conj (α * x 2) = r
    have : y 0 * conj (x 0) + y 1 * conj (x 1) + y 2 * conj (x 2) = α * conj β * r := hr
    simp only [map_mul]
    linear_combination β * conj α * this + r * hββ + r * β * conj β * hαα
  · rw [TS_rot hα hβ]; exact hT

end NoFourMUBs.L1
