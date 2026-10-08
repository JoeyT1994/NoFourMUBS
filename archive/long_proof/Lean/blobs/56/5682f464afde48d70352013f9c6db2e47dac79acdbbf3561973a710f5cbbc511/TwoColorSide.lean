import SideColumnIntervals

set_option autoImplicit false

namespace Mub6.Classification.SideColumns

/-- Three positions in two colors have an equal-colored pair. No
    distinctness assumption is imposed on the labels of those positions. -/
theorem three_two_colors (a b c : Bool) : a = b ∨ a = c ∨ b = c := by
  cases a <;> cases b <;> cases c <;> decide

/-- A bipartite necessary compatibility graph cannot contain the three
    columns of a physical side. Same-label pairs are included in `verified`.
    Interval membership and physical moment identities remain explicit. -/
theorem graph_excludes_two_colors {n : ℕ}
    (M : SharedSeedIntervals.SidePolynomialBoxes) (L : Fin n → Label)
    (color : Fin n → Bool)
    (verified : ∀ i j, color i = color j →
      anyCheck (pairChecks M (L i) (L j)) = true)
    {s t r : ℂ} {x y : Fin 3 → ℂ}
    (hm : SharedSeedIntervals.CoversSidePolynomials M s t r)
    (h : System s t r x y)
    (cover : ∀ j, ∃ i, (L i).Mem (x j) (y j)) : False := by
  obtain ⟨i, hi⟩ := cover 0
  obtain ⟨j, hj⟩ := cover 1
  obtain ⟨k, hk⟩ := cover 2
  rcases three_two_colors (color i) (color j) (color k) with hij | hik | hjk
  · have bad := verified i j hij
    rw [anyCheck_false (pairChecks_false hm h 0 1 (by decide) hi hj)] at bad
    contradiction
  · have bad := verified i k hik
    rw [anyCheck_false (pairChecks_false hm h 0 2 (by decide) hi hk)] at bad
    contradiction
  · have bad := verified j k hjk
    rw [anyCheck_false (pairChecks_false hm h 1 2 (by decide) hj hk)] at bad
    contradiction

#print axioms three_two_colors
#print axioms graph_excludes_two_colors

end Mub6.Classification.SideColumns
