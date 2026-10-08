import CentrePairChunk13
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48

theorem centre_pair_row17 : ∀ j : Fin 48, (17 : Fin 48) ≤ j → CentrePairAllows 17 j := by decide +kernel

theorem centre_pair_row18 : ∀ j : Fin 48, (18 : Fin 48) ≤ j → CentrePairAllows 18 j := by decide +kernel

theorem centre_pair_row19 : ∀ j : Fin 48, (19 : Fin 48) ≤ j → CentrePairAllows 19 j := by decide +kernel

theorem centre_pair_row20 : ∀ j : Fin 48, (20 : Fin 48) ≤ j → CentrePairAllows 20 j := by decide +kernel

#print axioms centre_pair_row17
#print axioms centre_pair_row18
#print axioms centre_pair_row19
#print axioms centre_pair_row20
end Mub6.Numerical.ClusterTube48
