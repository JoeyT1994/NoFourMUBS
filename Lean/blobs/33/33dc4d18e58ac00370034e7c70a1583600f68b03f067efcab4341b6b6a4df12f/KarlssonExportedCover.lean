import KarlssonManifestDecoder
set_option autoImplicit false

namespace Mub6.Classification.KarlssonCompiler
open Complex Hadamard6 Mub6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.KarlssonCover
noncomputable section

/-- Assembly interface for a numerical manifest. The only output obligations
are the exact rational inclusions emitted and kernel checked for each cell.
This theorem does not assert that any numerical manifest has been exhausted. -/
theorem exported_quartet_cover (depth : ℕ)
    (rawDs : List RawDescriptor) (seamDs : List SeamDescriptor)
    (raw_complete : ∀ label (cell : RawCell depth), rawDescriptor label cell ∈ rawDs)
    (seam_complete : ∀ label (cell : SeamCell depth), seamDescriptor label cell ∈ seamDs)
    (rt : Interval) (hr : sqrt3Valid rt) (roots : RawDescriptor → Fin 4 → RootRecipe)
    (rawOut : RawDescriptor → CarrierRegion) (seamOut : SeamDescriptor → CarrierRegion)
    (raw_bounds : ∀ d ∈ rawDs, ∀ i j,
      RectangleIncludes ((decodeRaw d rt (roots d)).output i j) (rawOut d i j))
    (seam_bounds : ∀ d ∈ seamDs, ∀ i j,
      RectangleIncludes ((decodeSeam d rt).output i j) (seamOut d i j))
    {H : BasisMatrix} (hH : OccursAsQuartetEdge H)
    (h₂ : HasHadamardTwoByTwo (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H))) :
    ∃ K : Mat6,
      OccursAsQuartetEdge (phaseScale (Real.sqrt 6)⁻¹ (ClassificationCover.toNumerical K)) ∧
      ∃ b ∈ rawDs.map rawOut ++ seamDs.map seamOut,
        CarrierBox b (ClassificationCover.toNumerical K) := by
  obtain ⟨K,hK,hb⟩ := compiled_quartet_cover depth rt hr
    (fun l c => roots (rawDescriptor l c)) hH h₂
  refine ⟨K,hK,?_⟩
  rcases hb with ⟨label,cell,hc⟩ | ⟨label,cell,hc⟩
  · have hm := raw_complete label cell
    refine ⟨rawOut (rawDescriptor label cell),
      List.mem_append.mpr (Or.inl (List.mem_map.mpr ⟨_,hm,rfl⟩)),?_⟩
    have hdecoded : CarrierBox
        (decodeRaw (rawDescriptor label cell) rt (roots (rawDescriptor label cell))).output
        (ClassificationCover.toNumerical K) := by
      rw [decode_raw_cell]
      exact hc
    exact fun i j => rectangle_includes_sound (raw_bounds _ hm i j) (hdecoded i j)
  · have hm := seam_complete label cell
    refine ⟨seamOut (seamDescriptor label cell),
      List.mem_append.mpr (Or.inr (List.mem_map.mpr ⟨_,hm,rfl⟩)),?_⟩
    have hdecoded : CarrierBox (decodeSeam (seamDescriptor label cell) rt).output
        (ClassificationCover.toNumerical K) := by
      rw [decode_seam_cell]
      exact hc
    exact fun i j => rectangle_includes_sound (seam_bounds _ hm i j) (hdecoded i j)

#print axioms exported_quartet_cover
end
end Mub6.Classification.KarlssonCompiler
