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
def state_1565290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 44)))
def hex_1565290 : String := "4243414044064205060605054306414044430605434205060544060905"
theorem cover_1565290 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565290 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1565290)
  decide +kernel
#print axioms cover_1565290

def state_1565319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 45)))
def hex_1565319 : String := "424341444042094306090609440640050609434144404243064109060606404243060943064107060606414440434209410944060909090944400506400509"
theorem cover_1565319 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565319 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_1565319)
  decide +kernel
#print axioms cover_1565319

def state_1565383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 27 else (if j.val < 4 then 20 else 22)))
def hex_1565383 : String := "414044424305410540090605420705444206050540440642430641400906060606"
theorem cover_1565383 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565383 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1565383)
  decide +kernel
#print axioms cover_1565383

def state_1565422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 60) else (if j.val < 3 then 54 else (if j.val < 4 then 42 else 44)))
def hex_1565422 : String := "404443054241054008444305080505430542080544430542410540440505050505"
theorem cover_1565422 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565422 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1565422)
  decide +kernel
#print axioms cover_1565422

def state_1565457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 54 else (if j.val < 4 then 42 else 88)))
def hex_1565457 : String := "43094241404409084443090A43424108090542080840094406430642410A060909"
theorem cover_1565457 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565457 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1565457)
  decide +kernel
#print axioms cover_1565457

def state_1565490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 54 else (if j.val < 4 then 42 else 89)))
def hex_1565490 : String := "43424140094405050909424140084443420805080840440908444309424108400806094342080808410509"
theorem cover_1565490 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565490 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1565490)
  decide +kernel
#print axioms cover_1565490

def state_1565534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 54 else (if j.val < 4 then 42 else 88)))
def hex_1565534 : String := "43064241404443060A43060A060606"
theorem cover_1565534 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565534 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1565534)
  decide +kernel
#print axioms cover_1565534
end Mub6.Numerical.CircleFullD0.Forest
