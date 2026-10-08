import KarlssonExportedCover
set_option autoImplicit false

namespace KarlssonIndependentCoverageReview
open Hadamard6 Mub6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.KarlssonCover Mub6.Classification.KarlssonCompiler
noncomputable section

theorem exact_label_counts : Fintype.card ReducedLabel = 10 ∧
    Fintype.card SeamLabel = 16 := by decide +kernel

theorem exact_literal_counts : Manifest0.emittedRaw.length = 10 ∧
    Manifest0.emittedSeam.length = 16 := by decide +kernel

/-- An independent specialization checks that the two complete literal domain
lists really compose with the physical compiler, without a missing descriptor
membership or output-inclusion premise. This is not a JSON decoder theorem. -/
theorem actual_edge_depth0_enclosures (rt : Interval) (hr : sqrt3Valid rt)
    (roots : RawDescriptor → Fin 4 → RootRecipe)
    {H : BasisMatrix} (hH : OccursAsQuartetEdge H)
    (h₂ : HasHadamardTwoByTwo
      (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H))) :
    ∃ K : Mat6,
      OccursAsQuartetEdge
        (phaseScale (Real.sqrt 6)⁻¹ (ClassificationCover.toNumerical K)) ∧
      ∃ b ∈ compileRawList Manifest0.emittedRaw rt roots ++
        compileSeamList Manifest0.emittedSeam rt,
        CarrierBox b (ClassificationCover.toNumerical K) := by
  exact exported_quartet_cover 0 Manifest0.emittedRaw Manifest0.emittedSeam
    Manifest0.emitted_raw_complete Manifest0.emitted_seam_complete rt hr roots
    (fun d => (decodeRaw d rt (roots d)).output)
    (fun d => (decodeSeam d rt).output)
    (fun _ _ _ _ => ⟨le_refl _, le_refl _, le_refl _, le_refl _⟩)
    (fun _ _ _ _ => ⟨le_refl _, le_refl _, le_refl _, le_refl _⟩) hH h₂

#check Hadamard6.karlssonRawOrSeamCoverage_proved
#check complete_three_parameter_cover
#check common_degeneracy
#check five_chart_cover
#check equal_squares_equivalent
#check reduced_quartet_finite_enclosures
#check ClassificationCover.normalized_public_representative_occurs
#check exported_quartet_cover
#print axioms exact_label_counts
#print axioms exact_literal_counts
#print axioms actual_edge_depth0_enclosures
end
end KarlssonIndependentCoverageReview
