import HybridLambdaMasks
import RationalRootCertificates
import PhysicalDiscriminantGuard

/-! Independent coverage probes. These preserve the original quantifier order
and expose the disjoint physical split, exact masks, and local-root limits. -/
namespace Mub6.Classification.RadicalCoverageAudit
open Matrix Mub6.Numerical Mub6.Classification.CompactCover
open Mub6.Classification.FourPhase Mub6.Classification.PoleAtlas
open Mub6.Classification.RadicalIntervals Mub6.Numerical.CircleCharts
open Mub6.Classification.CarrierIntervals
open Mub6.Numerical.IntervalKernel
open Hadamard6Extensions.FourierSide
open Hadamard6Extensions.FourPhaseFourierBridge
noncomputable section
set_option autoImplicit false

theorem reduced_witness_excludes_pole {H : Mat6} {k : Fin 20}
    (hk : NormalizedGoodSideCarrier (normalizedSideCarrier H k))
    (hw : ReducedAtlasWitness H k) :
    let K := normalizedSideCarrier H k
    ¬ SeedPoleLocus (K 1 1) (K 1 2) (K 2 1) (K 2 2) := by
  dsimp only
  intro hp
  exact ((physical_pole_locus_iff hk).mp hp) hw.1

theorem explicit_disjoint_physical_split {H : Mat6} (hH : PhaseHadamard H) :
    ∃ k : Fin 20, let K := normalizedSideCarrier H k
      NormalizedGoodSideCarrier K ∧
      ((¬ SeedPoleLocus (K 1 1) (K 1 2) (K 2 1) (K 2 2) ∧ ReducedAtlasWitness H k) ∨
       (SeedPoleLocus (K 1 1) (K 1 2) (K 2 1) (K 2 2) ∧ TenAtlasWitness H k)) := by
  obtain ⟨k, hk, hw⟩ := phaseHadamard_four_or_ten_circle_atlas hH
  refine ⟨k, hk, ?_⟩
  rcases hw with hn | hp
  · exact Or.inl ⟨reduced_witness_excludes_pole hk hn, hn⟩
  · exact Or.inr hp

theorem mask_pair_count : Fintype.card (PoleMask × PoleMask) = 64 := by
  rw [Fintype.card_prod, pole_mask_count]

theorem empty_mask_active_count :
    Fintype.card (ActivePole (fun _ => false)) = 0 := by
  simp [ActivePole]

theorem full_mask_active_count :
    Fintype.card (ActivePole (fun _ => true)) = 3 := by
  simp [ActivePole]

theorem signed_circle_endpoints (b : Bool) :
    signedCircle b 1 = (signValue b : ℂ)*Complex.I ∧
      signedCircle b (-1) = -(signValue b : ℂ)*Complex.I := by
  cases b <;> constructor <;> apply Complex.ext <;>
    norm_num [signedCircle, signValue, circlePoint]

theorem mask_does_not_discard_zero_numerator {s t r z : ℂ} {L : Fin 3 → ℂ}
    {mask : PoleMask} (hE : LambdaEquations s t r z L)
    (hm : ExactPoleMask s t r z mask) (i : ActivePole mask) :
    FourierGramNumerators.numerator s t r i.val = 0 :=
  lambda_pole_numerator_zero hE ((hm i.val).mp i.property)

/-- The certificate is uniform over input radicands, while its root witness
remains inside the universal quantifier. -/
theorem cube_certificate_quantifiers {B : RationalRectangle} {a b ε : ℚ}
    (hc : CubeCertificate B a b ε) :
    ∀ T : ℂ, MemRectangle B T →
      ∃ τ : ℂ, τ^3=T ∧ MemRectangle (centerBox a b ε) τ := by
  intro T hT
  exact cubeCertificate_sound hc hT

theorem square_certificate_retains_both_sign_boxes
    {B : RationalRectangle} {a b ε : ℚ} (hc : SquareCertificate B a b ε) :
    ∀ D δ : ℂ, MemRectangle B D → δ^2=D →
      MemRectangle (centerBox a b ε) δ ∨
        MemRectangle (boxNeg (centerBox a b ε)) δ := by
  intro D δ hD hδ
  exact squareCertificate_all_roots hc hD hδ

/-- An orientation discriminant collision is impossible in the selected good
side, even though collisions are retained by the general root contracts. -/
theorem good_side_orientation_nonzero (x y : Fin 3 → ℂ) (w delta : ℂ)
    (hw : w^2+w+1=0) (hx : IsPhase3 x) (hy : IsPhase3 y)
    (hg : (54/5 : ℝ) ≤ Complex.normSq (Hadamard6Extensions.FourierSide.actualSide x y).det)
    (hd : delta^2=(sideGamma (sum3 x) (sum3 y) (permanentSide x y))^2-
      4*sideAlpha (sum3 x) (prod3 x)*sideAlpha (sum3 y) (prod3 y)) :
    delta ≠ 0 := by
  have h := actual_good_delta_guard x y w delta hw hx hy hg hd
  intro he
  norm_num [he] at h

#check reduced_witness_excludes_pole
#print axioms reduced_witness_excludes_pole
#check explicit_disjoint_physical_split
#print axioms explicit_disjoint_physical_split
#check mask_pair_count
#print axioms mask_pair_count
#check empty_mask_active_count
#print axioms empty_mask_active_count
#check full_mask_active_count
#print axioms full_mask_active_count
#check signed_circle_endpoints
#print axioms signed_circle_endpoints
#check mask_does_not_discard_zero_numerator
#print axioms mask_does_not_discard_zero_numerator
#check cube_certificate_quantifiers
#print axioms cube_certificate_quantifiers
#check square_certificate_retains_both_sign_boxes
#print axioms square_certificate_retains_both_sign_boxes
#check good_side_orientation_nonzero
#print axioms good_side_orientation_nonzero
end
end Mub6.Classification.RadicalCoverageAudit
