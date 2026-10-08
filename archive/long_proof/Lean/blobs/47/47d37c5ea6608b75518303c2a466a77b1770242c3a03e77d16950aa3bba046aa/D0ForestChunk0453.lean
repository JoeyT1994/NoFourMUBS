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
def state_1046341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 39 else (if j.val < 4 then 51 else 51)))
def hex_1046341 : String := "41064043060606"
theorem cover_1046341 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046341 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1046341)
  decide +kernel
#print axioms cover_1046341

def state_1046348 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 25)))
def hex_1046348 : String := "4306440606"
theorem cover_1046348 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046348 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1046348)
  decide +kernel
#print axioms cover_1046348

def state_1046353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
def hex_1046353 : String := "430A44090A"
theorem cover_1046353 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046353 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1046353)
  decide +kernel
#print axioms cover_1046353

def state_1046359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
def hex_1046359 : String := "420840430A444108420806080A"
theorem cover_1046359 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046359 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1046359)
  decide +kernel
#print axioms cover_1046359

def state_1046373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 13)))
def hex_1046373 : String := "40430544410542054005050505"
theorem cover_1046373 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046373 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1046373)
  decide +kernel
#print axioms cover_1046373

def state_1046388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 13)))
def hex_1046388 : String := "44420A0A0A"
theorem cover_1046388 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046388 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1046388)
  decide +kernel
#print axioms cover_1046388

def state_1046395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 26)))
def hex_1046395 : String := "41404305080540434442050A0544420541084043444205410505050843050808430508"
theorem cover_1046395 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046395 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 35) (hex := hex_1046395)
  decide +kernel
#print axioms cover_1046395

def state_1046431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 30) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 26)))
def hex_1046431 : String := "40430A44424106060642080606"
theorem cover_1046431 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046431 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_1046431)
  decide +kernel
#print axioms cover_1046431

def state_1046446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 50 else 26)))
def hex_1046446 : String := "44420A0A420A0A"
theorem cover_1046446 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046446 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1046446)
  decide +kernel
#print axioms cover_1046446

def state_1046456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 62) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 52)))
def hex_1046456 : String := "4043440A0A444208060806"
theorem cover_1046456 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046456 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1046456)
  decide +kernel
#print axioms cover_1046456

def state_1046467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 63) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 52)))
def hex_1046467 : String := "40434442410A40430A810A4106404307070642410A40090541064007064442414043444205060808088141068142084106400906430A4442080608"
theorem cover_1046467 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046467 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1046467)
  decide +kernel
#print axioms cover_1046467

def state_1046526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 39 else (if j.val < 4 then 51 else 52)))
def hex_1046526 : String := "41064043060606"
theorem cover_1046526 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046526 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1046526)
  decide +kernel
#print axioms cover_1046526

def state_1046533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 53)))
def hex_1046533 : String := "424108404309080841064043070706"
theorem cover_1046533 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046533 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1046533)
  decide +kernel
#print axioms cover_1046533

def state_1046548 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 26)))
def hex_1046548 : String := "430A4406420806"
theorem cover_1046548 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046548 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1046548)
  decide +kernel
#print axioms cover_1046548

def state_1046555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 27)))
def hex_1046555 : String := "4208414009084043420909420809430A08"
theorem cover_1046555 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046555 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1046555)
  decide +kernel
#print axioms cover_1046555

def state_1046572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 13)))
def hex_1046572 : String := "430A4442080608"
theorem cover_1046572 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046572 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1046572)
  decide +kernel
#print axioms cover_1046572
end Mub6.Numerical.CircleFullD0.Forest
