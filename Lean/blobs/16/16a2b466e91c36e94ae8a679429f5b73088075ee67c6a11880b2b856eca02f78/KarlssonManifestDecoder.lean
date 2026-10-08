import KarlssonEnclosureProvider
import KarlssonManifest0
import KarlssonManifest1
set_option autoImplicit false

namespace Mub6.Classification.KarlssonCompiler
open Hadamard6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.KarlssonCover
noncomputable section

abbrev RawDescriptor := ReducedLabel × ClassificationCover.Interval × ClassificationCover.Interval × ClassificationCover.Interval
abbrev SeamDescriptor := SeamLabel × ClassificationCover.Interval × ClassificationCover.Interval
def asInterval (a : ClassificationCover.Interval) : Interval := ⟨a.1,a.2⟩
def decodeRaw (d : RawDescriptor) (rt : Interval) (roots : Fin 4 → RootRecipe) : RawInput :=
  ⟨d.1,![asInterval d.2.1,asInterval d.2.2.1,asInterval d.2.2.2],rt,roots⟩
def decodeSeam (d : SeamDescriptor) (rt : Interval) : SeamInput :=
  ⟨d.1,![asInterval d.2.1,asInterval d.2.2],rt⟩
def rawDescriptor {depth : ℕ} (label : ReducedLabel) (cell : RawCell depth) : RawDescriptor :=
  (label,(cell 0).val,(cell 1).val,(cell 2).val)
def seamDescriptor {depth : ℕ} (label : SeamLabel) (cell : SeamCell depth) : SeamDescriptor :=
  (label,(cell 0).val,(cell 1).val)

theorem decode_raw_cell {depth : ℕ} (label : ReducedLabel) (cell : RawCell depth)
    (rt : Interval) (roots : Fin 4 → RootRecipe) :
    decodeRaw (rawDescriptor label cell) rt roots = ⟨label,rawCellParameters cell,rt,roots⟩ := by
  dsimp only [decodeRaw,rawDescriptor]
  congr 1
  funext i
  fin_cases i <;> rfl
theorem decode_seam_cell {depth : ℕ} (label : SeamLabel) (cell : SeamCell depth)
    (rt : Interval) : decodeSeam (seamDescriptor label cell) rt = ⟨label,seamCellParameters cell,rt⟩ := by
  dsimp only [decodeSeam,seamDescriptor]
  congr 1
  funext i
  fin_cases i <;> rfl

def compileRawList (ds : List RawDescriptor) (rt : Interval)
    (roots : RawDescriptor → Fin 4 → RootRecipe) : List CarrierRegion :=
  ds.map (fun d => (decodeRaw d rt (roots d)).output)
def compileSeamList (ds : List SeamDescriptor) (rt : Interval) : List CarrierRegion :=
  ds.map (fun d => (decodeSeam d rt).output)

theorem raw_provider_in_list {depth : ℕ} (ds : List RawDescriptor)
    (complete : ∀ label (cell : RawCell depth), rawDescriptor label cell ∈ ds)
    (rt : Interval) (hr : sqrt3Valid rt) (roots : RawDescriptor → Fin 4 → RootRecipe)
    (label : ReducedLabel) (cell : RawCell depth) :
    (enclosureProvider depth rt hr (fun l c => roots (rawDescriptor l c))).raw label cell ∈
      compileRawList ds rt roots := by
  apply List.mem_map.mpr
  refine ⟨rawDescriptor label cell,complete label cell,?_⟩
  rw [decode_raw_cell]
  rfl

theorem seam_provider_in_list {depth : ℕ} (ds : List SeamDescriptor)
    (complete : ∀ label (cell : SeamCell depth), seamDescriptor label cell ∈ ds)
    (rt : Interval) (hr : sqrt3Valid rt) (roots : RawDescriptor → Fin 4 → RootRecipe)
    (label : SeamLabel) (cell : SeamCell depth) :
    (enclosureProvider depth rt hr (fun l c => roots (rawDescriptor l c))).seam label cell ∈
      compileSeamList ds rt := by
  apply List.mem_map.mpr
  refine ⟨seamDescriptor label cell,complete label cell,?_⟩
  rw [decode_seam_cell]
  rfl

theorem depth0_raw_compiled_complete (rt : Interval) (hr : sqrt3Valid rt)
    (roots : RawDescriptor → Fin 4 → RootRecipe) (label : ReducedLabel) (cell : RawCell 0) :
    (enclosureProvider 0 rt hr (fun l c => roots (rawDescriptor l c))).raw label cell ∈
      compileRawList Manifest0.emittedRaw rt roots :=
  raw_provider_in_list _ Manifest0.emitted_raw_complete rt hr roots label cell
theorem depth0_seam_compiled_complete (rt : Interval) (hr : sqrt3Valid rt)
    (roots : RawDescriptor → Fin 4 → RootRecipe) (label : SeamLabel) (cell : SeamCell 0) :
    (enclosureProvider 0 rt hr (fun l c => roots (rawDescriptor l c))).seam label cell ∈
      compileSeamList Manifest0.emittedSeam rt :=
  seam_provider_in_list _ Manifest0.emitted_seam_complete rt hr roots label cell
theorem depth1_raw_compiled_complete (rt : Interval) (hr : sqrt3Valid rt)
    (roots : RawDescriptor → Fin 4 → RootRecipe) (label : ReducedLabel) (cell : RawCell 1) :
    (enclosureProvider 1 rt hr (fun l c => roots (rawDescriptor l c))).raw label cell ∈
      compileRawList Manifest1.emittedRaw rt roots :=
  raw_provider_in_list _ Manifest1.emitted_raw_complete rt hr roots label cell
theorem depth1_seam_compiled_complete (rt : Interval) (hr : sqrt3Valid rt)
    (roots : RawDescriptor → Fin 4 → RootRecipe) (label : SeamLabel) (cell : SeamCell 1) :
    (enclosureProvider 1 rt hr (fun l c => roots (rawDescriptor l c))).seam label cell ∈
      compileSeamList Manifest1.emittedSeam rt :=
  seam_provider_in_list _ Manifest1.emitted_seam_complete rt hr roots label cell

#print axioms decode_raw_cell
#print axioms decode_seam_cell
#print axioms depth0_raw_compiled_complete
#print axioms depth0_seam_compiled_complete
#print axioms depth1_raw_compiled_complete
#print axioms depth1_seam_compiled_complete
end
end Mub6.Classification.KarlssonCompiler
