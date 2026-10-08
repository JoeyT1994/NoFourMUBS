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
def state_997398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 37 else (if j.val < 4 then 27 else 43)))
def hex_997398 : String := "434044060A444206054241430A06064143050A050A"
theorem cover_997398 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997398 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_997398)
  decide +kernel
#print axioms cover_997398

def state_997420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 21)))
def hex_997420 : String := "444241430506050542414340054405074006440A07430506410705"
theorem cover_997420 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997420 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_997420)
  decide +kernel
#print axioms cover_997420

def state_997448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 42)))
def hex_997448 : String := "42414305404406420643050644424305060542434109054109064305090541430540050505"
theorem cover_997448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997448 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_997448)
  decide +kernel
#print axioms cover_997448

def state_997488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 38 else (if j.val < 4 then 54 else 43)))
def hex_997488 : String := "404405424107050544424109050542410943054009440509410705"
theorem cover_997488 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997488 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_997488)
  decide +kernel
#print axioms cover_997488

def state_997515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 38 else (if j.val < 4 then 55 else 43)))
def hex_997515 : String := "404442430906094243090907444243410940094405094108064309094243410940090941080A430909"
theorem cover_997515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997515 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_997515)
  decide +kernel
#print axioms cover_997515

def state_997556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 38 else (if j.val < 4 then 27 else 43)))
def hex_997556 : String := "4305400A4442414305060505420A4143050A05"
theorem cover_997556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997556 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_997556)
  decide +kernel
#print axioms cover_997556

def state_997575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 39 else (if j.val < 4 then 27 else 43)))
def hex_997575 : String := "414305404409074442090542090705"
theorem cover_997575 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997575 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_997575)
  decide +kernel
#print axioms cover_997575

def state_997593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 20)))
def hex_997593 : String := "4240414342440A0A0A424440090740090844090943424405404305410A050A054244074041434207094207090707440540410A050A410A430A0740410A050A"
theorem cover_997593 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997593 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_997593)
  decide +kernel
#print axioms cover_997593
end Mub6.Numerical.CircleFullD0.Forest
