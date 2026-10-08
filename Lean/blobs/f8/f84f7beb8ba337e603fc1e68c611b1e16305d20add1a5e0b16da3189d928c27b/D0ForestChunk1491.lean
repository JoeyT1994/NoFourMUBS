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
def state_1658514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 10)))
def hex_1658514 : String := "41434442404143054406420506050540064143050905084442090642404144064308060641440943050705400641440606064305440606"
theorem cover_1658514 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658514 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_1658514)
  decide +kernel
#print axioms cover_1658514

def state_1658569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 10)))
def hex_1658569 : String := "414344050544094209404109050505"
theorem cover_1658569 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658569 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1658569)
  decide +kernel
#print axioms cover_1658569

def state_1658584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 11)))
def hex_1658584 : String := "420540444143054240444143050605050508050505"
theorem cover_1658584 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658584 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 21) (hex := hex_1658584)
  decide +kernel
#print axioms cover_1658584

def state_1658606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 4)))
def hex_1658606 : String := "40410806410909"
theorem cover_1658606 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658606 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1658606)
  decide +kernel
#print axioms cover_1658606

def state_1658616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 10)))
def hex_1658616 : String := "424341400544050740440608440742074341080606084341050606"
theorem cover_1658616 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658616 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1658616)
  decide +kernel
#print axioms cover_1658616

def state_1658647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 22)))
def hex_1658647 : String := "40084243414407400807440740080708434144054005434241054405400507050544400507400A43424144070A0A4144054006430A050A42070606"
theorem cover_1658647 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658647 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 59) (hex := hex_1658647)
  decide +kernel
#print axioms cover_1658647

def state_1658707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 23)))
def hex_1658707 : String := "0A"
theorem cover_1658707 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658707 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1658707)
  decide +kernel
#print axioms cover_1658707

def state_1658712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 46)))
def hex_1658712 : String := "4008424341080808434144400807404208430908420643064144074043060506440740080644400807400A420643060A414407400842070708"
theorem cover_1658712 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658712 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 57) (hex := hex_1658712)
  decide +kernel
#print axioms cover_1658712

def state_1658770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 47)))
def hex_1658770 : String := "0A"
theorem cover_1658770 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658770 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1658770)
  decide +kernel
#print axioms cover_1658770

def state_1658772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 56 else (if j.val < 4 then 28 else 47)))
def hex_1658772 : String := "430608"
theorem cover_1658772 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658772 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1658772)
  decide +kernel
#print axioms cover_1658772
end Mub6.Numerical.CircleFullD0.Forest
