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
def state_1469611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 17)))
def hex_1469611 : String := "404206410607424106434407060641434440064206410543054406050506434440074207094009424106070944074006420607"
theorem cover_1469611 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469611 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_1469611)
  decide +kernel
#print axioms cover_1469611

def state_1469662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 8)))
def hex_1469662 : String := "4344094009420A0944074007420707"
theorem cover_1469662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469662 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1469662)
  decide +kernel
#print axioms cover_1469662

def state_1469678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 9)))
def hex_1469678 : String := "4241064306064106430906"
theorem cover_1469678 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469678 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1469678)
  decide +kernel
#print axioms cover_1469678

def state_1469690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 9)))
def hex_1469690 : String := "4143440606064344400742430807430A440741060740064244060644430A0606440706"
theorem cover_1469690 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469690 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1469690)
  decide +kernel
#print axioms cover_1469690

def state_1469726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 9)))
def hex_1469726 : String := "434440420605050544400642064106434405050606"
theorem cover_1469726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469726 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_1469726)
  decide +kernel
#print axioms cover_1469726

def state_1469747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 9)))
def hex_1469747 : String := "43444009424309440A410A090940094244430541050905054440420709424344074106070743440909440741060740064243060643444105090506"
theorem cover_1469747 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469747 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_1469747)
  decide +kernel
#print axioms cover_1469747

def state_1469807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 4)))
def hex_1469807 : String := "09"
theorem cover_1469807 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469807 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1469807)
  decide +kernel
#print axioms cover_1469807

def state_1469810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 8)))
def hex_1469810 : String := "09"
theorem cover_1469810 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469810 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1469810)
  decide +kernel
#print axioms cover_1469810

def state_1469814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 8)))
def hex_1469814 : String := "09"
theorem cover_1469814 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469814 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1469814)
  decide +kernel
#print axioms cover_1469814

def state_1469816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 16)))
def hex_1469816 : String := "4009414243444009414243094487400841080809094009414243050808094440070A084309084243090709"
theorem cover_1469816 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469816 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 43) (hex := hex_1469816)
  decide +kernel
#print axioms cover_1469816
end Mub6.Numerical.CircleFullD0.Forest
