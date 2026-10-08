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
def state_1509653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 88) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 60)))
def hex_1509653 : String := "42444041430606064188434406420906094041434207050843090741884342444007070744060542074409400741430707074406400641884306420906"
theorem cover_1509653 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509653 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_1509653)
  decide +kernel
#print axioms cover_1509653

def state_1509714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 88) else (if j.val < 3 then 41 else (if j.val < 4 then 105 else 60)))
def hex_1509714 : String := "424440094143884405084309094008410843420744090707444006414309090640410909414388420809430909"
theorem cover_1509714 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509714 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 45) (hex := hex_1509714)
  decide +kernel
#print axioms cover_1509714

def state_1509759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 89) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 60)))
def hex_1509759 : String := "434244094009414342070942070909064244094009414309070909"
theorem cover_1509759 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509759 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1509759)
  decide +kernel
#print axioms cover_1509759

def state_1509787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 61)))
def hex_1509787 : String := "41434205050843420705420709"
theorem cover_1509787 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509787 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 13) (hex := hex_1509787)
  decide +kernel
#print axioms cover_1509787

def state_1509801 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 88) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 61)))
def hex_1509801 : String := "43424440410543050741430508430542070505054208444041084305084143050843424440054105090505420844090505"
theorem cover_1509801 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509801 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 49) (hex := hex_1509801)
  decide +kernel
#print axioms cover_1509801

def state_1509850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 89) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 61)))
def hex_1509850 : String := "434244404107074143420505074307070544400541050505424440074107070744400941434209050909400541054305420505"
theorem cover_1509850 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509850 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 51) (hex := hex_1509850)
  decide +kernel
#print axioms cover_1509850
end Mub6.Numerical.CircleFullD0.Forest
