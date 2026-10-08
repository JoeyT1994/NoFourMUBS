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
def state_2577981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 17)))
def hex_2577981 : String := "40414407424307400507074407424307050541440742430740074106070744074243074041070741070707"
theorem cover_2577981 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577981 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_2577981)
  decide +kernel
#print axioms cover_2577981

def state_2578024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 49 else 17)))
def hex_2578024 : String := "40054144064243404105050606064442430705054243400541440642430706060A054340050705"
theorem cover_2578024 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578024 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 39) (hex := hex_2578024)
  decide +kernel
#print axioms cover_2578024

def state_2578063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 8)))
def hex_2578063 : String := "414406424005430605054442400543410644054243400506050505054240054341444243060505420843060544424340054106440505050542430905050505"
theorem cover_2578063 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578063 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 63) (hex := hex_2578063)
  decide +kernel
#print axioms cover_2578063

def state_2578127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 9)))
def hex_2578127 : String := "4243410906094341444009420909094440094209434105050540064206430605410505"
theorem cover_2578127 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578127 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_2578127)
  decide +kernel
#print axioms cover_2578127

def state_2578163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 22 else (if j.val < 4 then 12 else 9)))
def hex_2578163 : String := "4341444340090A400908434006070944434006420641444342054006050808064009420841084408084306400607414408084440090808"
theorem cover_2578163 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578163 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 55) (hex := hex_2578163)
  decide +kernel
#print axioms cover_2578163
end Mub6.Numerical.CircleFullD0.Forest
