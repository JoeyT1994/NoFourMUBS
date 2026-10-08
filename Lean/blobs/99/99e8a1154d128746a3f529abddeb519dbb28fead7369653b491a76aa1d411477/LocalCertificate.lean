import PhysicalGraph
import PartitionKernel

/-! One executable check for a complete local physical certificate. The
partition covers the full continuous domain, the graph is recomputed from
the actual rational kept boxes, and its finite refutation is checked. -/
namespace Mub6.Numerical.GraphKernel

open IntervalKernel

def orthGraph {n : ℕ} (boxes : Fin n → RawRayBox) : Graph (Fin n) :=
  fun i j => orthPossible (boxes i) (boxes j)

def unbiasedGraph {n : ℕ} (boxes : Fin n → RawRayBox) : Graph (Fin n) :=
  fun i j => unbiasedPossible (boxes i) (boxes j)

theorem interval_graph_sound {n : ℕ} (boxes : Fin n → RawRayBox) :
    SoundRayGraph boxes (orthGraph boxes) (unbiasedGraph boxes) := by
  constructor
  · intro i j z w _ _ hz hw horth
    exact orthPossible_sound hz hw horth
  · intro i j z w _ _ hz hw hunb
    exact unbiasedPossible_sound hz hw hunb

structure LocalCertificate (n : ℕ) where
  boxes : Fin n → RawRayBox
  partition : RayPartition n
  graph : PairCertificate (Fin n)

def checkLocal {n : ℕ} (E : CarrierRegion) (cert : LocalCertificate n) : Bool :=
  checkPartition E cert.boxes fullRoot cert.partition &&
    (decide (∀ v, smallBoxCheck (cert.boxes v) = true) &&
     checkPair (orthGraph cert.boxes) (unbiasedGraph cert.boxes)
       Finset.univ Finset.univ 5 cert.graph)

theorem checkLocal_facts {n : ℕ} {E : CarrierRegion} {cert : LocalCertificate n}
    (hcheck : checkLocal E cert = true) :
    CompleteUniformRayCover E cert.boxes ∧
      (∀ v, IsSmallRayBox (cert.boxes v)) ∧
      checkPair (orthGraph cert.boxes) (unbiasedGraph cert.boxes)
        Finset.univ Finset.univ 5 cert.graph = true := by
  simp only [checkLocal, Bool.and_eq_true, decide_eq_true_eq] at hcheck
  refine ⟨?_, ?_, hcheck.2.2⟩
  · intro H _ hE z hz
    exact checkPartition_fullRoot_sound hcheck.1 hE hz
  · intro v
    exact smallBoxCheck_sound (hcheck.2.1 v)

/-- A successful computation excludes actual raw two-five-frame systems for
every physical carrier in E. No approximate-root completeness premise remains. -/
theorem checkLocal_sound {n : ℕ} {E : CarrierRegion} {cert : LocalCertificate n}
    (hcheck : checkLocal E cert = true) {H : BasisMatrix}
    (hH : PhaseHadamard H) (hE : CarrierBox E H) :
    ¬ ∃ z w : Fin 5 → Vector, IsRawFivePair H z w := by
  have hf := checkLocal_facts hcheck
  exact checked_pair_excludes_raw_five_pair (hf.1 H hH hE) hf.2.1
    (interval_graph_sound cert.boxes) cert.graph hf.2.2

/-- Concrete normalized-flat physical basis endpoint. The standard-basis
anchor is encoded by flatness; an arbitrary quartet/unitary reduction and
exhaustive coverage of carriers are separate global obligations. -/
theorem checkLocal_excludes_normalized_flat_bases
    {n : ℕ} {E : CarrierRegion} {cert : LocalCertificate n}
    (hcheck : checkLocal E cert = true)
    {B C D : BasisMatrix} (hB : IsOrthonormalBasis B)
    (hC : IsOrthonormalBasis C) (hD : IsOrthonormalBasis D)
    (hBflat : ∀ j, IsNormalizedFlatRay (fun r => B r j))
    (hCflat : ∀ j, IsNormalizedFlatRay (fun r => C r j))
    (hDflat : ∀ j, IsNormalizedFlatRay (fun r => D r j))
    (hBC : IsUnbiased B C) (hBD : IsUnbiased B D) (hCD : IsUnbiased C D)
    (hE : CarrierBox E (rawCarrierOfFlatBasis B)) : False := by
  have hf := checkLocal_facts hcheck
  exact checked_uniform_pair_excludes_normalized_flat_bases hf.1 hf.2.1
    (interval_graph_sound cert.boxes) cert.graph hf.2.2
    hB hC hD hBflat hCflat hDflat hBC hBD hCD hE

#print axioms interval_graph_sound
#print axioms checkLocal_facts
#print axioms checkLocal_sound
#print axioms checkLocal_excludes_normalized_flat_bases

end Mub6.Numerical.GraphKernel
