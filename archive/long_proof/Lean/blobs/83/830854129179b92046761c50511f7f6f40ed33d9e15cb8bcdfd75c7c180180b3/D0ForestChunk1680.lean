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
def state_2276428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 15)))
def hex_2276428 : String := "4042414308084309440908414305054344424005050542404105430908094041050605444240430509050542400808404305050542094105430509"
theorem cover_2276428 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276428 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_2276428)
  decide +kernel
#print axioms cover_2276428

def state_2276487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 7)))
def hex_2276487 : String := "4440424341070907070740424341080906434107440742080707420907"
theorem cover_2276487 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276487 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_2276487)
  decide +kernel
#print axioms cover_2276487

def state_2276517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
def hex_2276517 : String := "430A4440430A4406060A40430706430906"
theorem cover_2276517 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276517 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_2276517)
  decide +kernel
#print axioms cover_2276517

def state_2276536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 6)))
def hex_2276536 : String := "40420A4408414307420A400808080A"
theorem cover_2276536 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276536 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_2276536)
  decide +kernel
#print axioms cover_2276536

def state_2276551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 7)))
def hex_2276551 : String := "404207414307444240070A4007410643060A070742094143440907444042090A0940420741430644060606094307440A07"
theorem cover_2276551 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276551 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 49) (hex := hex_2276551)
  decide +kernel
#print axioms cover_2276551

def state_2276603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 6)))
def hex_2276603 : String := "430A4441430A44400606404206080608414340420A440A0A0A40420644410606064206440606430A06"
theorem cover_2276603 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276603 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_2276603)
  decide +kernel
#print axioms cover_2276603

def state_2276645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 6)))
def hex_2276645 : String := "4408414240430A44080A0A40430808430508420A08"
theorem cover_2276645 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276645 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_2276645)
  decide +kernel
#print axioms cover_2276645
end Mub6.Numerical.CircleFullD0.Forest
