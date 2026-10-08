import CentreSymmetry
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48

theorem centre_pair_row00 : ∀ j : Fin 48, (0 : Fin 48) ≤ j → CentrePairAllows 0 j := by decide +kernel

#print axioms centre_pair_row00
end Mub6.Numerical.ClusterTube48
