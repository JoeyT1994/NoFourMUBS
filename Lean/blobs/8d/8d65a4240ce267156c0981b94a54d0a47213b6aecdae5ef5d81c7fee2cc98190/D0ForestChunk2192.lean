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
def state_2606609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_2606609 : String := "42434440414206070641074206070644404105420543060541420507420607064344074041420607064107064407404143064206070607"
theorem cover_2606609 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606609 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 55) (hex := hex_2606609)
  decide +kernel
#print axioms cover_2606609

def state_2606664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_2606664 : String := "424306440606430A440706"
theorem cover_2606664 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606664 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2606664)
  decide +kernel
#print axioms cover_2606664

def state_2606675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_2606675 : String := "41424344070844070607424344420806080643440A40060707"
theorem cover_2606675 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606675 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 25) (hex := hex_2606675)
  decide +kernel
#print axioms cover_2606675

def state_2606702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_2606702 : String := "414243444041420806084107094041050841420507424305080744080843440707440608424344080808434440060807440608"
theorem cover_2606702 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606702 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_2606702)
  decide +kernel
#print axioms cover_2606702

def state_2606753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_2606753 : String := "4142434407074441424008070642080741424407400807070807424344090708434409074440060707"
theorem cover_2606753 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606753 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_2606753)
  decide +kernel
#print axioms cover_2606753

def state_2606797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
def hex_2606797 : String := "4344404105420505414205054205430505404142090942060941420A09420605444041420A0908410A420A0540090A"
theorem cover_2606797 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606797 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 47) (hex := hex_2606797)
  decide +kernel
#print axioms cover_2606797
end Mub6.Numerical.CircleFullD0.Forest
