import CentrePairChunk21
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48

theorem centre_pair_row25 : ∀ j : Fin 48, (25 : Fin 48) ≤ j → CentrePairAllows 25 j := by decide +kernel

theorem centre_pair_row26 : ∀ j : Fin 48, (26 : Fin 48) ≤ j → CentrePairAllows 26 j := by decide +kernel

theorem centre_pair_row27 : ∀ j : Fin 48, (27 : Fin 48) ≤ j → CentrePairAllows 27 j := by decide +kernel

theorem centre_pair_row28 : ∀ j : Fin 48, (28 : Fin 48) ≤ j → CentrePairAllows 28 j := by decide +kernel

#print axioms centre_pair_row25
#print axioms centre_pair_row26
#print axioms centre_pair_row27
#print axioms centre_pair_row28
end Mub6.Numerical.ClusterTube48
