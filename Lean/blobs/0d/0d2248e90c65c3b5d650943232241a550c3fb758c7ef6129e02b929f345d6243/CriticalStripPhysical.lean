import CriticalCornerPhysical
import CriticalRowSum

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalPhysical20261003
open Mub6 Mub6.Numerical Mub6.Classification
open CompactCover GoodMinor FourierSeedBinding FourPhase CanonicalCorners GlobalCornerDomain
open CriticalRowSum20261003
open scoped BigOperators
noncomputable section

def stripCorner (H : CompactCover.Mat6) (c : Fin 20) : CompactCover.Mat3 :=
  H.submatrix front (triples c)

/-- Every literal triple in the existing 20-corner count is injective. -/
theorem strip_triples_injective : ∀ c : Fin 20, Function.Injective (triples c) := by
  decide +kernel

/-- Lexicographic reverse indexes the actual complementary triple. -/
theorem correlation_complement_sum (u : Fin 6 → ℂ) (c : Fin 20) :
    correlation u c + correlation u (Fin.rev c) = ∑ j, u j := by
  fin_cases c <;>
    simp [correlation,triples,Fin.rev,Fin.sum_univ_succ] <;> ring

theorem relative_row_sum_zero {H : CompactCover.Mat6} (hH : PhaseHadamard H)
    {a b : Fin 6} (hab : a ≠ b) : ∑ j, relativeRow H a b j = 0 := by
  have h := congrFun (congrFun (GoodMinor.phaseHadamard_rowGram hH) a) b
  simpa [relativeRow,Matrix.mul_apply,Matrix.conjTranspose_apply,
    Matrix.one_apply,hab,Matrix.of_apply] using h

theorem relative_correlation_complement {H : CompactCover.Mat6}
    (hH : PhaseHadamard H) {a b : Fin 6} (hab : a ≠ b) (c : Fin 20) :
    correlation (relativeRow H a b) (Fin.rev c) = -correlation (relativeRow H a b) c := by
  apply eq_neg_of_add_eq_zero_right
  rw [correlation_complement_sum, relative_row_sum_zero hH hab]

theorem strip_moments {H : CompactCover.Mat6} (hH : NormalizedCarrier H) (c : Fin 20) :
    sideS (stripCorner H c) = correlation (relativeRow H 1 0) c ∧
    sideT (stripCorner H c) = correlation (relativeRow H 2 0) c ∧
    sideR (stripCorner H c) = correlation (relativeRow H 2 1) c := by
  simp [stripCorner,sideS,sideT,sideR,FourierPhysicalSide.s,FourierPhysicalSide.t,
    FourierPhysicalSide.r,correlation,relativeRow,front,hH.2.1]

theorem strip_complementary_moments {H : CompactCover.Mat6}
    (hH : NormalizedCarrier H) (c : Fin 20) :
    sideS (stripCorner H (Fin.rev c)) = -sideS (stripCorner H c) ∧
    sideT (stripCorner H (Fin.rev c)) = -sideT (stripCorner H c) ∧
    sideR (stripCorner H (Fin.rev c)) = -sideR (stripCorner H c) := by
  obtain ⟨hs,ht,hr⟩ := strip_moments hH c
  obtain ⟨hs',ht',hr'⟩ := strip_moments hH (Fin.rev c)
  rw [hs,ht,hr,hs',ht',hr']
  exact ⟨relative_correlation_complement hH.1 (by decide) c,
    relative_correlation_complement hH.1 (by decide) c,
    relative_correlation_complement hH.1 (by decide) c⟩

theorem strip_scalar_bounds {H : CompactCover.Mat6}
    (hH : NormalizedCarrier H) (c : Fin 20) :
    0 ≤ sideP (stripCorner H c) ∧ sideP (stripCorner H c)+|sideJ (stripCorner H c)| ≤ 9 := by
  obtain ⟨hs,ht,hr⟩ := strip_complementary_moments hH c
  have he := side_eta_nonnegative (A := stripCorner H c)
    (fun i j => hH.1.1 (front i) (triples c j))
  have hb := side_eta_nonnegative (A := stripCorner H (Fin.rev c))
    (fun i j => hH.1.1 (front i) (triples (Fin.rev c) j))
  rw [hs,ht,hr] at hb
  exact ⟨momentP_nonnegative _ _ _, complementary_eta_bound _ _ _ he hb⟩

theorem correlation_relative_swap (H : CompactCover.Mat6) (a b : Fin 6) (c : Fin 20) :
    correlation (relativeRow H a b) c = star (correlation (relativeRow H b a) c) := by
  simp only [correlation,relativeRow,star_add,star_mul,star_star]

/-- Exact bridge to the p used in the independently checked sum-108 theorem. -/
theorem stripP_count_binding {H : CompactCover.Mat6}
    (hH : NormalizedCarrier H) (c : Fin 20) :
    sideP (stripCorner H c) = CriticalRowSum20261003.cornerP H front c := by
  obtain ⟨hs,ht,hr⟩ := strip_moments hH c
  change sideP (stripCorner H c) =
    Complex.normSq (correlation (relativeRow H 0 1) c) +
    Complex.normSq (correlation (relativeRow H 0 2) c) +
    Complex.normSq (correlation (relativeRow H 1 2) c)
  rw [correlation_relative_swap H 0 1 c,correlation_relative_swap H 0 2 c,
    correlation_relative_swap H 1 2 c]
  simp only [Complex.star_def,Complex.normSq_conj]
  rw [← hs,← ht,← hr]
  rfl

theorem stripP_sum {H : CompactCover.Mat6} (hH : NormalizedCarrier H) :
    (∑ c : Fin 20, sideP (stripCorner H c))=108 := by
  calc
    _ = ∑ c : Fin 20, CriticalRowSum20261003.cornerP H front c :=
      Finset.sum_congr rfl (fun c _ => stripP_count_binding hH c)
    _ = 108 := physical_sum hH.1 front
      (fun a b h => Fin.ext (congrArg (fun x : Fin 6 => x.val) h))

/-- Every one of the actual twenty corners supplies both signed zero equations,
with its own literal scalar invariants and the already proved closed bounds. -/
theorem allCritical_strip_scalar_premises {H : CompactCover.Mat6}
    (hH : AllCritical H) (c : Fin 20) :
    let E := stripCorner H c
    0 ≤ sideP E ∧ sideP E+|sideJ E| ≤ 9 ∧
    CriticalScalarReduction20261003.R (sideP E) (sideJ E) (sideW E)=0 ∧
    CriticalScalarReduction20261003.R (sideP E) (-sideJ E) (sideW E)=0 := by
  have hb := strip_scalar_bounds hH.1 c
  have hp := allCritical_selected_R_zero hH (triples c) (strip_triples_injective c)
  have hm := allCritical_selected_R_zero hH (triples (Fin.rev c))
    (strip_triples_injective (Fin.rev c))
  change CriticalScalarReduction20261003.R
    (sideP (stripCorner H (Fin.rev c))) (sideJ (stripCorner H (Fin.rev c)))
    (sideW (stripCorner H (Fin.rev c))) = 0 at hm
  obtain ⟨hs,ht,hr⟩ := strip_complementary_moments hH.1 c
  simp only [sideP,sideJ,sideW,hs,ht,hr,momentP_neg,momentJ_neg,momentW_neg] at hm
  exact ⟨hb.1,hb.2,hp,hm⟩

end
#print axioms strip_triples_injective
#print axioms correlation_complement_sum
#print axioms relative_row_sum_zero
#print axioms relative_correlation_complement
#print axioms strip_moments
#print axioms strip_complementary_moments
#print axioms strip_scalar_bounds
#print axioms correlation_relative_swap
#print axioms stripP_count_binding
#print axioms stripP_sum
#print axioms allCritical_strip_scalar_premises
end CriticalPhysical20261003
