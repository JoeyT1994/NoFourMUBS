import GraphKernel

/-! Complete-cover embedding into the checked finite graph. Every catalogue
entry and every common ray is quantified. These theorems do not assume that
an approximate list of isolated roots is exhaustive. -/
namespace Mub6.Numerical.GraphKernel

variable {V : Type} [Fintype V] [DecidableEq V]

def CompleteRayCover (H : BasisMatrix) (boxes : V → RawRayBox) : Prop :=
  ∀ z, IsRawCommonRay H z → ∃ v, MemRawRayBox (boxes v) z

def CompleteUniformRayCover (E : CarrierRegion) (boxes : V → RawRayBox) : Prop :=
  ∀ H, PhaseHadamard H → CarrierBox E H → CompleteRayCover H boxes

structure SoundRayGraph (boxes : V → RawRayBox) (O U : Graph V) : Prop where
  orthogonal : ∀ i j z w, IsRawUnitRay z → IsRawUnitRay w →
    MemRawRayBox (boxes i) z → MemRawRayBox (boxes j) w →
    rawOverlap z w = 0 → O i j = true
  unbiased : ∀ i j z w, IsRawUnitRay z → IsRawUnitRay w →
    MemRawRayBox (boxes i) z → MemRawRayBox (boxes j) w →
    Complex.normSq (rawOverlap z w) = 6 → U i j = true

def IsRawFrame (H : BasisMatrix) {k : ℕ} (z : Fin k → Vector) : Prop :=
  (∀ i, IsRawCommonRay H (z i)) ∧
  ∀ i j, i ≠ j → rawOverlap (z i) (z j) = 0

def IsRawFivePair (H : BasisMatrix) (z w : Fin 5 → Vector) : Prop :=
  IsRawFrame H z ∧ IsRawFrame H w ∧
  ∀ i j, Complex.normSq (rawOverlap (z i) (w j)) = 6

theorem raw_frame_assignment {H : BasisMatrix} {boxes : V → RawRayBox}
    {O U : Graph V} (hcover : CompleteRayCover H boxes)
    (hsmall : ∀ v, IsSmallRayBox (boxes v)) (hgraph : SoundRayGraph boxes O U)
    {k : ℕ} {z : Fin k → Vector} (hz : IsRawFrame H z) :
    ∃ a : Fin k → V, (∀ i, MemRawRayBox (boxes (a i)) (z i)) ∧
      Function.Injective a ∧ (∀ i j, i ≠ j → O (a i) (a j) = true) := by
  classical
  choose a ha using fun i => hcover (z i) (hz.1 i)
  refine ⟨a, ha, ?_, ?_⟩
  · intro i j he
    by_contra hne
    have hj : MemRawRayBox (boxes (a i)) (z j) := by rw [he]; exact ha j
    exact (same_ray_box_separation (hz.1 i).1 (hz.1 j).1 (hsmall (a i)) (ha i) hj).1
      (hz.2 i j hne)
  · intro i j hne
    exact hgraph.orthogonal (a i) (a j) (z i) (z j) (hz.1 i).1 (hz.1 j).1
      (ha i) (ha j) (hz.2 i j hne)

theorem assignment_clique {O : Graph V} {k : ℕ} (a : Fin k → V)
    (ha : Function.Injective a) (hedge : ∀ i j, i ≠ j → O (a i) (a j) = true) :
    CliqueIn O Finset.univ k (Finset.univ.image a) := by
  refine ⟨fun v _ => Finset.mem_univ v, ?_, ?_⟩
  · rw [Finset.card_image_of_injective _ ha, Finset.card_univ, Fintype.card_fin]
  · intro v hv w hw hvw
    obtain ⟨i, _, rfl⟩ := Finset.mem_image.mp hv
    obtain ⟨j, _, rfl⟩ := Finset.mem_image.mp hw
    exact hedge i j (fun he => hvw (congrArg a he))

theorem raw_frame_has_clique {H : BasisMatrix} {boxes : V → RawRayBox}
    {O U : Graph V} (hcover : CompleteRayCover H boxes)
    (hsmall : ∀ v, IsSmallRayBox (boxes v)) (hgraph : SoundRayGraph boxes O U)
    {k : ℕ} {z : Fin k → Vector} (hz : IsRawFrame H z) : HasClique O Finset.univ k := by
  obtain ⟨a, _, ha, hedge⟩ := raw_frame_assignment hcover hsmall hgraph hz
  exact ⟨Finset.univ.image a, assignment_clique a ha hedge⟩

theorem raw_five_pair_has_graph_pair {H : BasisMatrix} {boxes : V → RawRayBox}
    {O U : Graph V} (hcover : CompleteRayCover H boxes)
    (hsmall : ∀ v, IsSmallRayBox (boxes v)) (hgraph : SoundRayGraph boxes O U)
    {z w : Fin 5 → Vector} (hpair : IsRawFivePair H z w) :
    HasPair O U Finset.univ Finset.univ 5 := by
  classical
  obtain ⟨a, ha, hainj, haedge⟩ := raw_frame_assignment hcover hsmall hgraph hpair.1
  obtain ⟨b, hb, hbinj, hbedge⟩ := raw_frame_assignment hcover hsmall hgraph hpair.2.1
  refine ⟨Finset.univ.image a, Finset.univ.image b,
    assignment_clique a hainj haedge, assignment_clique b hbinj hbedge, ?_, ?_⟩
  · apply Finset.disjoint_left.mpr
    intro v hv hw
    obtain ⟨i, _, rfl⟩ := Finset.mem_image.mp hv
    obtain ⟨j, _, he⟩ := Finset.mem_image.mp hw
    have hj : MemRawRayBox (boxes (a i)) (w j) := by rw [← he]; exact hb j
    exact (same_ray_box_separation (hpair.1.1 i).1 (hpair.2.1.1 j).1
      (hsmall (a i)) (ha i) hj).2 (hpair.2.2 i j)
  · intro v hv u hu
    obtain ⟨i, _, rfl⟩ := Finset.mem_image.mp hv
    obtain ⟨j, _, rfl⟩ := Finset.mem_image.mp hu
    exact hgraph.unbiased (a i) (b j) (z i) (w j) (hpair.1.1 i).1 (hpair.2.1.1 j).1
      (ha i) (hb j) (hpair.2.2 i j)

theorem checked_clique_excludes_raw_frame {H : BasisMatrix} {boxes : V → RawRayBox}
    {O U : Graph V} (hcover : CompleteRayCover H boxes)
    (hsmall : ∀ v, IsSmallRayBox (boxes v)) (hgraph : SoundRayGraph boxes O U)
    (k : ℕ) (cert : CliqueCertificate V) (hc : checkClique O Finset.univ k cert = true) :
    ¬ ∃ z : Fin k → Vector, IsRawFrame H z := by
  rintro ⟨z, hz⟩
  exact checkClique_sound O Finset.univ k cert hc
    (raw_frame_has_clique hcover hsmall hgraph hz)

theorem checked_pair_excludes_raw_five_pair {H : BasisMatrix} {boxes : V → RawRayBox}
    {O U : Graph V} (hcover : CompleteRayCover H boxes)
    (hsmall : ∀ v, IsSmallRayBox (boxes v)) (hgraph : SoundRayGraph boxes O U)
    (cert : PairCertificate V) (hc : checkPair O U Finset.univ Finset.univ 5 cert = true) :
    ¬ ∃ z w : Fin 5 → Vector, IsRawFivePair H z w := by
  rintro ⟨z, w, hp⟩
  exact checkPair_sound O U Finset.univ Finset.univ 5 cert hc
    (raw_five_pair_has_graph_pair hcover hsmall hgraph hp)

noncomputable def firstFiveRays (C : BasisMatrix) : Fin 5 → Vector :=
  fun j => dephaseFlatRay (fun r => C r j.castSucc)

theorem normalized_flat_basis_gives_five_frame {B C : BasisMatrix}
    (hC : IsOrthonormalBasis C)
    (hBflat : ∀ j, IsNormalizedFlatRay (fun r => B r j))
    (hCflat : ∀ j, IsNormalizedFlatRay (fun r => C r j))
    (hBC : IsUnbiased B C) :
    IsRawFrame (rawCarrierOfFlatBasis B) (firstFiveRays C) := by
  constructor
  · intro j
    exact unbiased_basis_gives_rawCommonRay hBflat hCflat hBC j.castSucc
  · intro i j hne
    apply dephase_preserves_orthogonality
    change overlap C C i.castSucc j.castSucc = 0
    rw [hC i.castSucc j.castSucc, if_neg]
    exact fun he => hne (Fin.castSucc_injective 5 he)

theorem normalized_flat_pair_gives_raw_pair {B C D : BasisMatrix}
    (hC : IsOrthonormalBasis C) (hD : IsOrthonormalBasis D)
    (hBflat : ∀ j, IsNormalizedFlatRay (fun r => B r j))
    (hCflat : ∀ j, IsNormalizedFlatRay (fun r => C r j))
    (hDflat : ∀ j, IsNormalizedFlatRay (fun r => D r j))
    (hBC : IsUnbiased B C) (hBD : IsUnbiased B D) (hCD : IsUnbiased C D) :
    IsRawFivePair (rawCarrierOfFlatBasis B) (firstFiveRays C) (firstFiveRays D) := by
  refine ⟨normalized_flat_basis_gives_five_frame hC hBflat hCflat hBC,
    normalized_flat_basis_gives_five_frame hD hBflat hDflat hBD, ?_⟩
  intro i j
  exact dephase_unbiased_normSq (hCflat i.castSucc) (hDflat j.castSucc) (hCD i.castSucc j.castSucc)

theorem checked_uniform_pair_excludes_normalized_flat_bases
    {E : CarrierRegion} {boxes : V → RawRayBox} {O U : Graph V}
    (hcover : CompleteUniformRayCover E boxes)
    (hsmall : ∀ v, IsSmallRayBox (boxes v)) (hgraph : SoundRayGraph boxes O U)
    (cert : PairCertificate V) (hc : checkPair O U Finset.univ Finset.univ 5 cert = true)
    {B C D : BasisMatrix} (hB : IsOrthonormalBasis B)
    (hC : IsOrthonormalBasis C) (hD : IsOrthonormalBasis D)
    (hBflat : ∀ j, IsNormalizedFlatRay (fun r => B r j))
    (hCflat : ∀ j, IsNormalizedFlatRay (fun r => C r j))
    (hDflat : ∀ j, IsNormalizedFlatRay (fun r => D r j))
    (hBC : IsUnbiased B C) (hBD : IsUnbiased B D) (hCD : IsUnbiased C D)
    (hE : CarrierBox E (rawCarrierOfFlatBasis B)) : False := by
  have hlocal := hcover (rawCarrierOfFlatBasis B)
    (rawCarrierOfFlatBasis_isPhaseHadamard hB hBflat) hE
  exact checked_pair_excludes_raw_five_pair hlocal hsmall hgraph cert hc
    ⟨firstFiveRays C, firstFiveRays D,
      normalized_flat_pair_gives_raw_pair hC hD hBflat hCflat hDflat hBC hBD hCD⟩

#print axioms raw_frame_assignment
#print axioms assignment_clique
#print axioms raw_frame_has_clique
#print axioms raw_five_pair_has_graph_pair
#print axioms checked_clique_excludes_raw_frame
#print axioms checked_pair_excludes_raw_five_pair
#print axioms normalized_flat_basis_gives_five_frame
#print axioms normalized_flat_pair_gives_raw_pair
#print axioms checked_uniform_pair_excludes_normalized_flat_bases

end Mub6.Numerical.GraphKernel
