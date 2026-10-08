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
def state_1323527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 25)))
def hex_1323527 : String := "4341094409420A060A"
theorem cover_1323527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323527 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1323527)
  decide +kernel
#print axioms cover_1323527

def state_1323536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 25)))
def hex_1323536 : String := "4043090809"
theorem cover_1323536 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323536 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1323536)
  decide +kernel
#print axioms cover_1323536

def state_1323541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 12)))
def hex_1323541 : String := "410A0A"
theorem cover_1323541 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323541 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1323541)
  decide +kernel
#print axioms cover_1323541

def state_1323544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 12)))
def hex_1323544 : String := "4341090A0A"
theorem cover_1323544 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323544 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1323544)
  decide +kernel
#print axioms cover_1323544

def state_1323552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 24) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 13)))
def hex_1323552 : String := "424440430605050506"
theorem cover_1323552 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323552 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1323552)
  decide +kernel
#print axioms cover_1323552

def state_1323565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 16 else 26)))
def hex_1323565 : String := "410642444043410642444043B74106424443B70806064306410642444043060505050606064142050642444340084105420508080508430641054205060606"
theorem cover_1323565 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323565 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 16) (count := 63) (hex := hex_1323565)
  decide +kernel
#print axioms cover_1323565

def state_1323628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 26)))
def hex_1323628 : String := "4142050642444340410508050505440806"
theorem cover_1323628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323628 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1323628)
  decide +kernel
#print axioms cover_1323628

def state_1323645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 26)))
def hex_1323645 : String := "430641054205440A05"
theorem cover_1323645 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323645 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1323645)
  decide +kernel
#print axioms cover_1323645

def state_1323654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 27)))
def hex_1323654 : String := "06"
theorem cover_1323654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323654 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1323654)
  decide +kernel
#print axioms cover_1323654

def state_1323655 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 13)))
def hex_1323655 : String := "06"
theorem cover_1323655 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323655 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1323655)
  decide +kernel
#print axioms cover_1323655

def state_1323656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
def hex_1323656 : String := "414205440705424443404105080505054408430605"
theorem cover_1323656 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323656 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1323656)
  decide +kernel
#print axioms cover_1323656

def state_1323677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 13)))
def hex_1323677 : String := "43410642444043060505050641054205440A05"
theorem cover_1323677 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323677 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1323677)
  decide +kernel
#print axioms cover_1323677

def state_1323701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 12)))
def hex_1323701 : String := "44064140060A06"
theorem cover_1323701 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323701 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1323701)
  decide +kernel
#print axioms cover_1323701

def state_1323709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 24)))
def hex_1323709 : String := "410A06"
theorem cover_1323709 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323709 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1323709)
  decide +kernel
#print axioms cover_1323709

def state_1323716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 26) else (if j.val < 3 then 50 else (if j.val < 4 then 16 else 25)))
def hex_1323716 : String := "440641400643080606"
theorem cover_1323716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323716 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1323716)
  decide +kernel
#print axioms cover_1323716

def state_1323726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 26) else (if j.val < 3 then 51 else (if j.val < 4 then 16 else 50)))
def hex_1323726 : String := "410A06"
theorem cover_1323726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323726 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1323726)
  decide +kernel
#print axioms cover_1323726

def state_1323732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 32 else 51)))
def hex_1323732 : String := "4244064140064342064406070606444140060A06414043B7420644064143B709064342440707440707424406410A06440A410A07400607"
theorem cover_1323732 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323732 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1323732)
  decide +kernel
#print axioms cover_1323732

def state_1323787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 33 else 51)))
def hex_1323787 : String := "42064406414340060A0606"
theorem cover_1323787 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323787 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1323787)
  decide +kernel
#print axioms cover_1323787
end Mub6.Numerical.CircleFullD0.Forest
