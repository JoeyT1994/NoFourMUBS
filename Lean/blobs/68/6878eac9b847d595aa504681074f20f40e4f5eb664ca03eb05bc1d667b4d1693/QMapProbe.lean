import SignedDeterminantFoundation
open scoped ComplexConjugate
#check map_div
#check map_add
#check map_mul
example (a b : ℂ) : conj (a / b) = conj a / conj b := by
  simp only [map_div]
example (a b : ℂ) : conj (a + b) = conj a + conj b := by
  simp only [map_add]
