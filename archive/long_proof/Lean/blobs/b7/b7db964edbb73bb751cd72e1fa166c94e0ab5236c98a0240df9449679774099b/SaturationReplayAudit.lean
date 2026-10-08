import Saturation

set_option autoImplicit false
namespace SaturationReplayAudit20261003

theorem literal_lagrange (x y : Fin 3 → ℂ) :
    Complex.normSq (Worker12.inner3 x y) + Worker12.normSq3 (Worker12.cross3 x y) =
      Worker12.normSq3 x * Worker12.normSq3 y := Worker12.lagrange3 x y

theorem literal_equality_case {X : Matrix (Fin 3) (Fin 3) ℂ}
    (hunit : Hadamard6.EntrywiseUnit X) (hdet : Complex.normSq X.det = 27) :
    Hadamard6.IsHadamard3 X := Worker12.phase_det_twenty_seven_isHadamard3 hunit hdet

theorem literal_selected_route {H : Mub6.BasisMatrix}
    (hH : Mub6.IsPhaseHadamard6 H) (rows cols : Fin 3 ↪ Fin 6)
    (hdet : Complex.normSq (Worker12.selectedMinor H rows cols).det = 27) :
    Hadamard6.AllFourBlocksHadamard (Worker12.selectedMatrix H rows cols) :=
  Worker12.saturated_selectedMinor_allFourBlocks hH rows cols hdet

end SaturationReplayAudit20261003
#print axioms SaturationReplayAudit20261003.literal_lagrange
#print axioms SaturationReplayAudit20261003.literal_equality_case
#print axioms SaturationReplayAudit20261003.literal_selected_route
