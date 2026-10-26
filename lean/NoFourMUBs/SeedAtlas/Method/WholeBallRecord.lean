import NoFourMUBs.SeedAtlas.Cert

/-!
# The whole-ball remainder and the recorded-data correction

Return Z, THEOREM.md §5 (12). The lift here is the continuous centre-based lift;
there is no replacement by entrywise principal arguments. The final theorem has
exactly the shape of `SeedBallCert.hC1` (and `KernelAtlas.Seed.ballCertH`'s input).
It is the *last* step: strictness and the representative still need to be proved.
-/

open Matrix Hadamard6 NoFourMUBs.Step2

namespace NoFourMUBs.SeedAtlas.Method.WholeBall

/-- Z §5 (12), direct remainder from the quadratic predictor and normal tube. -/
theorem direct_remainder {Q Pexact Hnormal Znormal : RMat6}
    {Uexact : Fin 4 → RMat6} {w : Fin 4 → ℝ} {r β x τ : ℝ}
    (hw : wnorm w ≤ r) (hβ : 0 ≤ β)
    (hquad : frob Hnormal ≤ β * wnorm w ^ 2)
    (hnormal : frob Znormal ≤ x * τ)
    (hQ : Q = Pexact + tang Uexact w + (1 / 2 : ℝ) • Hnormal + Znormal) :
    frob (Q - Pexact - tang Uexact w) ≤ β * r ^ 2 / 2 + x * τ := by
  have hs : wnorm w ^ 2 ≤ r ^ 2 := pow_le_pow_left₀ (wnorm_nonneg w) hw 2
  have heq : Q - Pexact - tang Uexact w = (1 / 2 : ℝ) • Hnormal + Znormal := by rw [hQ]; abel
  rw [heq]
  calc
    frob ((1 / 2 : ℝ) • Hnormal + Znormal)
        ≤ frob ((1 / 2 : ℝ) • Hnormal) + frob Znormal := frob_add_le _ _
    _ = (1 / 2 : ℝ) * frob Hnormal + frob Znormal := by rw [frob_smul]; norm_num
    _ ≤ (1 / 2 : ℝ) * (β * r ^ 2) + x * τ :=
      add_le_add (mul_le_mul_of_nonneg_left
        (hquad.trans (mul_le_mul_of_nonneg_left hs hβ)) (by norm_num)) hnormal
    _ = β * r ^ 2 / 2 + x * τ := by ring

/-- The operator-norm error in the recorded frame is charged only once, as
`r εU`, and the centre error only once, as `εP`. -/
theorem recorded_remainder {Q Pexact P : RMat6} {Uexact U : Fin 4 → RMat6}
    {w : Fin 4 → ℝ} {r ndirect εP εU : ℝ}
    (hw : wnorm w ≤ r) (hεU : 0 ≤ εU)
    (hQ : frob (Q - Pexact - tang Uexact w) ≤ ndirect)
    (hP : frob (Pexact - P) ≤ εP)
    (hU : ∀ v, frob (tang Uexact v - tang U v) ≤ εU * wnorm v) :
    frob (Q - P - tang U w) ≤ ndirect + εP + r * εU := by
  have heq : Q - P - tang U w =
      (Q - Pexact - tang Uexact w) + (Pexact - P) + (tang Uexact w - tang U w) := by abel
  rw [heq]
  calc
    frob ((Q - Pexact - tang Uexact w) + (Pexact - P) + (tang Uexact w - tang U w))
        ≤ frob ((Q - Pexact - tang Uexact w) + (Pexact - P)) +
          frob (tang Uexact w - tang U w) := frob_add_le _ _
    _ ≤ frob (Q - Pexact - tang Uexact w) + frob (Pexact - P) +
          frob (tang Uexact w - tang U w) := add_le_add (frob_add_le _ _) le_rfl
    _ ≤ ndirect + εP + εU * r := add_le_add (add_le_add hQ hP)
      ((hU w).trans (mul_le_mul_of_nonneg_left hw hεU))
    _ = ndirect + εP + r * εU := by ring

/-- Z §5's recorded-data step, in `SeedBallCert.hC1` form. The centre-based lift
allows the integer winding to be zero. Strictness and `RepO` are explicit inputs,
not consequences of the remainder inequality. -/
theorem hC1_of_representatives {theta0 : Fin 4 → ℝ} {Mth : Matrix (Fin 4) (Fin 4) ℝ}
    {o : ℤˣ} {Pexact P : RMat6} {Uexact U : Fin 4 → RMat6}
    {r ndirect εP εU n : ℝ} (hεU : 0 ≤ εU)
    (hP : frob (Pexact - P) ≤ εP)
    (hU : ∀ v, frob (tang Uexact v - tang U v) ≤ εU * wnorm v)
    (hn : ndirect + εP + r * εU ≤ n)
    (hfamily : ∀ w, wnorm w ≤ r →
      0 < seedR (seedOf (theta0 + Mth *ᵥ w)) ∧
      ∃ Q : RMat6, RepO o (seedOf (theta0 + Mth *ᵥ w)) (phaseMat Q) ∧
        frob (Q - Pexact - tang Uexact w) ≤ ndirect) :
    ∀ w : Fin 4 → ℝ, wnorm w ≤ r →
      0 < seedR (seedOf (theta0 + Mth *ᵥ w)) ∧
      ∃ Q : RMat6, ∃ N : Matrix I6 I6 ℤ,
        RepO o (seedOf (theta0 + Mth *ᵥ w)) (phaseMat Q) ∧
        frob (Q - P - tang U w - wind N) ≤ n := by
  intro w hw
  obtain ⟨hR, Q, hrep, hQ⟩ := hfamily w hw
  refine ⟨hR, Q, 0, hrep, ?_⟩
  have hwind : wind (0 : Matrix I6 I6 ℤ) = 0 := by ext i j; simp [wind]
  rw [hwind, sub_zero]
  exact (recorded_remainder hw hεU hQ hP hU).trans hn

end NoFourMUBs.SeedAtlas.Method.WholeBall
