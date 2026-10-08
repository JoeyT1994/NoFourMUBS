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
def state_2585691 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 34) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 39)))
def hex_2585691 : String := "4243400A0A0A4340440A0A44410A420A434008050A410A420A43400A0A0A0A"
theorem cover_2585691 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585691 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_2585691)
  decide +kernel
#print axioms cover_2585691

def state_2585723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 35) else (if j.val < 3 then 96 else (if j.val < 4 then 46 else 39)))
def hex_2585723 : String := "434044410A0606440541050540440A07440A0A"
theorem cover_2585723 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585723 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 19) (hex := hex_2585723)
  decide +kernel
#print axioms cover_2585723

def state_2585743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 35) else (if j.val < 3 then 97 else (if j.val < 4 then 92 else 39)))
def hex_2585743 : String := "404441080841080644414243050A430940084405094243054008054308400809414243050A43400805400A440A074243054006054308400809"
theorem cover_2585743 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585743 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 57) (hex := hex_2585743)
  decide +kernel
#print axioms cover_2585743

def state_2585800 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 35) else (if j.val < 3 then 97 else (if j.val < 4 then 93 else 39)))
def hex_2585800 : String := "4044410A4243080A080744410A4243400A4405050A434008440909400A0A410A42074340070707"
theorem cover_2585800 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585800 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_2585800)
  decide +kernel
#print axioms cover_2585800

def state_2585839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 19)))
def hex_2585839 : String := "40444109420A4340050A05410942090544410A420A43400A44060A0A410A420A4340440A07440A070A"
theorem cover_2585839 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585839 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_2585839)
  decide +kernel
#print axioms cover_2585839

def state_2585882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 19)))
def hex_2585882 : String := "44414208050841424308050508"
theorem cover_2585882 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585882 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2585882)
  decide +kernel
#print axioms cover_2585882

def state_2585896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 38)))
def hex_2585896 : String := "41424340440708440641064243080606400A06434008060642434008440709404408084406410642430806064308400806"
theorem cover_2585896 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585896 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_2585896)
  decide +kernel
#print axioms cover_2585896
end Mub6.Numerical.CircleFullD0.Forest
