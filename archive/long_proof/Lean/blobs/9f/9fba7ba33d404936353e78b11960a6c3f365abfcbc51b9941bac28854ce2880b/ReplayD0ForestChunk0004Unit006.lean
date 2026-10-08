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
def state_972371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 7)))
def hex_972371 : String := "400741424306444041064243064440064106070506410A42430A4440410A42434440070A06444005410542050A0543064440070A070A0A4306444041064306444240060A06060A0A40060A4306444006410643064442400606060606424344400741424409060607064440074142434440074109090744404142430744400741420543070542430705070707074142434440410909090A44404142430A050A424344090A4405054309440605410A4206090A430A4440410A09090A424344094007084440414243090609090640414442430705070707410A440608430944094007094007410A4243070807430744400741430944090A090742430744400741424309440640070909090707400741420A07074307444007414306444240070905070707"
theorem cover_972371 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972371 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 21) (count := 291) (hex := hex_972371)
  decide +kernel
#print axioms cover_972371

def state_972664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 6)))
def hex_972664 : String := "414344420A444008080A42404143440606090A4143444240080806420906440A0943440A42400A4142090A0A40064106070A400A41430644080643440A060A440A0A43440A0A0A"
theorem cover_972664 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972664 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 71) (hex := hex_972664)
  decide +kernel
#print axioms cover_972664


end Mub6.Numerical.CircleFullD0.Forest
