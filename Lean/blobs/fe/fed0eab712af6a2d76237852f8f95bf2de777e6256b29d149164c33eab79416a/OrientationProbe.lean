import Mathlib.Data.Finset.Card
import Mathlib.Data.Fintype.Fin
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
#synth Fintype (Fin 4 → Bool)
#synth Decidable (∀ s : Fin 4 → Bool, ∀ i, s i = false ∨ s i = true)
#synth Decidable (∀ s t : Fin 4 → Bool,
  (∀ i j, s i = s j ↔ t i = t j) →
  (∀ i j k, i ≠ j → i ≠ k → j ≠ k →
    ¬ ((s i = s j ∧ t i = t j) ∧ s i = s k ∧ t i = t k)) →
  ∃ k : Bool, (∀ i, t i = Bool.xor (s i) k))
