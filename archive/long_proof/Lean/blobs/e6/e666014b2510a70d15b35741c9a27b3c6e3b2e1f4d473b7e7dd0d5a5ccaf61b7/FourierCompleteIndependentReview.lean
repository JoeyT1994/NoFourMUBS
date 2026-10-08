import FourierCompleteLocus

set_option autoImplicit false
namespace FourierCompleteIndependentReview20261003
open Mub6 Matrix FourierCriticalLocus20261003 GlobalCornerSixSine
noncomputable section

/-- Check the actual four-basis target, not only an abstract cover premise. -/
theorem actual_quartet_fixed (B : Fin 4 → BasisMatrix) (hB : IsMUBQuartet B)
    (a b : Fin 4) (hab : a≠b)
    (he : overlap (B a) (B b) = phaseScale (Real.sqrt 6)⁻¹ fixedF6) : False :=
  FourierCompleteLocus20261003.fixedF6_excluded ⟨B,hB,a,b,hab,he⟩

theorem actual_quartet_monomial (B : Fin 4 → BasisMatrix) (hB : IsMUBQuartet B)
    (a b : Fin 4) (hab : a≠b) (H : BasisMatrix)
    (hm : MonomialEquivalent H FourierExactCarrier20261003.matrix)
    (he : overlap (B a) (B b) = phaseScale (Real.sqrt 6)⁻¹ H) : False :=
  FourierCompleteEndpoint20261003.fixed_monomial_class_excluded hm ⟨B,hB,a,b,hab,he⟩

theorem actual_quartet_explicit_locus (B : Fin 4 → BasisMatrix)
    (hB : IsMUBQuartet B) (a b : Fin 4) (hab : a≠b)
    (H : BasisMatrix) (ω z w : ℂ)
    (hω : Worker12.PrimitiveCubicPhase ω)
    (hz : Complex.normSq z=1) (hw : Complex.normSq w=1)
    (h0 : sixSkew 1 z w 1 (ω*z) (ω^2*w)=0)
    (h1 : sixSkew 1 z (-w) 1 (ω*z) (-(ω^2*w))=0)
    (h2 : sixSkew 1 (-z) w 1 (-(ω*z)) (ω^2*w)=0)
    (hm : MonomialEquivalent H (N ω z w) ∨ MonomialEquivalent H (N ω z w)ᵀ)
    (he : overlap (B a) (B b) = phaseScale (Real.sqrt 6)⁻¹ H) : False :=
  FourierCompleteLocus20261003.three_skews_monomial_excluded
    hω hz hw h0 h1 h2 hm ⟨B,hB,a,b,hab,he⟩

end
#print axioms actual_quartet_fixed
#print axioms actual_quartet_monomial
#print axioms actual_quartet_explicit_locus
end FourierCompleteIndependentReview20261003
