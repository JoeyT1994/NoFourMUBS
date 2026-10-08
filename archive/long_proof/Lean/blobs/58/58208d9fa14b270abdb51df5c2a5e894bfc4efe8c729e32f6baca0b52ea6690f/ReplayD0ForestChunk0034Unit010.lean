import D0FullInterface
import ChartPartitionJoined
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1630658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
def hex_1630658 : String := "43444143404244064143070543090606424441434005424408410543070507054340064244430706430741400542440607060606064143400742444143070543074005424405070509074005424405410543400542440508050505434042444307060707424443074140074244070707400642440643074107060643074109400742090707404244060A064244414340054244050805050641434009424441080A0944410506094005424405080543400A42440A090A0A44060644064143070543070640054244054105434005424405410506050505434006424406434140424406060642444341070606430941400642090606060641400642440643410A060606060606414344400942414307444009420909094309444009424143090A43090A0909090744404241050A06424143440540084209090543444006420A060A0A064009424144430908070A0943444009424341090941444006420A06090A060944400A42410A0A060A44064144080A0A"
theorem cover_1630658 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630658 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 20) (count := 369) (hex := hex_1630658)
  decide +kernel
#print axioms cover_1630658

def state_1631027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_1631027 : String := "4243444243404144060A06414442074340064144080806064207430A0744060707434006414406434240410A060806420A060606420A4344400941434209090A06090A0A4344064344400606090A44060A"
theorem cover_1631027 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631027 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 81) (hex := hex_1631027)
  decide +kernel
#print axioms cover_1631027

def state_1631115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 4)))
def hex_1631115 : String := "434441420643060742430607434044430609060640070741064206430640070607"
theorem cover_1631115 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631115 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1631115)
  decide +kernel
#print axioms cover_1631115
end Mub6.Numerical.CircleFullD0.Forest
