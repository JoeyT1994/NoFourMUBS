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
def state_1324288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 104) else (if j.val < 3 then 104 else (if j.val < 4 then 32 else 105)))
def hex_1324288 : String := "4043410609094306410609"
theorem cover_1324288 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324288 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1324288)
  decide +kernel
#print axioms cover_1324288

def state_1324299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 104) else (if j.val < 3 then 105 else (if j.val < 4 then 32 else 52)))
def hex_1324299 : String := "444008430641060806"
theorem cover_1324299 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324299 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1324299)
  decide +kernel
#print axioms cover_1324299

def state_1324308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 105) else (if j.val < 3 then 52 else (if j.val < 4 then 32 else 52)))
def hex_1324308 : String := "42444043070943074207070944400543054405074043410605084306410607"
theorem cover_1324308 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324308 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 31) (hex := hex_1324308)
  decide +kernel
#print axioms cover_1324308

def state_1324339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 33 else 52)))
def hex_1324339 : String := "4142444340084142440A05084209080809084209440808"
theorem cover_1324339 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324339 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_1324339)
  decide +kernel
#print axioms cover_1324339

def state_1324363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 32 else 52)))
def hex_1324363 : String := "4142444043074142440A0506070706064207440706"
theorem cover_1324363 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324363 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_1324363)
  decide +kernel
#print axioms cover_1324363

def state_1324384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 33 else 52)))
def hex_1324384 : String := "4142444043410A0A0A0A05444043410608080A0642444043420707090A09444043440707080A4043410607084306410607"
theorem cover_1324384 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324384 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 49) (hex := hex_1324384)
  decide +kernel
#print axioms cover_1324384

def state_1324433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 16 else 53)))
def hex_1324433 : String := "4043410609094306410509"
theorem cover_1324433 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324433 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1324433)
  decide +kernel
#print axioms cover_1324433

def state_1324444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 52) else (if j.val < 3 then 53 else (if j.val < 4 then 16 else 26)))
def hex_1324444 : String := "4440434106440506084306410644080606"
theorem cover_1324444 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324444 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1324444)
  decide +kernel
#print axioms cover_1324444

def state_1324461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 53) else (if j.val < 3 then 26 else (if j.val < 4 then 16 else 26)))
def hex_1324461 : String := "42444043420744050709430742094407070944404305084307444108054108074043410607084306410607"
theorem cover_1324461 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324461 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 43) (hex := hex_1324461)
  decide +kernel
#print axioms cover_1324461

def state_1324504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 26)))
def hex_1324504 : String := "414244434041080841420508420944080840080A094408084209440808"
theorem cover_1324504 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324504 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_1324504)
  decide +kernel
#print axioms cover_1324504
end Mub6.Numerical.CircleFullD0.Forest
