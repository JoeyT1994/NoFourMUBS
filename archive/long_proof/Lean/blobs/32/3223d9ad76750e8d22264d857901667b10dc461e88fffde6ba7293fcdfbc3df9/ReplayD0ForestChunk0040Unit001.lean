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
def state_2254221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 6)))
def hex_2254221 : String := "44404441420A050A41420A060A4441050A41420A050A404142074307444007414243054405070507400741420743054407070707414243440A0A444041430A0A070A400741080943440540050544404142430544050505420A050540414243400705404407074441050A08430540440541050505420743054007440507414243054008050542430A400A094305404405420A05054243070A430A440A4007420A0A"
theorem cover_2254221 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254221 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 161) (hex := hex_2254221)
  decide +kernel
#print axioms cover_2254221

def state_2254384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 12)))
def hex_2254384 : String := "43444142400744430808430A41420A060706084142400743440A0A444142074008430A08074142074007430A4441420A06074142070A07074043080843440641060844084142400643060806084207084408414240430744080543444142400743440A0A44084142050805080841424007430705404344070708434441424007430A08060841424007430A440A0540084344060A44064106080A4408414205080542050844414240054344080505080841420540054344080505050808"
theorem cover_2254384 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254384 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 19) (count := 189) (hex := hex_2254384)
  decide +kernel
#print axioms cover_2254384


end Mub6.Numerical.CircleFullD0.Forest
