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
def state_1030619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 100) else (if j.val < 3 then 103 else (if j.val < 4 then 74 else 122)))
def hex_1030619 : String := "4041420A4307070A414243440540410505050A4344054041070505440A400A41084205084243050A43050A"
theorem cover_1030619 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030619 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1030619)
  decide +kernel
#print axioms cover_1030619

def state_1030663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 188 else 100) else (if j.val < 3 then 103 else (if j.val < 4 then 74 else 123)))
def hex_1030663 : String := "414209074243440A060A07"
theorem cover_1030663 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030663 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1030663)
  decide +kernel
#print axioms cover_1030663

def state_1030675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 189 else 200) else (if j.val < 3 then 103 else (if j.val < 4 then 74 else 123)))
def hex_1030675 : String := "4243444041084205050808094344400708084440070808"
theorem cover_1030675 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030675 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1030675)
  decide +kernel
#print axioms cover_1030675

def state_1030698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 189 else 201) else (if j.val < 3 then 103 else (if j.val < 4 then 74 else 123)))
def hex_1030698 : String := "424344054041420543050742050505440A4041090A410842090A4344400705400741080544400A414208070A400741084243050807"
theorem cover_1030698 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030698 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_1030698)
  decide +kernel
#print axioms cover_1030698

def state_1030751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 100) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 61)))
def hex_1030751 : String := "44400A41420A0A0A4041090A41420943444009080809420A43440A400741080A0A"
theorem cover_1030751 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030751 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1030751)
  decide +kernel
#print axioms cover_1030751

def state_1030784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 101) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 61)))
def hex_1030784 : String := "4243440A400A41420543050A0A0A4344400A4142050A0A4041420A070A414243050A434405400705440A400741420A070A4243050A43050A440A400A410A0A"
theorem cover_1030784 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030784 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_1030784)
  decide +kernel
#print axioms cover_1030784

def state_1030849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 100) else (if j.val < 3 then 102 else (if j.val < 4 then 37 else 61)))
def hex_1030849 : String := "434440410705054041084205430507074406400906"
theorem cover_1030849 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030849 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1030849)
  decide +kernel
#print axioms cover_1030849
end Mub6.Numerical.CircleFullD0.Forest
