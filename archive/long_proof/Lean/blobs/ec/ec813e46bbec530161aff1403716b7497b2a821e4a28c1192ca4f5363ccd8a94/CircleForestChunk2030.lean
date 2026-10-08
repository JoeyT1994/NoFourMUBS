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
def state_2567703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 115 else 95)))
def hex_2567703 : String := "42E2414440064342E206064043090643090944404342E206064342E20942E206404342E20942E2064342E20942E209"
theorem cover_2567703 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567703 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 47) (hex := hex_2567703)
  decide +kernel
#print axioms cover_2567703

def state_2567751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 114 else 95)))
def hex_2567751 : String := "4241440540E2054440E20506414405400905444043420808420A090540430842E20906"
theorem cover_2567751 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567751 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 35) (hex := hex_2567751)
  decide +kernel
#print axioms cover_2567751

def state_2567786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 115 else 95)))
def hex_2567786 : String := "42414440E20540E205440A40E20A4144054043090905444043420A090A05404342E20942E209430A0A"
theorem cover_2567786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567786 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 41) (hex := hex_2567786)
  decide +kernel
#print axioms cover_2567786

def state_2567828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 94)))
def hex_2567828 : String := "404342414440070A40070A07414440070A404342074144074007430807070743420A0A0A440740070A4241440740070A07414440060A40070A0743420A0A0A"
theorem cover_2567828 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567828 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 63) (hex := hex_2567828)
  decide +kernel
#print axioms cover_2567828

def state_2567894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 116 else (if j.val < 4 then 114 else 95)))
def hex_2567894 : String := "4441404342064407414005060507430642060A400706414043064205050606"
theorem cover_2567894 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567894 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_2567894)
  decide +kernel
#print axioms cover_2567894
end Mub6.Numerical.CircleFullD0.Forest
