import CentrePairChunk05
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48

theorem centre_pair_row09 : ∀ j : Fin 48, (9 : Fin 48) ≤ j → CentrePairAllows 9 j := by decide +kernel

theorem centre_pair_row10 : ∀ j : Fin 48, (10 : Fin 48) ≤ j → CentrePairAllows 10 j := by decide +kernel

theorem centre_pair_row11 : ∀ j : Fin 48, (11 : Fin 48) ≤ j → CentrePairAllows 11 j := by decide +kernel

theorem centre_pair_row12 : ∀ j : Fin 48, (12 : Fin 48) ≤ j → CentrePairAllows 12 j := by decide +kernel

#print axioms centre_pair_row09
#print axioms centre_pair_row10
#print axioms centre_pair_row11
#print axioms centre_pair_row12
end Mub6.Numerical.ClusterTube48
