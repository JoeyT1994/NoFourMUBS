import CentrePairChunk09
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48

theorem centre_pair_row13 : ∀ j : Fin 48, (13 : Fin 48) ≤ j → CentrePairAllows 13 j := by decide +kernel

theorem centre_pair_row14 : ∀ j : Fin 48, (14 : Fin 48) ≤ j → CentrePairAllows 14 j := by decide +kernel

theorem centre_pair_row15 : ∀ j : Fin 48, (15 : Fin 48) ≤ j → CentrePairAllows 15 j := by decide +kernel

theorem centre_pair_row16 : ∀ j : Fin 48, (16 : Fin 48) ≤ j → CentrePairAllows 16 j := by decide +kernel

#print axioms centre_pair_row13
#print axioms centre_pair_row14
#print axioms centre_pair_row15
#print axioms centre_pair_row16
end Mub6.Numerical.ClusterTube48
