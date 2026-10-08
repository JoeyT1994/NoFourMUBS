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
def state_1001561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 90)))
def hex_1001561 : String := "41420540444305050505420540444341420540070609414205400A0542050943410542054007054105054443410509410509430505"
theorem cover_1001561 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001561 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_1001561)
  decide +kernel
#print axioms cover_1001561

def state_1001614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 105 else 90)))
def hex_1001614 : String := "4105420540440A0A4443050505"
theorem cover_1001614 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001614 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_1001614)
  decide +kernel
#print axioms cover_1001614

def state_1001627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 91)))
def hex_1001627 : String := "43410542054044430505050505"
theorem cover_1001627 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001627 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1001627)
  decide +kernel
#print axioms cover_1001627

def state_1001640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 45)))
def hex_1001640 : String := "44434105420540440905050505"
theorem cover_1001640 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001640 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1001640)
  decide +kernel
#print axioms cover_1001640

def state_1001653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 53 else 45)))
def hex_1001653 : String := "08"
theorem cover_1001653 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001653 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1001653)
  decide +kernel
#print axioms cover_1001653

def state_1001654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 22)))
def hex_1001654 : String := "4443410842054044074341050708070843410542054044430505050505"
theorem cover_1001654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001654 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1001654)
  decide +kernel
#print axioms cover_1001654

def state_1001683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 27 else 22)))
def hex_1001683 : String := "08"
theorem cover_1001683 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001683 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1001683)
  decide +kernel
#print axioms cover_1001683

def state_1001684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 23)))
def hex_1001684 : String := "410543420540444341050505050505"
theorem cover_1001684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001684 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1001684)
  decide +kernel
#print axioms cover_1001684

def state_1001702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
def hex_1001702 : String := "43424007444107430742400744080707070742400744410742054307050707"
theorem cover_1001702 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001702 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_1001702)
  decide +kernel
#print axioms cover_1001702

def state_1001736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 22)))
def hex_1001736 : String := "444342410740064443050607074241070641070A430707"
theorem cover_1001736 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001736 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1001736)
  decide +kernel
#print axioms cover_1001736

def state_1001764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 44)))
def hex_1001764 : String := "4443070707"
theorem cover_1001764 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001764 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1001764)
  decide +kernel
#print axioms cover_1001764

def state_1001771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 104 else 88)))
def hex_1001771 : String := "424107400744C60707"
theorem cover_1001771 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001771 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1001771)
  decide +kernel
#print axioms cover_1001771

def state_1001782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 88)))
def hex_1001782 : String := "07"
theorem cover_1001782 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001782 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1001782)
  decide +kernel
#print axioms cover_1001782

def state_1001784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 88)))
def hex_1001784 : String := "4443C6420A0707"
theorem cover_1001784 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001784 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1001784)
  decide +kernel
#print axioms cover_1001784
end Mub6.Numerical.CircleFullD0.Forest
