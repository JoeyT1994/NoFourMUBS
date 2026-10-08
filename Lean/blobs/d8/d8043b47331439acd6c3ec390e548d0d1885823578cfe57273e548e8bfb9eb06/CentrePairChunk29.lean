import CentrePairChunk25
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48

theorem centre_pair_row29 : ∀ j : Fin 48, (29 : Fin 48) ≤ j → CentrePairAllows 29 j := by decide +kernel

theorem centre_pair_row30 : ∀ j : Fin 48, (30 : Fin 48) ≤ j → CentrePairAllows 30 j := by decide +kernel

theorem centre_pair_row31 : ∀ j : Fin 48, (31 : Fin 48) ≤ j → CentrePairAllows 31 j := by decide +kernel

theorem centre_pair_row32 : ∀ j : Fin 48, (32 : Fin 48) ≤ j → CentrePairAllows 32 j := by decide +kernel

#print axioms centre_pair_row29
#print axioms centre_pair_row30
#print axioms centre_pair_row31
#print axioms centre_pair_row32
end Mub6.Numerical.ClusterTube48
