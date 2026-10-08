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
def state_1661409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
def hex_1661409 : String := "404344414243054044060505050805444142400643050606060A43054441050505"
theorem cover_1661409 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661409 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1661409)
  decide +kernel
#print axioms cover_1661409

def state_1661442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 2)))
def hex_1661442 : String := "44400609400A4441420706060A"
theorem cover_1661442 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661442 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_1661442)
  decide +kernel
#print axioms cover_1661442

def state_1661457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_1661457 : String := "4243444142434405050843074440074144080505074243050A43090A4107420807444142084408070A410708434441074305440905074441070A07"
theorem cover_1661457 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661457 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 59) (hex := hex_1661457)
  decide +kernel
#print axioms cover_1661457

def state_1661516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_1661516 : String := "424344420A43090A424340410709414405074409060A43074041070941050A0A434443090A07440A400705"
theorem cover_1661516 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661516 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1661516)
  decide +kernel
#print axioms cover_1661516

def state_1661562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
def hex_1661562 : String := "4440414205430544414440420507050505050505400505"
theorem cover_1661562 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661562 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 23) (hex := hex_1661562)
  decide +kernel
#print axioms cover_1661562

def state_1661585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
def hex_1661585 : String := "4440414244080544434144400842054341440A050508400A050A0A0505414205444340414442054305414409050505050540414409050509050505"
theorem cover_1661585 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661585 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 59) (hex := hex_1661585)
  decide +kernel
#print axioms cover_1661585
end Mub6.Numerical.CircleFullD0.Forest
