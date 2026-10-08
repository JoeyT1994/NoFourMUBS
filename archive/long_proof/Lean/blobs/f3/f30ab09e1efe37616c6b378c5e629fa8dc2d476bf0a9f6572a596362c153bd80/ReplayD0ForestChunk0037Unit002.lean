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
def state_1652394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 11)))
def hex_1652394 : String := "4144400943094241444005434241054405090505400943094241054405090544404309054342414440054309050944400A4342414440090808440A0809424144050A0A06400943084241090A064109440606424105060640094309424144400543090509440A0A064144050906094440430906434241444009430842410908080944400908084109094241444006434241444006430A06400643080A0A06064006434241090A0906440A0A0640074307424441400643080A0A41070906"
theorem cover_1652394 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652394 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 19) (count := 189) (hex := hex_1652394)
  decide +kernel
#print axioms cover_1652394

def state_1652583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
def hex_1652583 : String := "4344424340410505054041444243414205050541420A400A440A050A4341424009054006050541420A060642050544420506054144420505050543400505404144060906414442430540060543050605050544424041434442410A0A060A0A430A0641434442404143420544410A050542070A43050A4143054205090540414342440605060606414342054440050505424409400A0544060643054205064205404143050A0541430544050505444240070706420A4006410A0A434442050505440A0A40064143444240064143440606060606424006414305440605050606064244400A4143050A05400A0544400A4143080A0A400A4143050A05"
theorem cover_1652583 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652583 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 251) (hex := hex_1652583)
  decide +kernel
#print axioms cover_1652583

def state_1652838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 10)))
def hex_1652838 : String := "4041430644420641064043064206444106404306440606060606064305444205404143054244060544414043054409420541060505050505050506"
theorem cover_1652838 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652838 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 59) (hex := hex_1652838)
  decide +kernel
#print axioms cover_1652838


end Mub6.Numerical.CircleFullD0.Forest
