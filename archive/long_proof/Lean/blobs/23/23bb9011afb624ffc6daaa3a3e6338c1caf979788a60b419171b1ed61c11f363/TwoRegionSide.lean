import TwoColorSide

set_option autoImplicit false

namespace Mub6.Classification.SideColumns

/-- Two rectangular regions suffice when two distinct physical positions
    cannot both lie in either region. Membership may overlap. -/
theorem two_regions_exclude
    (M : SharedSeedIntervals.SidePolynomialBoxes) (A B : Label)
    (badA : anyCheck (pairChecks M A A) = true)
    (badB : anyCheck (pairChecks M B B) = true)
    {s t r : ℂ} {x y : Fin 3 → ℂ}
    (hm : SharedSeedIntervals.CoversSidePolynomials M s t r)
    (h : System s t r x y)
    (cover : ∀ j, A.Mem (x j) (y j) ∨ B.Mem (x j) (y j)) : False := by
  let L : Fin 2 → Label := ![A,B]
  let color : Fin 2 → Bool := ![false,true]
  have checked : ∀ i j, color i = color j →
      anyCheck (pairChecks M (L i) (L j)) = true := by
    intro i j hij
    fin_cases i <;> fin_cases j
    · exact badA
    · simp [color] at hij
    · simp [color] at hij
    · exact badB
  apply graph_excludes_two_colors M L color checked hm h
  intro j
  rcases cover j with ha | hb
  · exact ⟨0,ha⟩
  · exact ⟨1,hb⟩

#print axioms two_regions_exclude

end Mub6.Classification.SideColumns
