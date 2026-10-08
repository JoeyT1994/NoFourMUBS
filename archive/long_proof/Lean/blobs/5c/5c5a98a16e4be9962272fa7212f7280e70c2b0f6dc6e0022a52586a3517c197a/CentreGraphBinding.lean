import CentrePairChunk45
set_option autoImplicit false
namespace Mub6.Numerical.ClusterTube48

/-- Every unordered pair, including the diagonal, has been checked from the
exact rational coordinates. No graph completeness list is assumed. -/
theorem centre_pair_allows_upper (i : Fin 48) :
    ∀ j : Fin 48, i ≤ j → CentrePairAllows i j := by
  fin_cases i
  · exact centre_pair_row00
  · exact centre_pair_row01
  · exact centre_pair_row02
  · exact centre_pair_row03
  · exact centre_pair_row04
  · exact centre_pair_row05
  · exact centre_pair_row06
  · exact centre_pair_row07
  · exact centre_pair_row08
  · exact centre_pair_row09
  · exact centre_pair_row10
  · exact centre_pair_row11
  · exact centre_pair_row12
  · exact centre_pair_row13
  · exact centre_pair_row14
  · exact centre_pair_row15
  · exact centre_pair_row16
  · exact centre_pair_row17
  · exact centre_pair_row18
  · exact centre_pair_row19
  · exact centre_pair_row20
  · exact centre_pair_row21
  · exact centre_pair_row22
  · exact centre_pair_row23
  · exact centre_pair_row24
  · exact centre_pair_row25
  · exact centre_pair_row26
  · exact centre_pair_row27
  · exact centre_pair_row28
  · exact centre_pair_row29
  · exact centre_pair_row30
  · exact centre_pair_row31
  · exact centre_pair_row32
  · exact centre_pair_row33
  · exact centre_pair_row34
  · exact centre_pair_row35
  · exact centre_pair_row36
  · exact centre_pair_row37
  · exact centre_pair_row38
  · exact centre_pair_row39
  · exact centre_pair_row40
  · exact centre_pair_row41
  · exact centre_pair_row42
  · exact centre_pair_row43
  · exact centre_pair_row44
  · exact centre_pair_row45
  · exact centre_pair_row46
  · exact centre_pair_row47

/-- Proven symmetry extends the finite checks to all 2304 ordered pairs. -/
theorem centre_pair_allows (i j : Fin 48) : CentrePairAllows i j := by
  rcases le_total i j with h | h
  · exact centre_pair_allows_upper i j h
  · exact (centre_pair_allows_upper j i h).symm

theorem centre_orthogonal_in_graph (i j : Fin 48)
    (h : (centreProbability i j : ℝ) ≤ 4*((5:ℝ)/27)^2*(1-((5:ℝ)/27)^2)) :
    orthGraph i j = true := by
  rcases (centre_pair_allows i j).1 with he | hn
  · exact he
  · exact False.elim (hn ((rationalOrthogonalPredicate_cast _).mpr h))

theorem centre_unbiased_in_graph (i j : Fin 48)
    (h : ((centreProbability i j : ℝ)+(5:ℝ)/192)^2 ≤ (2:ℝ)/3*(centreProbability i j : ℝ)) :
    ubGraph i j = true := by
  rcases (centre_pair_allows i j).2 with he | hn
  · exact he
  · exact False.elim (hn ((rationalUnbiasedPredicate_cast _).mpr h))

theorem exactCentre_orthogonal_probability_graph (i j : Fin 48)
    (h : Complex.normSq (rawOverlap (exactCentre i) (exactCentre j))/36 ≤
      4*((5:ℝ)/27)^2*(1-((5:ℝ)/27)^2)) : orthGraph i j = true := by
  apply centre_orthogonal_in_graph i j
  simpa only [centreProbability_eq_complex] using h

theorem exactCentre_unbiased_probability_graph (i j : Fin 48)
    (h : (Complex.normSq (rawOverlap (exactCentre i) (exactCentre j))/36+(5:ℝ)/192)^2 ≤
      (2:ℝ)/3*(Complex.normSq (rawOverlap (exactCentre i) (exactCentre j))/36)) :
    ubGraph i j = true := by
  apply centre_unbiased_in_graph i j
  simpa only [centreProbability_eq_complex] using h

#print axioms centre_pair_allows_upper
#print axioms centre_pair_allows
#print axioms centre_orthogonal_in_graph
#print axioms centre_unbiased_in_graph
#print axioms exactCentre_orthogonal_probability_graph
#print axioms exactCentre_unbiased_probability_graph
end Mub6.Numerical.ClusterTube48
