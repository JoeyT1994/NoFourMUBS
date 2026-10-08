import KarlssonLocalRoots
namespace Mub6.Classification.KarlssonCover
noncomputable section
set_option maxRecDepth 16384
set_option maxHeartbeats 4000000
abbrev RawDescriptor := ReducedLabel × ClassificationCover.Interval × ClassificationCover.Interval × ClassificationCover.Interval
abbrev SeamDescriptor := SeamLabel × ClassificationCover.Interval × ClassificationCover.Interval
def emittedRaw : List RawDescriptor := [
  ((.regular,false),(0,1),(-1,1),(-1,1)),
  ((.regular,true),(0,1),(-1,1),(-1,1)),
  ((.singularAInput,false),(0,1),(-1,1),(-1,1)),
  ((.singularAInput,true),(0,1),(-1,1),(-1,1)),
  ((.singularAOutput,false),(0,1),(-1,1),(-1,1)),
  ((.singularAOutput,true),(0,1),(-1,1),(-1,1)),
  ((.singularBInput,false),(0,1),(-1,1),(-1,1)),
  ((.singularBInput,true),(0,1),(-1,1),(-1,1)),
  ((.singularBOutput,false),(0,1),(-1,1),(-1,1)),
  ((.singularBOutput,true),(0,1),(-1,1),(-1,1))
]
def emittedSeam : List SeamDescriptor := [
  ((false,false,false,false),(-1,1),(-1,1)),
  ((false,false,false,true),(-1,1),(-1,1)),
  ((false,false,true,false),(-1,1),(-1,1)),
  ((false,false,true,true),(-1,1),(-1,1)),
  ((false,true,false,false),(-1,1),(-1,1)),
  ((false,true,false,true),(-1,1),(-1,1)),
  ((false,true,true,false),(-1,1),(-1,1)),
  ((false,true,true,true),(-1,1),(-1,1)),
  ((true,false,false,false),(-1,1),(-1,1)),
  ((true,false,false,true),(-1,1),(-1,1)),
  ((true,false,true,false),(-1,1),(-1,1)),
  ((true,false,true,true),(-1,1),(-1,1)),
  ((true,true,false,false),(-1,1),(-1,1)),
  ((true,true,false,true),(-1,1),(-1,1)),
  ((true,true,true,false),(-1,1),(-1,1)),
  ((true,true,true,true),(-1,1),(-1,1))
]
theorem emitted_raw_complete : ∀ (label : ReducedLabel) (cell : RawCell 0),
    (label,(cell 0).val,(cell 1).val,(cell 2).val) ∈ emittedRaw := by decide
theorem emitted_seam_complete : ∀ (label : SeamLabel) (cell : SeamCell 0),
    (label,(cell 0).val,(cell 1).val) ∈ emittedSeam := by decide
theorem emitted_counts : emittedRaw.length=10 ∧ emittedSeam.length=16 := by decide
#print axioms emitted_raw_complete
#print axioms emitted_seam_complete
#print axioms emitted_counts
end
end Mub6.Classification.KarlssonCover
