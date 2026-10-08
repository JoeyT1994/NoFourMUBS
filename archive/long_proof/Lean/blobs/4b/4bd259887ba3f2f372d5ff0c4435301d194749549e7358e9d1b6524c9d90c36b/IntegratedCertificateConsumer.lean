import KarlssonCertificateConsumer
set_option autoImplicit false

/-! Semantic assembly for independently exported ray-cover and graph proofs.
Every hypothesis below must be instantiated for the exact same carrier and
catalogue. This module alone supplies no local exclusion. -/
namespace Mub6.Classification.KarlssonLedger.Integrated
open Complex Hadamard6 Mub6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Numerical.GraphKernel
noncomputable section

/-- The semantic consumer permits any sound common-ray cover and graph
implementation; it does not require the ambient-coordinate `RayPartition`. -/
theorem semantic_carrier_excludes {n : ℕ} {E : CarrierRegion}
    {boxes : Fin n → RawRayBox} {O U : Graph (Fin n)}
    (hcover : CompleteUniformRayCover E boxes)
    (hsmall : ∀ v, IsSmallRayBox (boxes v))
    (hgraph : SoundRayGraph boxes O U)
    (cert : PairCertificate (Fin n))
    (hcheck : checkPair O U Finset.univ Finset.univ 5 cert = true)
    (hrow : StandardFirstRow E) : CarrierExcluded E := by
  intro H _hH hbox hocc
  obtain ⟨B, hB, a, b, hab, ha, hb⟩ :=
    (occursAsQuartetEdge_iff_extendsStandardPair _).mp hocc
  obtain ⟨c, d, hac, had, hbc, hbd, hcd⟩ := remaining_indices a b hab
  have hE : CarrierBox E (rawCarrierOfFlatBasis (B b)) := by
    rw [hb, normalized_raw_carrier (first_row_of_carrier hrow hbox)]
    exact hbox
  exact checked_uniform_pair_excludes_normalized_flat_bases
    hcover hsmall hgraph cert hcheck
    (hB.1 b) (hB.1 c) (hB.1 d)
    (flat_of_identity (ha ▸ hB.2 a b hab))
    (flat_of_identity (ha ▸ hB.2 a c hac))
    (flat_of_identity (ha ▸ hB.2 a d had))
    (hB.2 b c hbc) (hB.2 b d hbd) (hB.2 c d hcd) hE

/-- A terminal for the exact classified job. All catalogue, physical cover,
small-box, graph, finite-refutation, and normalization obligations are explicit. -/
theorem semantic_leaf_closes {n : ℕ} {job : Job} {E : CarrierRegion}
    {boxes : Fin n → RawRayBox} {O U : Graph (Fin n)}
    (hencl : Encloses job E)
    (hcover : CompleteUniformRayCover E boxes)
    (hsmall : ∀ v, IsSmallRayBox (boxes v))
    (hgraph : SoundRayGraph boxes O U)
    (cert : PairCertificate (Fin n))
    (hcheck : checkPair O U Finset.univ Finset.univ 5 cert = true)
    (hrow : StandardFirstRow E) : ¬ Live job :=
  enclosure_certificate_closes hencl
    (semantic_carrier_excludes hcover hsmall hgraph cert hcheck hrow)

end
end Mub6.Classification.KarlssonLedger.Integrated
