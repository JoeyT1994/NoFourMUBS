import CentiradianPhysical

set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace Centiradian20261006
open scoped BigOperators ComplexConjugate
noncomputable section

theorem physical_phaseTransform {H : Mat6} (hH : Physical H) (α β : Fin 6 → ℂ)
    (hα : ∀ i, Complex.normSq (α i) = 1) (hβ : ∀ j, Complex.normSq (β j) = 1) :
    Physical (phaseTransform H α β) := by
  constructor
  · intro i j
    simp only [phaseTransform, Complex.normSq_mul, hα, hβ, hH.1, mul_one, one_mul]
  · intro i j
    change gramEntry (phaseTransform H α β) Finset.univ i j = _
    rw [gramEntry_phaseTransform H α β hβ Finset.univ i j]
    unfold gramEntry
    rw [hH.2 i j]
    by_cases hij : i = j
    · subst j
      simp [Complex.mul_conj, hα]
    · simp [hij]

def normalizationRows (H : Mat6) (i : Fin 6) : ℂ := conj (H i 0)
def normalizationCols (H : Mat6) (j : Fin 6) : ℂ := H 0 0*conj (H 0 j)
def normalize (H : Mat6) : Mat6 := phaseTransform H (normalizationRows H) (normalizationCols H)

theorem normalizationRows_unit {H : Mat6} (hH : Physical H) (i : Fin 6) :
    Complex.normSq (normalizationRows H i) = 1 := by
  simpa only [normalizationRows, Complex.normSq_conj] using hH.1 i 0

theorem normalizationCols_unit {H : Mat6} (hH : Physical H) (j : Fin 6) :
    Complex.normSq (normalizationCols H j) = 1 := by
  simp only [normalizationCols, Complex.normSq_mul, Complex.normSq_conj, hH.1, mul_one]

theorem normalize_physical {H : Mat6} (hH : Physical H) : Physical (normalize H) :=
  physical_phaseTransform hH _ _ (normalizationRows_unit hH) (normalizationCols_unit hH)

theorem normalize_dephased {H : Mat6} (hH : Physical H) : Dephased (normalize H) := by
  constructor
  · intro j
    change conj (H 0 0)*H 0 j*(H 0 0*conj (H 0 j)) = 1
    calc
      _ = (H 0 0*conj (H 0 0))*(H 0 j*conj (H 0 j)) := by ring
      _ = 1 := by simp only [Complex.mul_conj, hH.1, Complex.ofReal_one, one_mul]
  · intro i
    change conj (H i 0)*H i 0*(H 0 0*conj (H 0 0)) = 1
    calc
      _ = (H i 0*conj (H i 0))*(H 0 0*conj (H 0 0)) := by ring
      _ = 1 := by simp only [Complex.mul_conj, hH.1, Complex.ofReal_one, one_mul]

theorem normalize_cornerR {H : Mat6} (hH : Physical H)
    (a b c : Fin 6) (C : Finset (Fin 6)) : cornerR (normalize H) a b c C = cornerR H a b c C :=
  cornerR_phaseTransform H _ _ (normalizationRows_unit hH) (normalizationCols_unit hH) a b c C

theorem normalize_leadingR {H : Mat6} (hH : Physical H) : leadingR (normalize H) = leadingR H :=
  normalize_cornerR hH 0 1 2 leadingCols

theorem normalize_maximal {H : Mat6} (hH : Physical H) (hm : Maximal H) : Maximal (normalize H) := by
  intro a b c hab hbc C hC
  rw [normalize_cornerR hH, normalize_leadingR hH]
  exact hm a b c hab hbc C hC

end
end Centiradian20261006

#print axioms Centiradian20261006.physical_phaseTransform
#print axioms Centiradian20261006.normalize_physical
#print axioms Centiradian20261006.normalize_dephased
#print axioms Centiradian20261006.normalize_cornerR
#print axioms Centiradian20261006.normalize_maximal
