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
def state_1654437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 99) else (if j.val < 3 then 122 else (if j.val < 4 then 104 else 81)))
def hex_1654437 : String := "41404344050505430A0540434442410A09410540050942410A40430A44050A0A4140050A4043440607050A440542410509054344090A09"
theorem cover_1654437 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654437 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_1654437)
  decide +kernel
#print axioms cover_1654437

def state_1654492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 99) else (if j.val < 3 then 123 else (if j.val < 4 then 104 else 81)))
def hex_1654492 : String := "414005430A0540434442410506054241400505400643070606054344420A410A0A420A410A404307060A440542410509410506"
theorem cover_1654492 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654492 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1654492)
  decide +kernel
#print axioms cover_1654492

def state_1654543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 105 else 40)))
def hex_1654543 : String := "44054241050905"
theorem cover_1654543 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654543 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1654543)
  decide +kernel
#print axioms cover_1654543

def state_1654550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 40)))
def hex_1654550 : String := "434409420A410A40430A090909"
theorem cover_1654550 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654550 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1654550)
  decide +kernel
#print axioms cover_1654550

def state_1654565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 98) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 41)))
def hex_1654565 : String := "4043444206410A40430A050A420641064043060A064442070542410A4043060506410540050A4306440706"
theorem cover_1654565 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654565 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_1654565)
  decide +kernel
#print axioms cover_1654565

def state_1654610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 104 else 41)))
def hex_1654610 : String := "4442414043060A0640A006414043440A0A440A420A0A0A40A0430A44090A42410640A00641404308444206410AA0080640A008"
theorem cover_1654610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654610 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1654610)
  decide +kernel
#print axioms cover_1654610

def state_1654662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 105 else 82)))
def hex_1654662 : String := "42410709414005074043A00509"
theorem cover_1654662 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654662 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1654662)
  decide +kernel
#print axioms cover_1654662
end Mub6.Numerical.CircleFullD0.Forest
