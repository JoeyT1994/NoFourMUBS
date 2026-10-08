import GeometricFourierTail

set_option autoImplicit false
namespace FourierRoutingReview20261003
open Mub6 Mub6.Numerical Worker12 CriticalFourierRouting20261003
open scoped BigOperators
noncomputable section

/-- The matrix hypothesis is precisely the numerical column-Gram convention.
No maximum, all-critical, nonzero-minor, or good-side premise is added. -/
theorem literal_singular_endpoint {H : Mub6.BasisMatrix}
    (hH : PhaseHadamard H) (rows cols : Fin 3 ↪ Fin 6)
    (hdet : (Matrix.submatrix H rows cols).det = 0) :
    ∃ ω p q : ℂ, PrimitiveCubicPhase ω ∧
      Complex.normSq p = 1 ∧ Complex.normSq q = 1 ∧
      (MonomialEquivalent H (fourierPhase ω p q) ∨
       MonomialEquivalent H (transposeEdge (fourierPhase ω p q))) :=
  phaseHadamard_singular_minor_fourier hH rows cols hdet

/-- The zero determinant is assumed on the actual unscaled overlap; the
classification acts on its explicit sqrt-six phase normalization. -/
theorem literal_quartet_endpoint {B : Fin 4 → Mub6.BasisMatrix}
    (hB : IsMUBQuartet B) (a b : Fin 4) (hab : a ≠ b)
    (rows cols : Fin 3 ↪ Fin 6)
    (hdet : (Matrix.submatrix (overlap (B a) (B b)) rows cols).det = 0) :
    ∃ ω p q : ℂ, PrimitiveCubicPhase ω ∧
      Complex.normSq p = 1 ∧ Complex.normSq q = 1 ∧
      (MonomialEquivalent (phaseScale (Real.sqrt 6) (overlap (B a) (B b)))
        (fourierPhase ω p q) ∨
       MonomialEquivalent (phaseScale (Real.sqrt 6) (overlap (B a) (B b)))
        (transposeEdge (fourierPhase ω p q))) :=
  actual_edge_zero_minor_fourier hB a b hab rows cols hdet

/-- The geometric moment statement retains repeated unit values. -/
theorem actual_geometric_moments {H : Mub6.BasisMatrix}
    (hH : PhaseHadamard H) (ρ : Fin 3 ↪ Fin 6) (x : Fin 6 → ℂ)
    (h0 : ∀ j, H (ρ 0) j = 1) (h1 : ∀ j, H (ρ 1) j = x j)
    (h2 : ∀ j, H (ρ 2) j = star (x j)) :
    (∀ j, Complex.normSq (x j) = 1) ∧
      (∑ j, x j) = 0 ∧ (∑ j, x j ^ 2) = 0 :=
  geometric_rows_moments hH ρ x h0 h1 h2

/-- The displayed normal form is a visible premise, not an inferred middle
step from the preceding moment equations. -/
theorem explicit_normal_form_endpoint {H : Hadamard6.Mat6} {ω u r s : ℂ}
    {D : Hadamard6.Mat3} (hH : Hadamard6.IsHadamard H)
    (hform : H = Hadamard6.fourierNormalForm ω u (star u) r s D)
    (hω : PrimitiveCubicPhase ω) : FourierOrTranspose (unsplitMatrix H) :=
  geometric_first_three_blocks_fourier hH hform hω

end
#print axioms literal_singular_endpoint
#print axioms literal_quartet_endpoint
#print axioms actual_geometric_moments
#print axioms explicit_normal_form_endpoint
end FourierRoutingReview20261003
