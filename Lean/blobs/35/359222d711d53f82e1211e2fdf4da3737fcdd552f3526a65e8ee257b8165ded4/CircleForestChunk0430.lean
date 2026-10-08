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
def state_1040591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 29)))
def hex_1040591 : String := "424041430A05434442080808444205404108060605410A43080640414308444240414308054308080A40410A080A084308444240410808080808410A08"
theorem cover_1040591 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040591 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1040591)
  decide +kernel
#print axioms cover_1040591

def state_1040652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 14)))
def hex_1040652 : String := "430944424041430906060609424041434409074406064307060640414307080709"
theorem cover_1040652 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040652 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1040652)
  decide +kernel
#print axioms cover_1040652

def state_1040685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 14)))
def hex_1040685 : String := "41430944090A09"
theorem cover_1040685 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040685 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1040685)
  decide +kernel
#print axioms cover_1040685

def state_1040692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 15)))
def hex_1040692 : String := "40410843080808"
theorem cover_1040692 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040692 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1040692)
  decide +kernel
#print axioms cover_1040692

def state_1040700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 7)))
def hex_1040700 : String := "44404143420544060505060605"
theorem cover_1040700 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040700 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1040700)
  decide +kernel
#print axioms cover_1040700

def state_1040719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 30 else (if j.val < 4 then 22 else 28)))
def hex_1040719 : String := "06"
theorem cover_1040719 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040719 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1040719)
  decide +kernel
#print axioms cover_1040719

def state_1040724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 44 else 56)))
def hex_1040724 : String := "08"
theorem cover_1040724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040724 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1040724)
  decide +kernel
#print axioms cover_1040724

def state_1040726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 62 else (if j.val < 4 then 44 else 57)))
def hex_1040726 : String := "404143440605060606"
theorem cover_1040726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040726 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1040726)
  decide +kernel
#print axioms cover_1040726

def state_1040735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 63 else (if j.val < 4 then 44 else 57)))
def hex_1040735 : String := "40414344420608424041434442058505440605434406420506060685440642064043850606434406420640418506060641434406060606"
theorem cover_1040735 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040735 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_1040735)
  decide +kernel
#print axioms cover_1040735

def state_1040790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 45 else 28)))
def hex_1040790 : String := "440606"
theorem cover_1040790 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040790 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1040790)
  decide +kernel
#print axioms cover_1040790

def state_1040793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 45) else (if j.val < 3 then 31 else (if j.val < 4 then 22 else 28)))
def hex_1040793 : String := "4344060606"
theorem cover_1040793 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040793 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1040793)
  decide +kernel
#print axioms cover_1040793

def state_1040798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 22 else 28)))
def hex_1040798 : String := "06"
theorem cover_1040798 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040798 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1040798)
  decide +kernel
#print axioms cover_1040798

def state_1040800 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 30 else (if j.val < 4 then 22 else 29)))
def hex_1040800 : String := "05"
theorem cover_1040800 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040800 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1040800)
  decide +kernel
#print axioms cover_1040800

def state_1040803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 22 else 29)))
def hex_1040803 : String := "43444205404143444205850505434442404105060640410808080844060541430A05430806054442054043410505050605"
theorem cover_1040803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040803 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_1040803)
  decide +kernel
#print axioms cover_1040803
end Mub6.Numerical.CircleFullD0.Forest
