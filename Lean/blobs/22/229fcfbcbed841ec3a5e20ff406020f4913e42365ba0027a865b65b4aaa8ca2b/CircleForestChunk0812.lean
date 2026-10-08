import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1495612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 198 else 85) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 118)))
def hex_1495612 : String := "4341444240064306410A06060A44064240064306414406070606414442400843410805050642080A4406420806"
theorem cover_1495612 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495612 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1495612)
  decide +kernel
#print axioms cover_1495612

def state_1495658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 85) else (if j.val < 3 then 81 else (if j.val < 4 then 206 else 118)))
def hex_1495658 : String := "41444240430941090509400643090942090A444240430605050642404341094406094109440542050909404306410A064341094406094109440609"
theorem cover_1495658 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495658 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_1495658)
  decide +kernel
#print axioms cover_1495658

def state_1495718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 170) else (if j.val < 3 then 81 else (if j.val < 4 then 207 else 118)))
def hex_1495718 : String := "4442054043410A064144050A054341090505424043090809400A09"
theorem cover_1495718 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495718 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_1495718)
  decide +kernel
#print axioms cover_1495718

def state_1495745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 171) else (if j.val < 3 then 81 else (if j.val < 4 then 207 else 118)))
def hex_1495745 : String := "44420540060542404341440508050543090540434144060A06414442050542080A440542050643410944054205094144050905"
theorem cover_1495745 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495745 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_1495745)
  decide +kernel
#print axioms cover_1495745

def state_1495796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 85) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 119)))
def hex_1495796 : String := "4043410A42444008430A08080A410842080A43410A424440430909090944400A090A4142080A4244400809084440430A41084442080A084309410909400A09"
theorem cover_1495796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495796 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_1495796)
  decide +kernel
#print axioms cover_1495796

def state_1495860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 59)))
def hex_1495860 : String := "430A0A"
theorem cover_1495860 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495860 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1495860)
  decide +kernel
#print axioms cover_1495860
end Mub6.Numerical.CircleFullD0.Forest
