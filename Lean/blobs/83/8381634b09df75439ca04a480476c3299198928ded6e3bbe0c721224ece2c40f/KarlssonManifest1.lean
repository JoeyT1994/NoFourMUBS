import KarlssonLocalRoots
namespace Mub6.Classification.KarlssonCover
namespace Manifest1
noncomputable section
set_option maxRecDepth 16384
set_option maxHeartbeats 4000000
abbrev RawDescriptor := ReducedLabel × ClassificationCover.Interval × ClassificationCover.Interval × ClassificationCover.Interval
abbrev SeamDescriptor := SeamLabel × ClassificationCover.Interval × ClassificationCover.Interval
def emittedRaw : List RawDescriptor := [
  ((.regular,false),(0,(1/2)),(-1,0),(-1,0)),
  ((.regular,false),(0,(1/2)),(-1,0),(0,1)),
  ((.regular,false),(0,(1/2)),(0,1),(-1,0)),
  ((.regular,false),(0,(1/2)),(0,1),(0,1)),
  ((.regular,false),((1/2),1),(-1,0),(-1,0)),
  ((.regular,false),((1/2),1),(-1,0),(0,1)),
  ((.regular,false),((1/2),1),(0,1),(-1,0)),
  ((.regular,false),((1/2),1),(0,1),(0,1)),
  ((.regular,true),(0,(1/2)),(-1,0),(-1,0)),
  ((.regular,true),(0,(1/2)),(-1,0),(0,1)),
  ((.regular,true),(0,(1/2)),(0,1),(-1,0)),
  ((.regular,true),(0,(1/2)),(0,1),(0,1)),
  ((.regular,true),((1/2),1),(-1,0),(-1,0)),
  ((.regular,true),((1/2),1),(-1,0),(0,1)),
  ((.regular,true),((1/2),1),(0,1),(-1,0)),
  ((.regular,true),((1/2),1),(0,1),(0,1)),
  ((.singularAInput,false),(0,(1/2)),(-1,0),(-1,0)),
  ((.singularAInput,false),(0,(1/2)),(-1,0),(0,1)),
  ((.singularAInput,false),(0,(1/2)),(0,1),(-1,0)),
  ((.singularAInput,false),(0,(1/2)),(0,1),(0,1)),
  ((.singularAInput,false),((1/2),1),(-1,0),(-1,0)),
  ((.singularAInput,false),((1/2),1),(-1,0),(0,1)),
  ((.singularAInput,false),((1/2),1),(0,1),(-1,0)),
  ((.singularAInput,false),((1/2),1),(0,1),(0,1)),
  ((.singularAInput,true),(0,(1/2)),(-1,0),(-1,0)),
  ((.singularAInput,true),(0,(1/2)),(-1,0),(0,1)),
  ((.singularAInput,true),(0,(1/2)),(0,1),(-1,0)),
  ((.singularAInput,true),(0,(1/2)),(0,1),(0,1)),
  ((.singularAInput,true),((1/2),1),(-1,0),(-1,0)),
  ((.singularAInput,true),((1/2),1),(-1,0),(0,1)),
  ((.singularAInput,true),((1/2),1),(0,1),(-1,0)),
  ((.singularAInput,true),((1/2),1),(0,1),(0,1)),
  ((.singularAOutput,false),(0,(1/2)),(-1,0),(-1,0)),
  ((.singularAOutput,false),(0,(1/2)),(-1,0),(0,1)),
  ((.singularAOutput,false),(0,(1/2)),(0,1),(-1,0)),
  ((.singularAOutput,false),(0,(1/2)),(0,1),(0,1)),
  ((.singularAOutput,false),((1/2),1),(-1,0),(-1,0)),
  ((.singularAOutput,false),((1/2),1),(-1,0),(0,1)),
  ((.singularAOutput,false),((1/2),1),(0,1),(-1,0)),
  ((.singularAOutput,false),((1/2),1),(0,1),(0,1)),
  ((.singularAOutput,true),(0,(1/2)),(-1,0),(-1,0)),
  ((.singularAOutput,true),(0,(1/2)),(-1,0),(0,1)),
  ((.singularAOutput,true),(0,(1/2)),(0,1),(-1,0)),
  ((.singularAOutput,true),(0,(1/2)),(0,1),(0,1)),
  ((.singularAOutput,true),((1/2),1),(-1,0),(-1,0)),
  ((.singularAOutput,true),((1/2),1),(-1,0),(0,1)),
  ((.singularAOutput,true),((1/2),1),(0,1),(-1,0)),
  ((.singularAOutput,true),((1/2),1),(0,1),(0,1)),
  ((.singularBInput,false),(0,(1/2)),(-1,0),(-1,0)),
  ((.singularBInput,false),(0,(1/2)),(-1,0),(0,1)),
  ((.singularBInput,false),(0,(1/2)),(0,1),(-1,0)),
  ((.singularBInput,false),(0,(1/2)),(0,1),(0,1)),
  ((.singularBInput,false),((1/2),1),(-1,0),(-1,0)),
  ((.singularBInput,false),((1/2),1),(-1,0),(0,1)),
  ((.singularBInput,false),((1/2),1),(0,1),(-1,0)),
  ((.singularBInput,false),((1/2),1),(0,1),(0,1)),
  ((.singularBInput,true),(0,(1/2)),(-1,0),(-1,0)),
  ((.singularBInput,true),(0,(1/2)),(-1,0),(0,1)),
  ((.singularBInput,true),(0,(1/2)),(0,1),(-1,0)),
  ((.singularBInput,true),(0,(1/2)),(0,1),(0,1)),
  ((.singularBInput,true),((1/2),1),(-1,0),(-1,0)),
  ((.singularBInput,true),((1/2),1),(-1,0),(0,1)),
  ((.singularBInput,true),((1/2),1),(0,1),(-1,0)),
  ((.singularBInput,true),((1/2),1),(0,1),(0,1)),
  ((.singularBOutput,false),(0,(1/2)),(-1,0),(-1,0)),
  ((.singularBOutput,false),(0,(1/2)),(-1,0),(0,1)),
  ((.singularBOutput,false),(0,(1/2)),(0,1),(-1,0)),
  ((.singularBOutput,false),(0,(1/2)),(0,1),(0,1)),
  ((.singularBOutput,false),((1/2),1),(-1,0),(-1,0)),
  ((.singularBOutput,false),((1/2),1),(-1,0),(0,1)),
  ((.singularBOutput,false),((1/2),1),(0,1),(-1,0)),
  ((.singularBOutput,false),((1/2),1),(0,1),(0,1)),
  ((.singularBOutput,true),(0,(1/2)),(-1,0),(-1,0)),
  ((.singularBOutput,true),(0,(1/2)),(-1,0),(0,1)),
  ((.singularBOutput,true),(0,(1/2)),(0,1),(-1,0)),
  ((.singularBOutput,true),(0,(1/2)),(0,1),(0,1)),
  ((.singularBOutput,true),((1/2),1),(-1,0),(-1,0)),
  ((.singularBOutput,true),((1/2),1),(-1,0),(0,1)),
  ((.singularBOutput,true),((1/2),1),(0,1),(-1,0)),
  ((.singularBOutput,true),((1/2),1),(0,1),(0,1))
]
def emittedSeam : List SeamDescriptor := [
  ((false,false,false,false),(-1,0),(-1,0)),
  ((false,false,false,false),(-1,0),(0,1)),
  ((false,false,false,false),(0,1),(-1,0)),
  ((false,false,false,false),(0,1),(0,1)),
  ((false,false,false,true),(-1,0),(-1,0)),
  ((false,false,false,true),(-1,0),(0,1)),
  ((false,false,false,true),(0,1),(-1,0)),
  ((false,false,false,true),(0,1),(0,1)),
  ((false,false,true,false),(-1,0),(-1,0)),
  ((false,false,true,false),(-1,0),(0,1)),
  ((false,false,true,false),(0,1),(-1,0)),
  ((false,false,true,false),(0,1),(0,1)),
  ((false,false,true,true),(-1,0),(-1,0)),
  ((false,false,true,true),(-1,0),(0,1)),
  ((false,false,true,true),(0,1),(-1,0)),
  ((false,false,true,true),(0,1),(0,1)),
  ((false,true,false,false),(-1,0),(-1,0)),
  ((false,true,false,false),(-1,0),(0,1)),
  ((false,true,false,false),(0,1),(-1,0)),
  ((false,true,false,false),(0,1),(0,1)),
  ((false,true,false,true),(-1,0),(-1,0)),
  ((false,true,false,true),(-1,0),(0,1)),
  ((false,true,false,true),(0,1),(-1,0)),
  ((false,true,false,true),(0,1),(0,1)),
  ((false,true,true,false),(-1,0),(-1,0)),
  ((false,true,true,false),(-1,0),(0,1)),
  ((false,true,true,false),(0,1),(-1,0)),
  ((false,true,true,false),(0,1),(0,1)),
  ((false,true,true,true),(-1,0),(-1,0)),
  ((false,true,true,true),(-1,0),(0,1)),
  ((false,true,true,true),(0,1),(-1,0)),
  ((false,true,true,true),(0,1),(0,1)),
  ((true,false,false,false),(-1,0),(-1,0)),
  ((true,false,false,false),(-1,0),(0,1)),
  ((true,false,false,false),(0,1),(-1,0)),
  ((true,false,false,false),(0,1),(0,1)),
  ((true,false,false,true),(-1,0),(-1,0)),
  ((true,false,false,true),(-1,0),(0,1)),
  ((true,false,false,true),(0,1),(-1,0)),
  ((true,false,false,true),(0,1),(0,1)),
  ((true,false,true,false),(-1,0),(-1,0)),
  ((true,false,true,false),(-1,0),(0,1)),
  ((true,false,true,false),(0,1),(-1,0)),
  ((true,false,true,false),(0,1),(0,1)),
  ((true,false,true,true),(-1,0),(-1,0)),
  ((true,false,true,true),(-1,0),(0,1)),
  ((true,false,true,true),(0,1),(-1,0)),
  ((true,false,true,true),(0,1),(0,1)),
  ((true,true,false,false),(-1,0),(-1,0)),
  ((true,true,false,false),(-1,0),(0,1)),
  ((true,true,false,false),(0,1),(-1,0)),
  ((true,true,false,false),(0,1),(0,1)),
  ((true,true,false,true),(-1,0),(-1,0)),
  ((true,true,false,true),(-1,0),(0,1)),
  ((true,true,false,true),(0,1),(-1,0)),
  ((true,true,false,true),(0,1),(0,1)),
  ((true,true,true,false),(-1,0),(-1,0)),
  ((true,true,true,false),(-1,0),(0,1)),
  ((true,true,true,false),(0,1),(-1,0)),
  ((true,true,true,false),(0,1),(0,1)),
  ((true,true,true,true),(-1,0),(-1,0)),
  ((true,true,true,true),(-1,0),(0,1)),
  ((true,true,true,true),(0,1),(-1,0)),
  ((true,true,true,true),(0,1),(0,1))
]
theorem emitted_raw_complete : ∀ (label : ReducedLabel) (cell : RawCell 1),
    (label,(cell 0).val,(cell 1).val,(cell 2).val) ∈ emittedRaw := by
  intro label cell
  have h0 := (cell 0).property
  have h1 := (cell 1).property
  have h2 := (cell 2).property
  norm_num [grid, ClassificationCover.dyadicGrid] at h0 h1 h2
  all_goals rcases h0 with h0 | h0
  all_goals rcases h1 with h1 | h1
  all_goals rcases h2 with h2 | h2
  all_goals rw [h0, h1, h2]
  all_goals try simp only [show (2 : Fin 3) ≠ 0 by decide, if_false]
  all_goals try norm_num only [neg_add_cancel, zero_div]
  all_goals rcases label with ⟨chart,ps⟩
  all_goals cases chart <;> cases ps <;> norm_num [emittedRaw]
theorem emitted_seam_complete : ∀ (label : SeamLabel) (cell : SeamCell 1),
    (label,(cell 0).val,(cell 1).val) ∈ emittedSeam := by
  intro label cell
  have h0 := (cell 0).property
  have h1 := (cell 1).property
  norm_num [grid, ClassificationCover.dyadicGrid] at h0 h1
  all_goals rcases h0 with h0 | h0
  all_goals rcases h1 with h1 | h1
  all_goals rw [h0, h1]
  all_goals rcases label with ⟨tr,os,ps,zs⟩
  all_goals cases tr <;> cases os <;> cases ps <;> cases zs <;> decide
theorem emitted_counts : emittedRaw.length=80 ∧ emittedSeam.length=64 := by decide
#print axioms emitted_raw_complete
#print axioms emitted_seam_complete
#print axioms emitted_counts
end
end Manifest1
end Mub6.Classification.KarlssonCover
