import NoFourMUBs.Step2.SideAlg

/-!
# The Gram invariants of a side

For Gram data `(s, t, r)` (the entries `G₂₁, G₃₁, G₃₂` of `G = B B*` for a normalised side `B`): the
invariants `X, p, J, g, η, χ, R` of `PROOF_v2.md` §1, the domain inequalities of `SIDE_EXISTENCE.md` §2, and
the norm identities `|Pⱼ|² = g² + cⱼ χ + cⱼ² η` (6), which make `P₀, P₁, P₂` nonzero when `R > 0`.
-/

open ComplexConjugate NoFourMUBs.Side

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

theorem cast_normSq (z : ℂ) : ((Complex.normSq z : ℝ) : ℂ) = z * conj z := (Complex.mul_conj z).symm

theorem cast_twoRe (z : ℂ) : ((2 * z.re : ℝ) : ℂ) = z + conj z := by
  rw [Complex.add_conj]

theorem cast_gJ (s t r : ℂ) : ((gJ s t r : ℝ) : ℂ) = s * r * conj t + conj s * conj r * t := by
  rw [gJ, cast_twoRe]; simp [map_mul]

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

/-! ### The norm identities (6) -/

/-- `|Pⱼ|² = g² + cⱼ χ + cⱼ² η` for `j = 0, 1, 2`, with `c₀ = 9 − |r|²`, `c₁ = 9 − |t|²`, `c₂ = 9 − |s|²`. -/
theorem normSq_P (s t r : ℂ) :
    Complex.normSq (P0 s t r) = gG s t r ^ 2 + cR r * gChi s t r + cR r ^ 2 * gEta s t r ∧
    Complex.normSq (P1 s t r) = gG s t r ^ 2 + cR t * gChi s t r + cR t ^ 2 * gEta s t r ∧
    Complex.normSq (P2 s t r) = gG s t r ^ 2 + cR s * gChi s t r + cR s ^ 2 * gEta s t r := by
  refine ⟨?_, ?_, ?_⟩ <;> apply Complex.ofReal_injective <;>
    simp only [cast_normSq, P0, P1, P2, map_add, map_mul, map_pow, Complex.conj_conj, Complex.conj_ofReal] <;>
    push_cast [gG, gEta, gChi, gPs, gX, cR, cast_gJ, cast_normSq] <;> ring

theorem ne_of_norm {P : ℂ} {g η χ c : ℝ} (hη : 0 < η) (hR : 0 < 4 * g ^ 2 * η - χ ^ 2)
    (hn : Complex.normSq P = g ^ 2 + c * χ + c ^ 2 * η) : P ≠ 0 := by
  intro h0
  rw [h0, Complex.normSq_zero] at hn
  nlinarith [sq_nonneg (2 * c * η + χ)]

/-- `R > 0` (with `det (6 I − G) ≥ 0`) makes `P₀, P₁, P₂` nonzero. -/
theorem P_ne_gram {s t r : ℂ} (hR : 0 < gR s t r) (hdet : 0 ≤ 27 - 3 * gPs s t r - gJ s t r) :
    P0 s t r ≠ 0 ∧ P1 s t r ≠ 0 ∧ P2 s t r ≠ 0 := by
  obtain ⟨hη, -, -, -⟩ := domain hR hdet
  obtain ⟨n0, n1, n2⟩ := normSq_P s t r
  exact ⟨ne_of_norm hη hR n0, ne_of_norm hη hR n1, ne_of_norm hη hR n2⟩

end NoFourMUBs.L1
