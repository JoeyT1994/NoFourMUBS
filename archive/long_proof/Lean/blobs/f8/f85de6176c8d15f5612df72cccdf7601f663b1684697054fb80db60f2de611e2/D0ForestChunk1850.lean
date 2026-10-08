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
def state_2317116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 55) else (if j.val < 3 then 41 else (if j.val < 4 then 30 else 44)))
def hex_2317116 : String := "434044410542050541420505420A4305404405420A0505440505404441420505420A43404405050540060541420906420A434044420605080A400609440A0A"
theorem cover_2317116 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317116 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_2317116)
  decide +kernel
#print axioms cover_2317116

def state_2317179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 45)))
def hex_2317179 : String := "4142090742430A0A4340444107420A070707404441094208080809"
theorem cover_2317179 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317179 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_2317179)
  decide +kernel
#print axioms cover_2317179

def state_2317206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 31 else 22)))
def hex_2317206 : String := "404441064243400644060606064106420806444109420A43404441060A41060A09094109420909"
theorem cover_2317206 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317206 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_2317206)
  decide +kernel
#print axioms cover_2317206

def state_2317247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 22)))
def hex_2317247 : String := "44424106434044420606420606444241054305400605054241074307400607074006440606410643400A074006440606424107434008070807"
theorem cover_2317247 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317247 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_2317247)
  decide +kernel
#print axioms cover_2317247

def state_2317304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 27) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 22)))
def hex_2317304 : String := "4442410543404405070540444241054305060542410543404405060506074405070707"
theorem cover_2317304 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317304 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 35) (hex := hex_2317304)
  decide +kernel
#print axioms cover_2317304
end Mub6.Numerical.CircleFullD0.Forest
