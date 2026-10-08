import CriticalRowSum
set_option autoImplicit false
namespace CriticalGeometricStrip20261003
/-- All twenty chosen triples and their literal complements cover six columns. -/
theorem triples_complement_cover : ∀ (c : Fin 20) (j : Fin 6),
    (∃ i : Fin 3,CriticalRowSum20261003.triples c i=j) ∨
    (∃ i : Fin 3,CriticalRowSum20261003.triples (Fin.rev c) i=j) := by
  decide +kernel
#print axioms triples_complement_cover
end CriticalGeometricStrip20261003
