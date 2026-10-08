import SixGraph
import PhysicalGraph
import ReuseBoundaryTransport

/-! Six-plus-six graph certificates are connected to actual normalized bases.
All six columns are retained. Complete physical ray coverage, label capacity
and conservative graph binding remain explicit; no numerical acceptance or
external phase-box capacity is silently promoted to one of these hypotheses.
-/
set_option autoImplicit false
set_option maxHeartbeats 800000

namespace Mub6.Numerical.GraphKernel
open Mub6
noncomputable section
variable {V : Type} [Fintype V] [DecidableEq V]

def IsRawSixPair (H : BasisMatrix) (z w : Fin 6 → Vector) : Prop :=
  IsRawFrame H z ∧ IsRawFrame H w ∧
    ∀ i j, Complex.normSq (rawOverlap (z i) (w j)) = 6

theorem raw_six_pair_has_graph_pair {H : BasisMatrix} {boxes : V → RawRayBox}
    {O U : Graph V} (hcover : CompleteRayCover H boxes)
    (hsmall : ∀ v, IsSmallRayBox (boxes v)) (hgraph : SoundRayGraph boxes O U)
    {z w : Fin 6 → Vector} (hpair : IsRawSixPair H z w) :
    HasPair6 O U Finset.univ Finset.univ 6 := by
  classical
  obtain ⟨a,ha,hainj,haedge⟩ := raw_frame_assignment hcover hsmall hgraph hpair.1
  obtain ⟨b,hb,hbinj,hbedge⟩ := raw_frame_assignment hcover hsmall hgraph hpair.2.1
  refine ⟨Finset.univ.image a,Finset.univ.image b,
    assignment_clique a hainj haedge,assignment_clique b hbinj hbedge,?_,?_⟩
  · apply Finset.disjoint_left.mpr
    intro v hv hw
    obtain ⟨i,_,rfl⟩ := Finset.mem_image.mp hv
    obtain ⟨j,_,he⟩ := Finset.mem_image.mp hw
    have hj : MemRawRayBox (boxes (a i)) (w j) := by rw [← he]; exact hb j
    exact (same_ray_box_separation (hpair.1.1 i).1 (hpair.2.1.1 j).1
      (hsmall (a i)) (ha i) hj).2 (hpair.2.2 i j)
  · intro v hv u hu
    obtain ⟨i,_,rfl⟩ := Finset.mem_image.mp hv
    obtain ⟨j,_,rfl⟩ := Finset.mem_image.mp hu
    exact hgraph.unbiased (a i) (b j) (z i) (w j) (hpair.1.1 i).1
      (hpair.2.1.1 j).1 (ha i) (hb j) (hpair.2.2 i j)

theorem checked_pair6_excludes_raw_six_pair {H : BasisMatrix} {boxes : V → RawRayBox}
    {O U : Graph V} (hcover : CompleteRayCover H boxes)
    (hsmall : ∀ v, IsSmallRayBox (boxes v)) (hgraph : SoundRayGraph boxes O U)
    (cert : PairCertificate V)
    (hc : checkPair6 O U Finset.univ Finset.univ 6 cert = true) :
    ¬ ∃ z w : Fin 6 → Vector, IsRawSixPair H z w := by
  rintro ⟨z,w,hpair⟩
  exact checkPair6_sound O U Finset.univ Finset.univ 6 cert hc
    (raw_six_pair_has_graph_pair hcover hsmall hgraph hpair)

def allSixRays (C : BasisMatrix) : Fin 6 → Vector :=
  fun j => dephaseFlatRay (fun r => C r j)

theorem normalized_flat_basis_gives_six_frame {B C : BasisMatrix}
    (hC : IsOrthonormalBasis C)
    (hBflat : ∀ j, IsNormalizedFlatRay (fun r => B r j))
    (hCflat : ∀ j, IsNormalizedFlatRay (fun r => C r j))
    (hBC : IsUnbiased B C) :
    IsRawFrame (rawCarrierOfFlatBasis B) (allSixRays C) := by
  constructor
  · intro j
    exact unbiased_basis_gives_rawCommonRay hBflat hCflat hBC j
  · intro i j hne
    apply dephase_preserves_orthogonality
    change overlap C C i j = 0
    rw [hC i j,if_neg hne]

theorem normalized_flat_pair_gives_six_pair {B C D : BasisMatrix}
    (hC : IsOrthonormalBasis C) (hD : IsOrthonormalBasis D)
    (hBflat : ∀ j, IsNormalizedFlatRay (fun r => B r j))
    (hCflat : ∀ j, IsNormalizedFlatRay (fun r => C r j))
    (hDflat : ∀ j, IsNormalizedFlatRay (fun r => D r j))
    (hBC : IsUnbiased B C) (hBD : IsUnbiased B D) (hCD : IsUnbiased C D) :
    IsRawSixPair (rawCarrierOfFlatBasis B) (allSixRays C) (allSixRays D) := by
  refine ⟨normalized_flat_basis_gives_six_frame hC hBflat hCflat hBC,
    normalized_flat_basis_gives_six_frame hD hBflat hDflat hBD,?_⟩
  intro i j
  exact dephase_unbiased_normSq (hCflat i) (hDflat j) (hCD i j)

theorem checked_uniform_pair6_excludes_normalized_flat_bases
    {E : CarrierRegion} {boxes : V → RawRayBox} {O U : Graph V}
    (hcover : CompleteUniformRayCover E boxes)
    (hsmall : ∀ v, IsSmallRayBox (boxes v)) (hgraph : SoundRayGraph boxes O U)
    (cert : PairCertificate V)
    (hc : checkPair6 O U Finset.univ Finset.univ 6 cert = true)
    {B C D : BasisMatrix} (hB : IsOrthonormalBasis B)
    (hC : IsOrthonormalBasis C) (hD : IsOrthonormalBasis D)
    (hBflat : ∀ j, IsNormalizedFlatRay (fun r => B r j))
    (hCflat : ∀ j, IsNormalizedFlatRay (fun r => C r j))
    (hDflat : ∀ j, IsNormalizedFlatRay (fun r => D r j))
    (hBC : IsUnbiased B C) (hBD : IsUnbiased B D) (hCD : IsUnbiased C D)
    (hE : CarrierBox E (rawCarrierOfFlatBasis B)) : False := by
  have hlocal := hcover (rawCarrierOfFlatBasis B)
    (rawCarrierOfFlatBasis_isPhaseHadamard hB hBflat) hE
  exact checked_pair6_excludes_raw_six_pair hlocal hsmall hgraph cert hc
    ⟨allSixRays C,allSixRays D,
      normalized_flat_pair_gives_six_pair hC hD hBflat hCflat hDflat hBC hBD hCD⟩

theorem six_pair_remaining_indices : ∀ a b : Fin 4, a ≠ b →
    ∃ c d : Fin 4, a ≠ c ∧ a ≠ d ∧ b ≠ c ∧ b ≠ d ∧ c ≠ d := by
  decide +kernel

theorem six_pair_flat_of_identity {B : BasisMatrix}
    (h : IsUnbiased identityBasis B) :
    ∀ j, IsNormalizedFlatRay (fun r => B r j) := by
  intro j r
  have he := h r j
  change Complex.normSq (overlap identityBasis B r j) = (1 : ℝ) / 6 at he
  rw [overlap_identity_left] at he
  exact he

theorem rawCarrier_normalized_phase {H : BasisMatrix} (hrow : ∀ j, H 0 j = 1) :
    rawCarrierOfFlatBasis (phaseScale (Real.sqrt 6)⁻¹ H) = H := by
  have hs : (Real.sqrt 6 : ℂ) ≠ 0 := by
    exact_mod_cast (show Real.sqrt 6 ≠ 0 by positivity)
  funext i j
  simp only [rawCarrierOfFlatBasis,phaseScale,hrow j,mul_one,Complex.ofReal_inv]
  field_simp [hs]

/-- Extraction at one actual carrier keeps any parameter correlations in
the caller's cover. It does not replace that cover by a Cartesian family. -/
theorem raw_six_pair_of_occurs {H : BasisMatrix} (hrow : ∀ j, H 0 j = 1)
    (ho : OccursAsQuartetEdge (phaseScale (Real.sqrt 6)⁻¹ H)) :
    ∃ z w : Fin 6 → Vector, IsRawSixPair H z w := by
  obtain ⟨B,hB,a,b,hab,ha,hb⟩ :=
    (occursAsQuartetEdge_iff_extendsStandardPair _).mp ho
  obtain ⟨c,d,hac,had,hbc,hbd,hcd⟩ := six_pair_remaining_indices a b hab
  have hfB := six_pair_flat_of_identity (ha ▸ hB.2 a b hab)
  have hfC := six_pair_flat_of_identity (ha ▸ hB.2 a c hac)
  have hfD := six_pair_flat_of_identity (ha ▸ hB.2 a d had)
  have hraw : rawCarrierOfFlatBasis (B b) = H := by
    rw [hb]
    exact rawCarrier_normalized_phase hrow
  have hp := normalized_flat_pair_gives_six_pair (hB.1 c) (hB.1 d)
    hfB hfC hfD (hB.2 b c hbc) (hB.2 b d hbd) (hB.2 c d hcd)
  rw [hraw] at hp
  exact ⟨allSixRays (B c),allSixRays (B d),hp⟩

/-- Local physical endpoint; suitable for covers that depend on a shared
parameter vector, an actual matrix, or an additional canonical predicate. -/
theorem checked_pair6_excludes_occurs {H : BasisMatrix} {boxes : V → RawRayBox}
    {O U : Graph V} (hrow : ∀ j, H 0 j = 1)
    (hcover : CompleteRayCover H boxes)
    (hsmall : ∀ v, IsSmallRayBox (boxes v)) (hgraph : SoundRayGraph boxes O U)
    (cert : PairCertificate V)
    (hc : checkPair6 O U Finset.univ Finset.univ 6 cert = true) :
    ¬ OccursAsQuartetEdge (phaseScale (Real.sqrt 6)⁻¹ H) := by
  intro ho
  exact checked_pair6_excludes_raw_six_pair hcover hsmall hgraph cert hc
    (raw_six_pair_of_occurs hrow ho)

/-- The literal edge endpoint needed by a physical carrier consumer. Every
remaining assumption concerns this exact cover, its capacity, graph, or box.
No quartet-nonexistence premise is used. -/
theorem checked_uniform_pair6_excludes_occurs
    {E : CarrierRegion} {boxes : V → RawRayBox} {O U : Graph V}
    (hcover : CompleteUniformRayCover E boxes)
    (hsmall : ∀ v, IsSmallRayBox (boxes v)) (hgraph : SoundRayGraph boxes O U)
    (cert : PairCertificate V)
    (hc : checkPair6 O U Finset.univ Finset.univ 6 cert = true)
    {H : BasisMatrix} (hrow : ∀ j, H 0 j = 1) (hE : CarrierBox E H) :
    ¬ OccursAsQuartetEdge (phaseScale (Real.sqrt 6)⁻¹ H) := by
  intro ho
  obtain ⟨B,hB,a,b,hab,ha,hb⟩ :=
    (occursAsQuartetEdge_iff_extendsStandardPair _).mp ho
  obtain ⟨c,d,hac,had,hbc,hbd,hcd⟩ := six_pair_remaining_indices a b hab
  have hfB := six_pair_flat_of_identity (ha ▸ hB.2 a b hab)
  have hfC := six_pair_flat_of_identity (ha ▸ hB.2 a c hac)
  have hfD := six_pair_flat_of_identity (ha ▸ hB.2 a d had)
  have hraw : rawCarrierOfFlatBasis (B b) = H := by
    rw [hb]
    exact rawCarrier_normalized_phase hrow
  exact checked_uniform_pair6_excludes_normalized_flat_bases
    hcover hsmall hgraph cert hc (hB.1 b) (hB.1 c) (hB.1 d)
    hfB hfC hfD (hB.2 b c hbc) (hB.2 b d hbd) (hB.2 c d hcd)
    (hraw.symm ▸ hE)

#print axioms raw_six_pair_has_graph_pair
#print axioms checked_pair6_excludes_raw_six_pair
#print axioms normalized_flat_basis_gives_six_frame
#print axioms normalized_flat_pair_gives_six_pair
#print axioms checked_uniform_pair6_excludes_normalized_flat_bases
#print axioms six_pair_remaining_indices
#print axioms six_pair_flat_of_identity
#print axioms rawCarrier_normalized_phase
#print axioms raw_six_pair_of_occurs
#print axioms checked_pair6_excludes_occurs
#print axioms checked_uniform_pair6_excludes_occurs
#print checked_uniform_pair6_excludes_occurs
end
end Mub6.Numerical.GraphKernel
