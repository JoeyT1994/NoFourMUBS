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
def state_1601685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 49)))
def hex_1601685 : String := "444005424105090540424105430909054241094344099F444009099F09"
theorem cover_1601685 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601685 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1601685)
  decide +kernel
#print axioms cover_1601685

def state_1601715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 98)))
def hex_1601715 : String := "4042434109440642064005064105440542080505424306414405404206050606434105064105440540050A"
theorem cover_1601715 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601715 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_1601715)
  decide +kernel
#print axioms cover_1601715

def state_1601761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 41) else (if j.val < 3 then 104 else (if j.val < 4 then 118 else 99)))
def hex_1601761 : String := "41444240090609424043094109099F4009094442064041050806424008064041094306089F"
theorem cover_1601761 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601761 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 37) (hex := hex_1601761)
  decide +kernel
#print axioms cover_1601761

def state_1601798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 41) else (if j.val < 3 then 104 else (if j.val < 4 then 119 else 99)))
def hex_1601798 : String := "414442400543410506410505054240434109084105089F40059F44420840054105084240089F4041430905089F"
theorem cover_1601798 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601798 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 45) (hex := hex_1601798)
  decide +kernel
#print axioms cover_1601798

def state_1601843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 41) else (if j.val < 3 then 105 else (if j.val < 4 then 59 else 99)))
def hex_1601843 : String := "43410944400542410506054009429F0941054405404241050505429F05"
theorem cover_1601843 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601843 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_1601843)
  decide +kernel
#print axioms cover_1601843

def state_1601873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 41) else (if j.val < 3 then 104 else (if j.val < 4 then 59 else 99)))
def hex_1601873 : String := "434144069F06414440424306410606430905069F44404206410606069F"
theorem cover_1601873 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601873 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1601873)
  decide +kernel
#print axioms cover_1601873
end Mub6.Numerical.CircleFullD0.Forest
