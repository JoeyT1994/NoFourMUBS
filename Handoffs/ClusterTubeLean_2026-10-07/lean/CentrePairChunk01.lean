import CentreRow00
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48

theorem centre_pair_row01 : ∀ j : Fin 48, (1 : Fin 48) ≤ j → CentrePairAllows 1 j := by decide +kernel

theorem centre_pair_row02 : ∀ j : Fin 48, (2 : Fin 48) ≤ j → CentrePairAllows 2 j := by decide +kernel

theorem centre_pair_row03 : ∀ j : Fin 48, (3 : Fin 48) ≤ j → CentrePairAllows 3 j := by decide +kernel

theorem centre_pair_row04 : ∀ j : Fin 48, (4 : Fin 48) ≤ j → CentrePairAllows 4 j := by decide +kernel

#print axioms centre_pair_row01
#print axioms centre_pair_row02
#print axioms centre_pair_row03
#print axioms centre_pair_row04
end Mub6.Numerical.ClusterTube48
