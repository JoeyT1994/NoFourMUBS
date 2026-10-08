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
def state_1486567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 19) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 28)))
def hex_1486567 : String := "414208444008430A08084208444043410806084341424405080A4244050844050A410842054405084008430A08"
theorem cover_1486567 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486567 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1486567)
  decide +kernel
#print axioms cover_1486567

def state_1486612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 19) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 28)))
def hex_1486612 : String := "43094109420944404341094205440509414205440509050909"
theorem cover_1486612 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486612 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 25) (hex := hex_1486612)
  decide +kernel
#print axioms cover_1486612

def state_1486637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 19) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 29)))
def hex_1486637 : String := "40430A0809"
theorem cover_1486637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486637 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1486637)
  decide +kernel
#print axioms cover_1486637

def state_1486642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 14)))
def hex_1486642 : String := "09"
theorem cover_1486642 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486642 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1486642)
  decide +kernel
#print axioms cover_1486642

def state_1486643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 15)))
def hex_1486643 : String := "404309410642060A09"
theorem cover_1486643 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486643 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1486643)
  decide +kernel
#print axioms cover_1486643

def state_1486653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 7)))
def hex_1486653 : String := "4206444043420644410640060606060606"
theorem cover_1486653 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486653 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1486653)
  decide +kernel
#print axioms cover_1486653

def state_1486671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 7)))
def hex_1486671 : String := "4440080606"
theorem cover_1486671 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486671 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1486671)
  decide +kernel
#print axioms cover_1486671

def state_1486677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 14)))
def hex_1486677 : String := "404341420844400843420644410640080606060642084440084341420844400809064208444043410805050540080908080843410642064440430906060606"
theorem cover_1486677 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486677 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 63) (hex := hex_1486677)
  decide +kernel
#print axioms cover_1486677

def state_1486740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 15)))
def hex_1486740 : String := "06"
theorem cover_1486740 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486740 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1486740)
  decide +kernel
#print axioms cover_1486740

def state_1486741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
def hex_1486741 : String := "09"
theorem cover_1486741 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486741 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1486741)
  decide +kernel
#print axioms cover_1486741

def state_1486742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 3)))
def hex_1486742 : String := "4440440A414206434044420507060606420543404405050A050A4041060606"
theorem cover_1486742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486742 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_1486742)
  decide +kernel
#print axioms cover_1486742

def state_1486779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 12)))
def hex_1486779 : String := "08"
theorem cover_1486779 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486779 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1486779)
  decide +kernel
#print axioms cover_1486779
end Mub6.Numerical.CircleFullD0.Forest
