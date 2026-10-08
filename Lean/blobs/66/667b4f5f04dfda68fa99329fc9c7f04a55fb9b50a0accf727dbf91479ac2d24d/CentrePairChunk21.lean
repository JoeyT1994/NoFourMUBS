import CentrePairChunk17
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48

theorem centre_pair_row21 : ∀ j : Fin 48, (21 : Fin 48) ≤ j → CentrePairAllows 21 j := by decide +kernel

theorem centre_pair_row22 : ∀ j : Fin 48, (22 : Fin 48) ≤ j → CentrePairAllows 22 j := by decide +kernel

theorem centre_pair_row23 : ∀ j : Fin 48, (23 : Fin 48) ≤ j → CentrePairAllows 23 j := by decide +kernel

theorem centre_pair_row24 : ∀ j : Fin 48, (24 : Fin 48) ≤ j → CentrePairAllows 24 j := by decide +kernel

#print axioms centre_pair_row21
#print axioms centre_pair_row22
#print axioms centre_pair_row23
#print axioms centre_pair_row24
end Mub6.Numerical.ClusterTube48
