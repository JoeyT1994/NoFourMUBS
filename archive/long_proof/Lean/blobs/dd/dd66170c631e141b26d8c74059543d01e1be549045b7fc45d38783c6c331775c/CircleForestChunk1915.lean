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
def state_2332623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 29) else (if j.val < 3 then 24 else (if j.val < 4 then 21 else 15)))
def hex_2332623 : String := "44424043060843060808424043074144090707430641444240080806424007430641444240060606E50740060608400906"
theorem cover_2332623 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332623 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 49) (hex := hex_2332623)
  decide +kernel
#print axioms cover_2332623

def state_2332672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 10 else 15)))
def hex_2332672 : String := "404306094306414405420605440606"
theorem cover_2332672 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332672 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_2332672)
  decide +kernel
#print axioms cover_2332672

def state_2332687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 7)))
def hex_2332687 : String := "44420808424007430741440842070808400808"
theorem cover_2332687 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332687 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_2332687)
  decide +kernel
#print axioms cover_2332687

def state_2332708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 14)))
def hex_2332708 : String := "4243404144084243090808084144084243400805400807080840084107084340080808"
theorem cover_2332708 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332708 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_2332708)
  decide +kernel
#print axioms cover_2332708

def state_2332746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 15)))
def hex_2332746 : String := "414442430909090909"
theorem cover_2332746 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332746 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2332746)
  decide +kernel
#print axioms cover_2332746

def state_2332757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 30)))
def hex_2332757 : String := "42434041444243050505424340050540090505440842430909084144050744084243404105084105084008070840414407074408090743400905400907"
theorem cover_2332757 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332757 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_2332757)
  decide +kernel
#print axioms cover_2332757

def state_2332821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 28) else (if j.val < 3 then 48 else (if j.val < 4 then 44 else 31)))
def hex_2332821 : String := "414442430909090909"
theorem cover_2332821 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332821 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2332821)
  decide +kernel
#print axioms cover_2332821

def state_2332831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 56) else (if j.val < 3 then 48 else (if j.val < 4 then 44 else 31)))
def hex_2332831 : String := "44424340050507054243400A410544050A400A070A"
theorem cover_2332831 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332831 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_2332831)
  decide +kernel
#print axioms cover_2332831
end Mub6.Numerical.CircleFullD0.Forest
