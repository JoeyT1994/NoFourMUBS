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
def state_1650203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 31 else (if j.val < 4 then 26 else 21)))
def hex_1650203 : String := "4140094309054009430944424105060509"
theorem cover_1650203 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650203 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1650203)
  decide +kernel
#print axioms cover_1650203

def state_1650220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 27 else 10)))
def hex_1650220 : String := "44054241054005440543424140050540440506444342070505434241400507400A074105060741050605410506"
theorem cover_1650220 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650220 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 45) (hex := hex_1650220)
  decide +kernel
#print axioms cover_1650220

def state_1650266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 10)))
def hex_1650266 : String := "4344064241430906060606"
theorem cover_1650266 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650266 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1650266)
  decide +kernel
#print axioms cover_1650266

def state_1650282 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 20)))
def hex_1650282 : String := "434406424143400644060906060606"
theorem cover_1650282 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650282 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1650282)
  decide +kernel
#print axioms cover_1650282

def state_1650300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 40)))
def hex_1650300 : String := "414043444208064241434006A005434006A006060643444241080941400608400609A044084209064043440606064344420906A04406420906"
theorem cover_1650300 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650300 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1650300)
  decide +kernel
#print axioms cover_1650300

def state_1650357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 40)))
def hex_1650357 : String := "4140064344064241400643440642414006434406060606060606060606"
theorem cover_1650357 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650357 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 29) (hex := hex_1650357)
  decide +kernel
#print axioms cover_1650357

def state_1650390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 104 else 41)))
def hex_1650390 : String := "4442414340424441050609440606A04006A043404244060606A04006A041434006A00606424143094009A0434009A0400AA04109430706"
theorem cover_1650390 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650390 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1650390)
  decide +kernel
#print axioms cover_1650390
end Mub6.Numerical.CircleFullD0.Forest
