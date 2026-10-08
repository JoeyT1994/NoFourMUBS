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
def state_1614509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 46) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 49)))
def hex_1614509 : String := "40434205414440430642064406410A05064005054406054209414440420943440909090940420943414407050509090906"
theorem cover_1614509 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614509 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_1614509)
  decide +kernel
#print axioms cover_1614509

def state_1614558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 24)))
def hex_1614558 : String := "4440430608064043050905"
theorem cover_1614558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614558 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1614558)
  decide +kernel
#print axioms cover_1614558

def state_1614569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 25)))
def hex_1614569 : String := "4205430541404443054205410505050505"
theorem cover_1614569 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614569 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1614569)
  decide +kernel
#print axioms cover_1614569

def state_1614586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
def hex_1614586 : String := "4144064205430540410A050506"
theorem cover_1614586 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614586 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1614586)
  decide +kernel
#print axioms cover_1614586

def state_1614603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 15 else 24)))
def hex_1614603 : String := "09"
theorem cover_1614603 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614603 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1614603)
  decide +kernel
#print axioms cover_1614603

def state_1614606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 48)))
def hex_1614606 : String := "404142434440410505094041420905090909430A054209434441050941404209050909094142090A09"
theorem cover_1614606 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614606 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1614606)
  decide +kernel
#print axioms cover_1614606

def state_1614648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 49)))
def hex_1614648 : String := "41424344404142090A0909404142090A09094409094344400A0A40410A0A0A4440050A40060A42094344414042090A0909414042090A0909440909"
theorem cover_1614648 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614648 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_1614648)
  decide +kernel
#print axioms cover_1614648

def state_1614707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 49)))
def hex_1614707 : String := "4142090A09"
theorem cover_1614707 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614707 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1614707)
  decide +kernel
#print axioms cover_1614707

def state_1614712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 31 else 24)))
def hex_1614712 : String := "444041420905090940414209060909"
theorem cover_1614712 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614712 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1614712)
  decide +kernel
#print axioms cover_1614712

def state_1614728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 15 else 25)))
def hex_1614728 : String := "09"
theorem cover_1614728 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614728 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1614728)
  decide +kernel
#print axioms cover_1614728

def state_1614732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 25)))
def hex_1614732 : String := "4442434440414209430A0909090909434440410A0A0A40070A4440064106090642094340060A06"
theorem cover_1614732 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614732 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1614732)
  decide +kernel
#print axioms cover_1614732
end Mub6.Numerical.CircleFullD0.Forest
