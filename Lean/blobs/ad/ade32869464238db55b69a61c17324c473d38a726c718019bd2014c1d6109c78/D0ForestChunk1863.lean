import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2320123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 14 else 22)))
def hex_2320123 : String := "4143404409094409424143074008070909404409084442414309400944090909094241430808080A43094009440909"
theorem cover_2320123 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320123 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_2320123)
  decide +kernel
#print axioms cover_2320123

def state_2320170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 23)))
def hex_2320170 : String := "4241434440084143420608084306080808430805414344400842410708070808430808"
theorem cover_2320170 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320170 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_2320170)
  decide +kernel
#print axioms cover_2320170

def state_2320209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 22)))
def hex_2320209 : String := "404441430642404406060640090606414306420640440606060606"
theorem cover_2320209 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320209 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_2320209)
  decide +kernel
#print axioms cover_2320209

def state_2320240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 20 else (if j.val < 4 then 58 else 44)))
def hex_2320240 : String := "4240440941430942090909444143060A06410A0640440941430942090909444143054205050641430642404406060640090506"
theorem cover_2320240 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320240 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_2320240)
  decide +kernel
#print axioms cover_2320240

def state_2320292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 40 else (if j.val < 4 then 59 else 44)))
def hex_2320292 : String := "40444142074307070741424307074340084409080842070944410A07410A0A"
theorem cover_2320292 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320292 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_2320292)
  decide +kernel
#print axioms cover_2320292

def state_2320324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 56) else (if j.val < 3 then 41 else (if j.val < 4 then 59 else 44)))
def hex_2320324 : String := "44414309424009090909414342400844090809420840084409084309420808"
theorem cover_2320324 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320324 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_2320324)
  decide +kernel
#print axioms cover_2320324
end Mub6.Numerical.CircleFullD0.Forest
