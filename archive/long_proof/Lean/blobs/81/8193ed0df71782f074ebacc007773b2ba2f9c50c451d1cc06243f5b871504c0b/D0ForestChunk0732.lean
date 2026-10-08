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
def state_1476573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 176) else (if j.val < 3 then 132 else (if j.val < 4 then 179 else 233)))
def hex_1476573 : String := "4043410944424043054109054308094005084240050605410944424043410707070940434105050743084109084240430505064005430505430909"
theorem cover_1476573 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476573 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1476573)
  decide +kernel
#print axioms cover_1476573

def state_1476632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 176) else (if j.val < 3 then 133 else (if j.val < 4 then 179 else 233)))
def hex_1476632 : String := "4043410A440805414442094005080A4442404305050808054341090841094408420908"
theorem cover_1476632 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476632 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1476632)
  decide +kernel
#print axioms cover_1476632

def state_1476668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 177) else (if j.val < 3 then 66 else (if j.val < 4 then 179 else 232)))
def hex_1476668 : String := "42404308414408420A08080808"
theorem cover_1476668 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476668 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1476668)
  decide +kernel
#print axioms cover_1476668

def state_1476682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 177) else (if j.val < 3 then 132 else (if j.val < 4 then 179 else 233)))
def hex_1476682 : String := "404341444240050805054408054144424043410505070A404305050842400543050505440A054341440842060808414408420640430505060A"
theorem cover_1476682 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476682 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1476682)
  decide +kernel
#print axioms cover_1476682

def state_1476739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 177) else (if j.val < 3 then 133 else (if j.val < 4 then 179 else 233)))
def hex_1476739 : String := "4043054144080505430808"
theorem cover_1476739 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476739 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1476739)
  decide +kernel
#print axioms cover_1476739

def state_1476750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 67 else (if j.val < 4 then 89 else 116)))
def hex_1476750 : String := "4043410A0541440605440605434144080A0841440842404305410A054308080844084240050808"
theorem cover_1476750 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476750 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1476750)
  decide +kernel
#print axioms cover_1476750
end Mub6.Numerical.CircleFullD0.Forest
