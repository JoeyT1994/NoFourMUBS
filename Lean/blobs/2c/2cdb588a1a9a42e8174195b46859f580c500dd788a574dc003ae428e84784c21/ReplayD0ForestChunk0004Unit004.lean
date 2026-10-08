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
def state_971147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
def hex_971147 : String := "4440414243440A050A43440A4041090A41420943440A0509420A0A0A0A4142434406400542060506434440440A414207080A4406410706404142430505434440440841050544084105050544400807054243440A05054344400A4144084205080A4005410505440A0541420543440705074206434406404105420505410506064406404341070A070742064344064041420A43440A400A4142050A0A0A0A414206434406404142054344060505060606060640410942054305054142054305054243444009410906090543444041420505420543440A0505414205434440410544050541050605054243440640050605434440414406050A0640054105440605054005410542050505"
theorem cover_971147 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971147 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 265) (hex := hex_971147)
  decide +kernel
#print axioms cover_971147


end Mub6.Numerical.CircleFullD0.Forest
