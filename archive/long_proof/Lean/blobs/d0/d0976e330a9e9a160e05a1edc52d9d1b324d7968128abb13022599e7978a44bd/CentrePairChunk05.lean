import CentrePairChunk01
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48

theorem centre_pair_row05 : ∀ j : Fin 48, (5 : Fin 48) ≤ j → CentrePairAllows 5 j := by decide +kernel

theorem centre_pair_row06 : ∀ j : Fin 48, (6 : Fin 48) ≤ j → CentrePairAllows 6 j := by decide +kernel

theorem centre_pair_row07 : ∀ j : Fin 48, (7 : Fin 48) ≤ j → CentrePairAllows 7 j := by decide +kernel

theorem centre_pair_row08 : ∀ j : Fin 48, (8 : Fin 48) ≤ j → CentrePairAllows 8 j := by decide +kernel

#print axioms centre_pair_row05
#print axioms centre_pair_row06
#print axioms centre_pair_row07
#print axioms centre_pair_row08
end Mub6.Numerical.ClusterTube48
