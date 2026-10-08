import Worker12.ZeroClassification

/-! # B02 representative-binding core — UNVERIFIED DRAFT

This file is a source draft for Lean 4.19 / mathlib v4.19.0.  It has not been
run in Lean in this environment.  It adds only transport lemmas; the three
published nonextension statements remain explicit hypotheses in later files.
-/

namespace Mub6

/-- UNVERIFIED DRAFT: reflexivity of the physical row/column monomial relation. -/
theorem monomialEquivalent_refl (H : BasisMatrix) : MonomialEquivalent H H := by
  refine ⟨Equiv.refl _, Equiv.refl _, (fun _ ↦ 1), (fun _ ↦ 1), ?_, ?_, ?_⟩
  · intro i
    norm_num
  · intro j
    norm_num
  · funext i j
    simp [monomialEdge]

/-- UNVERIFIED DRAFT: symmetry with the inverse permutations and conjugate
unit phases. -/
theorem monomialEquivalent_symm {H K : BasisMatrix}
    (hHK : MonomialEquivalent H K) : MonomialEquivalent K H := by
  rcases hHK with ⟨p, q, r, c, hr, hc, hHK⟩
  refine ⟨p.symm, q.symm,
    (fun i ↦ star (r (p.symm i))),
    (fun j ↦ star (c (q.symm j))), ?_, ?_, ?_⟩
  · intro i
    simpa [Complex.star_def, Complex.normSq_conj] using hr (p.symm i)
  · intro j
    simpa [Complex.star_def, Complex.normSq_conj] using hc (q.symm j)
  · funext i j
    have h := congrFun (congrFun hHK (p.symm i)) (q.symm j)
    simp only [monomialEdge, Equiv.apply_symm_apply] at h
    have hri : star (r (p.symm i)) * r (p.symm i) = 1 :=
      Hadamard6.star_mul_self_of_normSq_one (hr (p.symm i))
    have hcj : c (q.symm j) * star (c (q.symm j)) = 1 := by
      simpa [mul_comm] using
        Hadamard6.star_mul_self_of_normSq_one (hc (q.symm j))
    change H i j =
      star (r (p.symm i)) * K (p.symm i) (q.symm j) *
        star (c (q.symm j))
    rw [h]
    symm
    calc
      star (r (p.symm i)) *
          (r (p.symm i) * H i j * c (q.symm j)) *
          star (c (q.symm j)) =
        (star (r (p.symm i)) * r (p.symm i)) * H i j *
          (c (q.symm j) * star (c (q.symm j))) := by ring
      _ = H i j := by rw [hri, hcj]; simp

/-- UNVERIFIED DRAFT: nonoccurrence is invariant under entrywise
conjugation.  The proof uses the already-audited physical quartet transport. -/
theorem quartet_exclusion_conjugate {H : BasisMatrix}
    (hH : ¬ OccursAsQuartetEdge H) :
    ¬ OccursAsQuartetEdge (conjugateBasis H) := by
  intro hbar
  apply hH
  have hback := occursAsQuartetEdge_conjugate hbar
  simpa only [conjugateBasis_involutive] using hback

end Mub6

namespace Worker12
set_option maxHeartbeats 4000000

/-- UNVERIFIED DRAFT: the same explicit monomial witness survives the common
physical factor `1 / sqrt 6`. -/
theorem physicalNormalize_monomialEquivalent {H K : Mub6.BasisMatrix}
    (hHK : Mub6.MonomialEquivalent H K) :
    Mub6.MonomialEquivalent (physicalNormalize H) (physicalNormalize K) := by
  rcases hHK with ⟨p, q, r, c, hr, hc, he⟩
  refine ⟨p, q, r, c, hr, hc, ?_⟩
  rw [physicalNormalize, he, Mub6.phaseScale_monomial]
  rfl

/-- UNVERIFIED DRAFT: physical normalization commutes with transpose. -/
theorem physicalNormalize_transpose (H : Mub6.BasisMatrix) :
    physicalNormalize (Mub6.transposeEdge H) =
      Mub6.transposeEdge (physicalNormalize H) := by
  exact Mub6.phaseScale_transpose (1 / Real.sqrt 6) H

/-- UNVERIFIED DRAFT: physical normalization commutes with entrywise complex
conjugation because its scalar is real. -/
theorem physicalNormalize_conjugate (H : Mub6.BasisMatrix) :
    Mub6.conjugateBasis (physicalNormalize H) =
      physicalNormalize (Mub6.conjugateBasis H) := by
  funext i j
  simp [physicalNormalize, Mub6.phaseScale, Mub6.conjugateBasis,
    star_mul, Complex.star_def, mul_comm]

/-- UNVERIFIED DRAFT: applying the two reciprocal phase scales gives back the
actual normalized overlap. -/
theorem physicalNormalize_phaseScale_sqrtSix (H : Mub6.BasisMatrix) :
    physicalNormalize (Mub6.phaseScale (Real.sqrt 6) H) = H := by
  have hsR : Real.sqrt 6 ≠ 0 := by positivity
  have hmulR : (1 / Real.sqrt 6) * Real.sqrt 6 = 1 := by
    field_simp [hsR]
  have hmulC :
      (((1 / Real.sqrt 6 : ℝ) : ℂ) * ((Real.sqrt 6 : ℝ) : ℂ)) = 1 := by
    exact_mod_cast hmulR
  funext i j
  change (((1 / Real.sqrt 6 : ℝ) : ℂ) *
    (((Real.sqrt 6 : ℝ) : ℂ) * H i j)) = H i j
  calc
    _ = ((((1 / Real.sqrt 6 : ℝ) : ℂ) * ((Real.sqrt 6 : ℝ) : ℂ)) * H i j) := by
      ring
    _ = H i j := by rw [hmulC]; simp

/-- UNVERIFIED DRAFT: conjugation retains the primitive-cubic phase
conditions, so the second cubic-root branch is not discarded. -/
theorem primitiveCubicPhase_star {ω : ℂ} (hω : PrimitiveCubicPhase ω) :
    PrimitiveCubicPhase (star ω) := by
  constructor
  · simpa [Complex.star_def, Complex.normSq_conj] using hω.1
  · have h := congrArg (starRingEnd ℂ) hω.2
    simpa using h

/-- UNVERIFIED DRAFT: two unit roots of `z^2+z+1` are equal or conjugate.
This is the exact two-branch lemma used to lift a fixed-root paper statement
to the local all-roots target. -/
theorem primitiveCubicPhase_eq_or_star {ω ζ : ℂ}
    (hω : PrimitiveCubicPhase ω) (hζ : PrimitiveCubicPhase ζ) :
    ω = ζ ∨ ω = star ζ := by
  have hfactor : (ω - ζ) * (ω + ζ + 1) = 0 := by
    calc
      (ω - ζ) * (ω + ζ + 1) =
          (ω ^ 2 + ω + 1) - (ζ ^ 2 + ζ + 1) := by ring
      _ = 0 := by rw [hω.2, hζ.2]; ring
  rcases mul_eq_zero.mp hfactor with hsame | hother
  · exact Or.inl (sub_eq_zero.mp hsame)
  · right
    have hζ0 : ζ ≠ 0 := by
      intro hz
      subst ζ
      have hnorm := hζ.1
      norm_num at hnorm
    have hstarMul : star ζ * ζ = 1 :=
      Hadamard6.star_mul_self_of_normSq_one hζ.1
    have hcubic : ζ ^ 3 = 1 := Hadamard6.cubic_of_quadratic hζ.2
    have hpowMul : ζ ^ 2 * ζ = 1 := by
      calc
        ζ ^ 2 * ζ = ζ ^ 3 := by ring
        _ = 1 := hcubic
    have hstar : star ζ = ζ ^ 2 := by
      apply mul_right_cancel₀ hζ0
      calc
        star ζ * ζ = 1 := hstarMul
        _ = ζ ^ 2 * ζ := hpowMul.symm
    have hωlin : ω = -(ζ + 1) := by
      calc
        ω = (ω + ζ + 1) - (ζ + 1) := by ring
        _ = -(ζ + 1) := by rw [hother]; ring
    have hζlin : ζ ^ 2 = -(ζ + 1) := by
      calc
        ζ ^ 2 = (ζ ^ 2 + ζ + 1) - (ζ + 1) := by ring
        _ = -(ζ + 1) := by rw [hζ.2]; ring
    calc
      ω = ζ ^ 2 := hωlin.trans hζlin.symm
      _ = star ζ := hstar.symm

/-- UNVERIFIED DRAFT: convert the paper's standard-pair formulation into the
actual ordered-edge formulation without removing either of the other two
bases. -/
theorem quartetExclusion_of_standardPair {H : Mub6.BasisMatrix}
    (hH : ¬ Mub6.ExtendsStandardPair H) :
    ¬ Mub6.OccursAsQuartetEdge H := by
  intro hocc
  exact hH ((Mub6.occursAsQuartetEdge_iff_extendsStandardPair H).1 hocc)

end Worker12
