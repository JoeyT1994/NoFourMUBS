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
def state_1667248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 63) else (if j.val < 3 then 102 else (if j.val < 4 then 102 else 63)))
def hex_1667248 : String := "41444243060643060642084340080540080644424305400905430940090642054305F2"
theorem cover_1667248 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667248 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 35) (hex := hex_1667248)
  decide +kernel
#print axioms cover_1667248

def state_1667283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 63) else (if j.val < 3 then 102 else (if j.val < 4 then 103 else 63)))
def hex_1667283 : String := "414442404306060640430606064208404308084306064442074043440AF2070742400A07F2"
theorem cover_1667283 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667283 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 37) (hex := hex_1667283)
  decide +kernel
#print axioms cover_1667283

def state_1667321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 63) else (if j.val < 3 then 103 else (if j.val < 4 then 102 else 63)))
def hex_1667321 : String := "41444340420606064042060606430A40424107F2070A4443094042090942060643400709F2"
theorem cover_1667321 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667321 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 37) (hex := hex_1667321)
  decide +kernel
#print axioms cover_1667321

def state_1667358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 63) else (if j.val < 3 then 103 else (if j.val < 4 then 103 else 63)))
def hex_1667358 : String := "41444042430605050640424341440608F24105F2434105F205424306064306064440424344410609F24405F2434405F20542430606430606F2"
theorem cover_1667358 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667358 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 57) (hex := hex_1667358)
  decide +kernel
#print axioms cover_1667358

def state_1667416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 7)))
def hex_1667416 : String := "4405400542434108080505"
theorem cover_1667416 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667416 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1667416)
  decide +kernel
#print axioms cover_1667416

def state_1667428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 14)))
def hex_1667428 : String := "4005420705"
theorem cover_1667428 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667428 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1667428)
  decide +kernel
#print axioms cover_1667428

def state_1667434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 15)))
def hex_1667434 : String := "420A05"
theorem cover_1667434 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667434 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1667434)
  decide +kernel
#print axioms cover_1667434

def state_1667438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 15)))
def hex_1667438 : String := "4341440A080A07"
theorem cover_1667438 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667438 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1667438)
  decide +kernel
#print axioms cover_1667438

def state_1667447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 30) else (if j.val < 3 then 25 else (if j.val < 4 then 26 else 15)))
def hex_1667447 : String := "440540054243410844420605080505"
theorem cover_1667447 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667447 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1667447)
  decide +kernel
#print axioms cover_1667447

def state_1667463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 26 else 30)))
def hex_1667463 : String := "4005420705"
theorem cover_1667463 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667463 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1667463)
  decide +kernel
#print axioms cover_1667463

def state_1667469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 26 else 31)))
def hex_1667469 : String := "420A05"
theorem cover_1667469 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667469 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1667469)
  decide +kernel
#print axioms cover_1667469
end Mub6.Numerical.CircleFullD0.Forest
