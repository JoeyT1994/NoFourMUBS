import PartitionKernel

namespace Mub6.Numerical.IntervalKernel

/-- Semantic coverage for a literal chunk root. Final certificates instantiate
all such statements with checked terms; the definition is not an assumption. -/
def CoveredBy {n : ℕ} (E : CarrierRegion) (boxes : Fin n → RawRayBox) (q : RawRayBox) : Prop :=
  ∀ H, CarrierBox E H → ∀ z, IsRawCommonRay H z → MemRawRayBox q z →
    ∃ v, MemRawRayBox (boxes v) z

theorem coveredBy_of_check {n : ℕ} {E : CarrierRegion} {boxes : Fin n → RawRayBox}
    {q : RawRayBox} {tree : RayPartition n} (h : checkPartition E boxes q tree = true) :
    CoveredBy E boxes q := by
  intro H hH z hz hq
  exact checkPartition_sound E boxes tree hH hz q h hq

/-- Check a short literal inclusion to reuse a chunk root, instead of
unfolding the entire ancestor chain inside every arithmetic leaf. -/
theorem coveredBy_of_subset {n : ℕ} {E : CarrierRegion} {boxes : Fin n → RawRayBox}
    {q parent : RawRayBox} (hsub : boxSubset q parent = true)
    (hparent : CoveredBy E boxes parent) : CoveredBy E boxes q := by
  intro H hH z hz hq
  exact hparent H hH z hz (boxSubset_sound hsub hq)

theorem coveredBy_split {n : ℕ} {E : CarrierRegion} {boxes : Fin n → RawRayBox}
    (q : RawRayBox) (j : Fin 5) (imag : Bool) (cut : ℚ)
    (hleft : CoveredBy E boxes (leftChild q j imag cut))
    (hright : CoveredBy E boxes (rightChild q j imag cut)) : CoveredBy E boxes q := by
  intro H hH z hz hq
  rcases child_cover hq j imag cut with hl | hr
  · exact hleft H hH z hz hl
  · exact hright H hH z hz hr

/-- Assembly from independently checked literal child roots; both endpoint
inclusions and both child coverage proofs must be actual proof terms. -/
theorem coveredBy_split_literal {n : ℕ} {E : CarrierRegion} {boxes : Fin n → RawRayBox}
    (q left right : RawRayBox) (j : Fin 5) (imag : Bool) (cut : ℚ)
    (hleftSub : boxSubset (leftChild q j imag cut) left = true)
    (hrightSub : boxSubset (rightChild q j imag cut) right = true)
    (hleft : CoveredBy E boxes left) (hright : CoveredBy E boxes right) : CoveredBy E boxes q :=
  coveredBy_split q j imag cut (coveredBy_of_subset hleftSub hleft)
    (coveredBy_of_subset hrightSub hright)

theorem coveredBy_fullRoot {n : ℕ} {E : CarrierRegion} {boxes : Fin n → RawRayBox}
    (h : CoveredBy E boxes fullRoot) {H : BasisMatrix} (hH : CarrierBox E H)
    {z : Vector} (hz : IsRawCommonRay H z) : ∃ v, MemRawRayBox (boxes v) z :=
  h H hH z hz (fullRoot_covers hz.1)

#print axioms coveredBy_of_check
#print axioms coveredBy_of_subset
#print axioms coveredBy_split
#print axioms coveredBy_split_literal
#print axioms coveredBy_fullRoot

end Mub6.Numerical.IntervalKernel
