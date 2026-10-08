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
def state_1649449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 105 else 41)))
def hex_1649449 : String := "44424105400543A005410540050542414005434405424105A04105A0054043A00543A044070741400543440505054043A00543A0440542410540050705"
theorem cover_1649449 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649449 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1649449)
  decide +kernel
#print axioms cover_1649449

def state_1649511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 98) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 41)))
def hex_1649511 : String := "40054344050905"
theorem cover_1649511 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649511 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1649511)
  decide +kernel
#print axioms cover_1649511

def state_1649519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 41)))
def hex_1649519 : String := "4344050905"
theorem cover_1649519 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649519 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1649519)
  decide +kernel
#print axioms cover_1649519

def state_1649528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 198) else (if j.val < 3 then 122 else (if j.val < 4 then 104 else 82)))
def hex_1649528 : String := "40054344050905"
theorem cover_1649528 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649528 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1649528)
  decide +kernel
#print axioms cover_1649528

def state_1649535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 199) else (if j.val < 3 then 122 else (if j.val < 4 then 104 else 82)))
def hex_1649535 : String := "4043440507054344424140054344050705404307054307440542A0064105400643070542410940074307444208070709440542410540054344050805410506"
theorem cover_1649535 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649535 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_1649535)
  decide +kernel
#print axioms cover_1649535

def state_1649598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 123 else (if j.val < 4 then 104 else 82)))
def hex_1649598 : String := "410540064344060705"
theorem cover_1649598 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649598 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1649598)
  decide +kernel
#print axioms cover_1649598

def state_1649607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 104 else 83)))
def hex_1649607 : String := "424109400943084442414005430805400908090809"
theorem cover_1649607 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649607 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 21) (hex := hex_1649607)
  decide +kernel
#print axioms cover_1649607

def state_1649628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 105 else 41)))
def hex_1649628 : String := "440542410540054344054241054005080605410506"
theorem cover_1649628 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649628 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 21) (hex := hex_1649628)
  decide +kernel
#print axioms cover_1649628

def state_1649649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 53 else 20)))
def hex_1649649 : String := "44054241054005434405050505"
theorem cover_1649649 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649649 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1649649)
  decide +kernel
#print axioms cover_1649649

def state_1649662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 31 else (if j.val < 4 then 26 else 20)))
def hex_1649662 : String := "410540054344054241400505400643440609060605"
theorem cover_1649662 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649662 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 21) (hex := hex_1649662)
  decide +kernel
#print axioms cover_1649662
end Mub6.Numerical.CircleFullD0.Forest
