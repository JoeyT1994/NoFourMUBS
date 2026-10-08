import F6TubeRays
import PhysicalLabelGraph
import QuartetRadianCover
import ReuseBoundaryTransport

/-! The two remaining bases are obtained from an actual quartet by the
existing common rebase and raw-ray dephase. A single monomial frame then
transports both complete six-ray families into the approximate F6 domain. -/
noncomputable section
open Mub6 Mub6.Numerical.GraphKernel Mub6.GlobalBoxCover20261006
open Seed0024Mathematical20261007

namespace Seed0024ClusterTube20261007

def IsApproximateF6Ray (X : Fin 6 → ℂ) : Prop :=
  Mub6.Numerical.IsRawUnitRay X ∧ ∀ k,
    |‖Mub6.Numerical.rawOverlap (fun i => explicitF6 i k) X‖-Real.sqrt 6|<(1:ℝ)/5

def IsApproximateF6SixPair (U V : Fin 6 → (Fin 6 → ℂ)) : Prop :=
  (∀ j,IsApproximateF6Ray (U j)) ∧ (∀ j,IsApproximateF6Ray (V j)) ∧
  (∀ i j,i≠j → Mub6.Numerical.rawOverlap (U i) (U j)=0) ∧
  (∀ i j,i≠j → Mub6.Numerical.rawOverlap (V i) (V j)=0) ∧
  (∀ i j,Complex.normSq (Mub6.Numerical.rawOverlap (U i) (V j))=6)

theorem rawCarrier_eq_phaseOverlap (B C : BasisMatrix)
    (hfirst : ∀ j,phaseOverlap B C 0 j=1) :
    Mub6.Numerical.rawCarrierOfFlatBasis (overlap B C)=phaseOverlap B C := by
  funext i j
  have h : (Real.sqrt 6 : ℂ)*overlap B C 0 j=1 := hfirst j
  have hn : overlap B C 0 j≠0 := by
    intro he
    rw [he,mul_zero] at h
    exact zero_ne_one h
  change overlap B C i j/overlap B C 0 j=(Real.sqrt 6 : ℂ)*overlap B C i j
  apply (div_eq_iff hn).2
  calc
    _ = ((Real.sqrt 6 : ℂ)*overlap B C 0 j)*overlap B C i j := by rw [h,one_mul]
    _ = _ := by ring

theorem quartet_rebased_column_flat {B : Fin 4 → BasisMatrix}
    (hB : IsMUBQuartet B) (a : Fin 4) (ha : (0:Fin 4)≠a) (j : Fin 6) :
    Mub6.Numerical.IsNormalizedFlatRay (fun r => overlap (B 0) (B a) r j) :=
  fun r => hB.2 0 a ha r j

theorem quartet_rebased_raw_six_pair {B : Fin 4 → BasisMatrix}
    (hB : IsMUBQuartet B) (hfirst : ∀ j,phaseOverlap (B 0) (B 1) 0 j=1) :
    IsRawSixPair (phaseOverlap (B 0) (B 1))
      (sixBasisRays (overlap (B 0) (B 2)))
      (sixBasisRays (overlap (B 0) (B 3))) := by
  have h := quartet_rebase hB 0
  have hp := normalized_flat_bases_give_raw_six_pair (h.1 2) (h.1 3)
    (quartet_rebased_column_flat hB 1 (by decide))
    (quartet_rebased_column_flat hB 2 (by decide))
    (quartet_rebased_column_flat hB 3 (by decide))
    (h.2 1 2 (by decide)) (h.2 1 3 (by decide)) (h.2 2 3 (by decide))
  rw [rawCarrier_eq_phaseOverlap (B 0) (B 1) hfirst] at hp
  exact hp

theorem canonicalRay_preserves_raw_orthogonality
    (rows : Equiv.Perm (Fin 6)) (g X Y : Fin 6 → ℂ)
    (hg : ∀ i,Complex.normSq (g i)=1)
    (hX : ∀ i,Complex.normSq (X i)=1) (hY : ∀ i,Complex.normSq (Y i)=1)
    (hXY : Mub6.Numerical.rawOverlap X Y=0) :
    Mub6.Numerical.rawOverlap (canonicalRay rows g X) (canonicalRay rows g Y)=0 := by
  apply Complex.normSq_eq_zero.mp
  have he := canonicalRay_overlap_normSq rows g X Y hg hX hY
  rw [rawOverlap_eq_FormalCore,rawOverlap_eq_FormalCore,hXY,Complex.normSq_zero] at he
  exact he

theorem inside_f6_tube_transports_raw_six_pair
    {H : BasisMatrix} (hH : ∀ i j,Complex.normSq (H i j)=1)
    (hTube : InsideF6Tube H ((1:ℝ)/30))
    {U V : Fin 6 → Vector} (hpair : IsRawSixPair H U V) :
    ∃ U' V' : Fin 6 → Vector,IsApproximateF6SixPair U' V' := by
  obtain ⟨rows,g,hg,hrays,hpairs⟩ := inside_f6_tube_simultaneous_ray_transport H hH hTube
  refine ⟨fun j => canonicalRay rows g (U j),fun j => canonicalRay rows g (V j),?_,?_,?_,?_,?_⟩
  · intro j
    exact hrays (U j) (hpair.1.1 j).1.2 (hpair.1.1 j).2
  · intro j
    exact hrays (V j) (hpair.2.1.1 j).1.2 (hpair.2.1.1 j).2
  · intro i j hij
    exact canonicalRay_preserves_raw_orthogonality rows g (U i) (U j) hg
      (hpair.1.1 i).1.2 (hpair.1.1 j).1.2 (hpair.1.2 i j hij)
  · intro i j hij
    exact canonicalRay_preserves_raw_orthogonality rows g (V i) (V j) hg
      (hpair.2.1.1 i).1.2 (hpair.2.1.1 j).1.2 (hpair.2.1.2 i j hij)
  · intro i j
    rw [hpairs (U i) (V j) (hpair.1.1 i).1.2 (hpair.2.1.1 j).1.2]
    exact hpair.2.2 i j

theorem actual_quartet_tube_gives_approximate_six_pair
    {B : Fin 4 → BasisMatrix} (hB : IsMUBQuartet B)
    (hfirst : ∀ j,phaseOverlap (B 0) (B 1) 0 j=1)
    (hTube : InsideF6Tube (phaseOverlap (B 0) (B 1)) ((1:ℝ)/30)) :
    ∃ U V : Fin 6 → Vector,IsApproximateF6SixPair U V :=
  inside_f6_tube_transports_raw_six_pair
    (phaseOverlap_normSq_one (hB.2 0 1 (by decide))) hTube
    (quartet_rebased_raw_six_pair hB hfirst)

end Seed0024ClusterTube20261007

#print axioms Seed0024ClusterTube20261007.rawCarrier_eq_phaseOverlap
#print axioms Seed0024ClusterTube20261007.quartet_rebased_column_flat
#print axioms Seed0024ClusterTube20261007.quartet_rebased_raw_six_pair
#print axioms Seed0024ClusterTube20261007.canonicalRay_preserves_raw_orthogonality
#print axioms Seed0024ClusterTube20261007.inside_f6_tube_transports_raw_six_pair
#print axioms Seed0024ClusterTube20261007.actual_quartet_tube_gives_approximate_six_pair
