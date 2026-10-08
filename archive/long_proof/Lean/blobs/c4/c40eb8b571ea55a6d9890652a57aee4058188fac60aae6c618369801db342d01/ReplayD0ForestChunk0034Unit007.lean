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
def state_1628196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 4)))
def hex_1628196 : String := "43404442074341400A44430A0A0A0A070A4442434140070740070707434140444342414007070741400A44434241400A440A070A41400A44D343420A0A0A064207410A0643420A410A0A0A400644060A4207410A0643420A410A0A0A444342414007074007074140444342414044434207D30707444342050507074044430807074443050705414044D3434241400A0508414044D30A44D30508420741400A44D3070A44D3434205054207414044D307054044D30505404443080643080A444308424107054109064305420508420741404443420706070744090740064409074342414007050741404443420A41400A05050A0A4443054205410505054008054207414007070A44434241050541404409050505420709430542074140070505404443420808420706430842070A4443420505420741090843054205054207414007440707400707434241070541404443420541400A05050A430507444305420505054044430807050542074140070707404443420806060A444342400808400808420740064107064342080842070A414007074006074243410A0707434140440A094443420541050542070A05400A4443050705410A0A4007440707"
theorem cover_1628196 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628196 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 24) (count := 445) (hex := hex_1628196)
  decide +kernel
#print axioms cover_1628196

def state_1628643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
def hex_1628643 : String := "44434142400644064309060606064341420909420906410A06"
theorem cover_1628643 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628643 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1628643)
  decide +kernel
#print axioms cover_1628643

def state_1628673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 8)))
def hex_1628673 : String := "44434142400644064341424009444341090606090606410A06060606434142400944434109090A0A4006440609420A0641420A0606"
theorem cover_1628673 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628673 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 53) (hex := hex_1628673)
  decide +kernel
#print axioms cover_1628673


end Mub6.Numerical.CircleFullD0.Forest
