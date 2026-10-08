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
def state_2300304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 22)))
def hex_2300304 : String := "444041420606424309060A41424305440506054243440940094105094440094105094041060941424305064305060943440540090544400605400641050940410A4243440A08080A41424344400A05400A074406400641060A4307064243444041424309090A094142430544054009054305054209094041424308080808414243074440080708074243090843090844404106084142434440060508060A42430908430808400841420808084344400A410509400A07444008410A0A0A"
theorem cover_2300304 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300304 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 189) (hex := hex_2300304)
  decide +kernel
#print axioms cover_2300304

def state_2300493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
def hex_2300493 : String := "43424409400943064206094409400943094209094244400742070940420541430805054241430907074143440909440905094440094241430909090940424108054108084241434409400809440908094143440940080944090809"
theorem cover_2300493 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300493 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 91) (hex := hex_2300493)
  decide +kernel
#print axioms cover_2300493

def state_2300585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 23)))
def hex_2300585 : String := "41434244414342400A44414342400A440A0A0A0A434240050940080942050841430A0505400844410A430A08410A0A0A434240054409050805414342050A050544410A08410A084208084342080805"
theorem cover_2300585 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300585 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 79) (hex := hex_2300585)
  decide +kernel
#print axioms cover_2300585


end Mub6.Numerical.CircleFullD0.Forest
