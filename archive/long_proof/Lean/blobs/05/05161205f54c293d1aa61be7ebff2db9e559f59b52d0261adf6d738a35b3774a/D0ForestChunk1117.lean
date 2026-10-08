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
def state_1568500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 11)))
def hex_1568500 : String := "444309424140094409430505090943094241084008440908410509"
theorem cover_1568500 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568500 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1568500)
  decide +kernel
#print axioms cover_1568500

def state_1568528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 22)))
def hex_1568528 : String := "43424105060542414044430542410505050505404409430942414009050905440643054241050605410505"
theorem cover_1568528 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568528 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1568528)
  decide +kernel
#print axioms cover_1568528

def state_1568571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 23)))
def hex_1568571 : String := "430742410544404309424144050544400943094241050905400807054305424105440605054043074207050705"
theorem cover_1568571 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568571 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 45) (hex := hex_1568571)
  decide +kernel
#print axioms cover_1568571

def state_1568616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 11)))
def hex_1568616 : String := "05"
theorem cover_1568616 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568616 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1568616)
  decide +kernel
#print axioms cover_1568616

def state_1568619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 10)))
def hex_1568619 : String := "424043444108420A084108420808084344410A0A410A420A0A0A40080A"
theorem cover_1568619 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568619 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_1568619)
  decide +kernel
#print axioms cover_1568619

def state_1568649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 10)))
def hex_1568649 : String := "40434407424140074344074208080707090743444241400706060642414043440A0A0A0A4043440642070707430607410A404306070644070A"
theorem cover_1568649 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568649 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_1568649)
  decide +kernel
#print axioms cover_1568649

def state_1568706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 10)))
def hex_1568706 : String := "404309074344060A0A"
theorem cover_1568706 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568706 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1568706)
  decide +kernel
#print axioms cover_1568706

def state_1568716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 11)))
def hex_1568716 : String := "42400843444105424005050505440A0805"
theorem cover_1568716 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568716 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1568716)
  decide +kernel
#print axioms cover_1568716
end Mub6.Numerical.CircleFullD0.Forest
