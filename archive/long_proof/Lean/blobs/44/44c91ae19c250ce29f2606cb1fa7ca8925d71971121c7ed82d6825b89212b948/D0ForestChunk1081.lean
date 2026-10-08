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
def state_1559799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 22)))
def hex_1559799 : String := "40440943094208084443094241400744074342070907050943424140094409430808090942414008444308080840054405434205080541400844090809"
theorem cover_1559799 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559799 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1559799)
  decide +kernel
#print axioms cover_1559799

def state_1559861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 26 else (if j.val < 4 then 10 else 23)))
def hex_1559861 : String := "43414008444243070843070807400A4442430A4140084442050808050A420A0A41400644420608064044420508064442054341080508420508"
theorem cover_1559861 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559861 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_1559861)
  decide +kernel
#print axioms cover_1559861

def state_1559918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 27 else (if j.val < 4 then 10 else 23)))
def hex_1559918 : String := "43414008074009440907414008444308080840444308080844434241084008444308080809420808430808"
theorem cover_1559918 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559918 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 43) (hex := hex_1559918)
  decide +kernel
#print axioms cover_1559918

def state_1559969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 44)))
def hex_1559969 : String := "4140444243074107404489420707440607430541054007060744420706074044424306414044060A06060642430641400A07060A06"
theorem cover_1559969 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559969 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_1559969)
  decide +kernel
#print axioms cover_1559969

def state_1560028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 120) else (if j.val < 3 then 104 else (if j.val < 4 then 82 else 88)))
def hex_1560028 : String := "404489424107430740060707448907"
theorem cover_1560028 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560028 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1560028)
  decide +kernel
#print axioms cover_1560028

def state_1560045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 104 else (if j.val < 4 then 82 else 176)))
def hex_1560045 : String := "89"
theorem cover_1560045 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560045 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1560045)
  decide +kernel
#print axioms cover_1560045
end Mub6.Numerical.CircleFullD0.Forest
