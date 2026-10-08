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
def state_1614771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 45) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 25)))
def hex_1614771 : String := "44420943414440420706094007094409094144090609420507"
theorem cover_1614771 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614771 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1614771)
  decide +kernel
#print axioms cover_1614771

def state_1614796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 25)))
def hex_1614796 : String := "414442090A420543080909"
theorem cover_1614796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614796 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1614796)
  decide +kernel
#print axioms cover_1614796

def state_1614807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 31 else 25)))
def hex_1614807 : String := "404144420906064409064144090909"
theorem cover_1614807 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614807 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1614807)
  decide +kernel
#print axioms cover_1614807

def state_1614822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
def hex_1614822 : String := "44420843414409090909420509"
theorem cover_1614822 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614822 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_1614822)
  decide +kernel
#print axioms cover_1614822

def state_1614835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
def hex_1614835 : String := "414442094340440909060942050909"
theorem cover_1614835 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614835 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1614835)
  decide +kernel
#print axioms cover_1614835

def state_1614850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 13)))
def hex_1614850 : String := "430540414205444340414442050605050509050505"
theorem cover_1614850 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614850 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 21) (hex := hex_1614850)
  decide +kernel
#print axioms cover_1614850

def state_1614871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 7)))
def hex_1614871 : String := "404142434442054041060505090943444006410605060642050741420543050505"
theorem cover_1614871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614871 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1614871)
  decide +kernel
#print axioms cover_1614871

def state_1614906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
def hex_1614906 : String := "4041430A444244090A0907430744424144090744400743074241090707070707410A430A444240410A444306420608070A40410844080708420507"
theorem cover_1614906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614906 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_1614906)
  decide +kernel
#print axioms cover_1614906

def state_1614965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 7)))
def hex_1614965 : String := "4007410A05"
theorem cover_1614965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614965 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1614965)
  decide +kernel
#print axioms cover_1614965

def state_1614973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
def hex_1614973 : String := "44424344400541050A40410607410942430A4409060944050609424340064106070606"
theorem cover_1614973 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614973 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_1614973)
  decide +kernel
#print axioms cover_1614973
end Mub6.Numerical.CircleFullD0.Forest
