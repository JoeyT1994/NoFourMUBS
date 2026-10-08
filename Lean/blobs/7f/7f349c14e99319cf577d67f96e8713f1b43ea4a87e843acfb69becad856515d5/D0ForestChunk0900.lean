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
def state_1516525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 44) else (if j.val < 3 then 43 else (if j.val < 4 then 54 else 62)))
def hex_1516525 : String := "41424305080A4243444041050941424305080542430509070544400841084208090843054440070705"
theorem cover_1516525 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516525 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1516525)
  decide +kernel
#print axioms cover_1516525

def state_1516566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 44) else (if j.val < 3 then 43 else (if j.val < 4 then 54 else 62)))
def hex_1516566 : String := "4142430606430507424344404107424307060707400506444041064206070606430707"
theorem cover_1516566 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516566 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1516566)
  decide +kernel
#print axioms cover_1516566

def state_1516601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 43 else (if j.val < 4 then 54 else 63)))
def hex_1516601 : String := "40054105420605"
theorem cover_1516601 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516601 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1516601)
  decide +kernel
#print axioms cover_1516601

def state_1516608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 43 else (if j.val < 4 then 55 else 31)))
def hex_1516608 : String := "4440410842084344400807080841420643060642430606430707400806"
theorem cover_1516608 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516608 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1516608)
  decide +kernel
#print axioms cover_1516608

def state_1516641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 45) else (if j.val < 3 then 42 else (if j.val < 4 then 54 else 62)))
def hex_1516641 : String := "414208434440410809414208430908420909400841084208430508084243440A080843440940094142080909440908"
theorem cover_1516641 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516641 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1516641)
  decide +kernel
#print axioms cover_1516641

def state_1516688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 45) else (if j.val < 3 then 42 else (if j.val < 4 then 54 else 62)))
def hex_1516688 : String := "41420643444041420643444009060606420A4344094009064409060606444041060A0606420A43440A414042064344090506060A440A41060A"
theorem cover_1516688 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516688 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_1516688)
  decide +kernel
#print axioms cover_1516688

def state_1516745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 42 else (if j.val < 4 then 54 else 63)))
def hex_1516745 : String := "4041084208434440054142060542080505084106420643444106404206430506060606"
theorem cover_1516745 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516745 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 35) (hex := hex_1516745)
  decide +kernel
#print axioms cover_1516745
end Mub6.Numerical.CircleFullD0.Forest
