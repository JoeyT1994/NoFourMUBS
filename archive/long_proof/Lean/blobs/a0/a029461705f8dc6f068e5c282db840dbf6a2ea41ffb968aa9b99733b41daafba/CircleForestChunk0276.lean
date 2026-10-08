import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_141706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 56) else (if j.val < 3 then 56 else (if j.val < 4 then 41 else 59)))
def hex_141706 : String := "41420644064306064244064306064406434041420644068242440682444306068206400706"
theorem cover_141706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141706 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_141706)
  decide +kernel
#print axioms cover_141706

def state_141744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 57 else (if j.val < 4 then 20 else 58)))
def hex_141744 : String := "43400A094007420609"
theorem cover_141744 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141744 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_141744)
  decide +kernel
#print axioms cover_141744

def state_141753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 57 else (if j.val < 4 then 20 else 59)))
def hex_141753 : String := "430A40424107440707074241440643400706074443404206070607434042410744430A07820A424106440682410944068207410744430907430A07"
theorem cover_141753 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141753 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_141753)
  decide +kernel
#print axioms cover_141753

def state_141814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 56 else (if j.val < 4 then 20 else 58)))
def hex_141814 : String := "430840414244064308064405430505084106420605"
theorem cover_141814 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141814 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_141814)
  decide +kernel
#print axioms cover_141814

def state_141836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 56 else (if j.val < 4 then 40 else 59)))
def hex_141836 : String := "4041420843080808414243084406084308440840080808"
theorem cover_141836 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141836 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_141836)
  decide +kernel
#print axioms cover_141836

def state_141860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 56 else (if j.val < 4 then 41 else 59)))
def hex_141860 : String := "4142444340080809094443400808400541070543400941420944084308074208080942444308080944430505430809"
theorem cover_141860 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141860 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_141860)
  decide +kernel
#print axioms cover_141860

def state_141909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 112 else (if j.val < 4 then 41 else 59)))
def hex_141909 : String := "440643404142064406094208080609"
theorem cover_141909 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141909 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_141909)
  decide +kernel
#print axioms cover_141909
end Mub6.Numerical.CircleFullPrototype.Forest
