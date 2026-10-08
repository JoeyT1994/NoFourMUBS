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
def state_1318308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 101)))
def hex_1318308 : String := "41400944094342410540094409050509400644094342060609"
theorem cover_1318308 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318308 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_1318308)
  decide +kernel
#print axioms cover_1318308

def state_1318334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 100)))
def hex_1318334 : String := "4308420A08"
theorem cover_1318334 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318334 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1318334)
  decide +kernel
#print axioms cover_1318334

def state_1318340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 102 else 101)))
def hex_1318340 : String := "4241070708"
theorem cover_1318340 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318340 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1318340)
  decide +kernel
#print axioms cover_1318340

def state_1318346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 101)))
def hex_1318346 : String := "4140444342074140440843070A080A0A43420741070742074140440A4307060A0A440A43070A40440A4342074107070A0A"
theorem cover_1318346 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318346 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_1318346)
  decide +kernel
#print axioms cover_1318346

def state_1318396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 124) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 101)))
def hex_1318396 : String := "404443080943424105404443050905050542410540090A0544084305420A05"
theorem cover_1318396 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318396 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_1318396)
  decide +kernel
#print axioms cover_1318396

def state_1318427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 125) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 101)))
def hex_1318427 : String := "40444308094342414044430609434206050944084308420A084006440843060A410506424140090A0909440843080A"
theorem cover_1318427 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318427 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_1318427)
  decide +kernel
#print axioms cover_1318427

def state_1318474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 50)))
def hex_1318474 : String := "40440643064205064443060A43420708424140050A05414044094342060609440843080A40060A"
theorem cover_1318474 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318474 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_1318474)
  decide +kernel
#print axioms cover_1318474

def state_1318514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 51)))
def hex_1318514 : String := "07"
theorem cover_1318514 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318514 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1318514)
  decide +kernel
#print axioms cover_1318514

def state_1318518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 102 else 51)))
def hex_1318518 : String := "444207410540064307444206050A07"
theorem cover_1318518 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318518 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1318518)
  decide +kernel
#print axioms cover_1318518

def state_1318535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 102)))
def hex_1318535 : String := "414008444307080740084443070807"
theorem cover_1318535 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318535 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1318535)
  decide +kernel
#print axioms cover_1318535
end Mub6.Numerical.CircleFullD0.Forest
