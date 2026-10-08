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
def state_2315704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 45)))
def hex_2315704 : String := "434142404443080608444342410708074208084307084008074240084443414208080808084008444341070808084142400644060806420808"
theorem cover_2315704 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315704 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_2315704)
  decide +kernel
#print axioms cover_2315704

def state_2315761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 21 else (if j.val < 4 then 14 else 22)))
def hex_2315761 : String := "4340440A0A44424305410540094405050707400A444243410A400A440A0A41064006440A0A0A4243410740080741060807"
theorem cover_2315761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315761 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_2315761)
  decide +kernel
#print axioms cover_2315761

def state_2315810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 23)))
def hex_2315810 : String := "41424307444006070807424344404341080808434107424440080607074107420807400843070744400843410808080843074440080708"
theorem cover_2315810 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315810 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_2315810)
  decide +kernel
#print axioms cover_2315810

def state_2315867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 22)))
def hex_2315867 : String := "424307404405070507"
theorem cover_2315867 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315867 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2315867)
  decide +kernel
#print axioms cover_2315867

def state_2315880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 44)))
def hex_2315880 : String := "434105420505410542404405434105064105420609054044050505"
theorem cover_2315880 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315880 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_2315880)
  decide +kernel
#print axioms cover_2315880

def state_2315907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 45)))
def hex_2315907 : String := "43410742060741074240444341070641424044430542080507070742060643074107064443054105060607"
theorem cover_2315907 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315907 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 43) (hex := hex_2315907)
  decide +kernel
#print axioms cover_2315907

def state_2315950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 22)))
def hex_2315950 : String := "4405430507"
theorem cover_2315950 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315950 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2315950)
  decide +kernel
#print axioms cover_2315950
end Mub6.Numerical.CircleFullD0.Forest
