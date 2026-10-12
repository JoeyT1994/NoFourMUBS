import NoFourMUBs.Reuse.Archive.SideIntrinsicTransposeInvariants
import NoFourMUBs.Reuse.Archive.SideIntrinsicTheta
import NoFourMUBs.Step2.Reconstruction.BaseCoefficients.VerticalProduct

set_option autoImplicit false
set_option maxHeartbeats 1500000
open Matrix Hadamard6
open StrictReconstruction20261007 StrictReconstruction20261007.SideIntrinsic
open Centiradian20261006
open scoped ComplexConjugate

noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment

/-- Export the scalar identity already used internally by `intrinsicTheta_moments`. -/
theorem intrinsicTheta_signature (a : Rows ℂ) (ha : UnitRows a) (hd : rowDet a ≠ 0) :
    (gramG (rowS a) (rowT a) (rowR a) : ℂ) * intrinsicTheta a =
      -intrinsicTerm a := by
  obtain ⟨_,_,hu,hv⟩ := row_product_units a ha
  have hdc := conj_ne_zero_of_ne_zero hd
  rw [actual_gramG_norm_det a ha, ← Complex.mul_conj, intrinsicTheta_literal a ha hd]
  unfold intrinsicTerm
  field_simp [hu,hv,hd,hdc]
  <;> ring

/-- The actual matrix signature fixes the intrinsic parameter. -/
theorem candidate_signature_parameter (p : Seed) {B : Mat3}
    (hB : B ∈ invertibleHorizontalCandidates (seedCorner p)) :
    sideSignature B = (seedG p : ℂ) * intrinsicTheta (rowsOfSide B) := by
  obtain ⟨ha,_,hd,_,_,_,_⟩ := arbitrary_side_intrinsic_interface B hB.1.1 hB.1.2.1
  have hn : rowDet (rowsOfSide B) ≠ 0 := by rw [hd]; exact hB.2.ne_zero
  have h := intrinsicTheta_signature (rowsOfSide B) ha hn
  obtain ⟨hs,ht,hr⟩ := BaseCoefficients.candidate_intrinsic_correlations p hB
  rw [hs,ht,hr] at h
  rw [sideSignature_intrinsic hB.1.1 hB.1.2.1]
  exact h.symm

/-- Transposition preserves the two remaining seed scalars, using the archived
determinant and permanent proof rather than expanded phase polynomials. -/
theorem transposedSeed_scalar_pair (p : Seed) :
    seedG (transposedSeed p) = seedG p ∧
      seedEta (transposedSeed p) = seedEta p := by
  have hrow : ∀ j, seedCorner p 0 j = 1 := by intro j; fin_cases j <;> rfl
  have hcol : ∀ i, seedCorner p i 0 = 1 := by intro i; fin_cases i <;> rfl
  have hE : seedCorner (transposedSeed p) = (seedCorner p)ᵀ := by
    ext i j; fin_cases i <;> fin_cases j <;> rfl
  obtain ⟨hg,he,hc⟩ := dephased_transpose_scalar_triple (seedCorner p)
    (seedCorner_entrywiseUnit p) hrow hcol
  obtain ⟨hp,hj,_⟩ := gram_triple_of_intrinsic_scalars _ _ _ _ _ _ hg he hc
  have hcorr (q : Seed) :
      rowS (rowsOfSide (seedCorner q)) = -seedS q ∧
      rowT (rowsOfSide (seedCorner q)) = -seedT q ∧
      rowR (rowsOfSide (seedCorner q)) = -seedRho q := by
    refine ⟨?_,?_,?_⟩ <;>
      simp [rowS,rowT,rowR,rowsOfSide,seedCorner,corner,seedS,seedT,seedRho,
        Complex.star_def]
  obtain ⟨hs,ht,hr⟩ := hcorr p
  obtain ⟨hs',ht',hr'⟩ := hcorr (transposedSeed p)
  rw [← hE,hs,ht,hr,hs',ht',hr'] at hp hj
  have hpn (s t r : ℂ) : gramP (-s) (-t) (-r) = gramP s t r := by simp [gramP]
  have hjn (s t r : ℂ) : gramJ (-s) (-t) (-r) = -gramJ s t r := by
    simp [gramJ]; ring
  simp only [hpn] at hp
  simp only [hjn,neg_inj] at hj
  change seedP (transposedSeed p) = seedP p at hp
  change seedJ (transposedSeed p) = seedJ p at hj
  constructor <;> simp only [seedG,seedEta,hp,hj]

/-- Opposite signatures give conjugate intrinsic parameters on the actual
horizontal and vertical sides. No generic correlation-gap assumption appears. -/
theorem matched_intrinsic_parameters (p : StrictSeed) {B C : Mat3}
    (hB : B ∈ invertibleHorizontalCandidates (seedCorner p.1))
    (hC : C ∈ invertibleVerticalCandidates (seedCorner p.1))
    (hsig : sideSignature C = conj (sideSignature B)) :
    intrinsicTheta (rowsOfSide Cᵀ) = conj (intrinsicTheta (rowsOfSide B)) := by
  have hb := candidate_signature_parameter p.1 hB
  have hc := candidate_signature_parameter (transposedSeed p.1)
    (BaseCoefficients.vertical_candidate_transposed p.1 hC)
  have hct : sideSignature Cᵀ = sideSignature C := by
    rw [sig_rows Cᵀ hC.1.2.1,sig_cols C hC.1.2.1]
    rfl
  rw [hct,(transposedSeed_scalar_pair p.1).1,hsig,hb] at hc
  simp only [map_mul,Complex.conj_ofReal] at hc
  obtain ⟨hs,ht,hr⟩ := BaseCoefficients.candidate_intrinsic_correlations p.1 hB
  have hR : 0 < gramInvariant (rowS (rowsOfSide B)) (rowT (rowsOfSide B))
      (rowR (rowsOfSide B)) := by rw [hs,ht,hr]; exact p.2
  have hg := (strict_intrinsic_det_guard (rowsOfSide B)
    (rowsOfSide_unit B hB.1.1) hR).2
  rw [hs,ht,hr] at hg
  have hg0 : (seedG p.1 : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr (ne_of_gt hg)
  exact (mul_left_cancel₀ hg0 hc).symm

end NoFourMUBs.Step2.Reconstruction.ThirdMoment
