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
def state_981380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 10)))
def hex_981380 : String := "43444240414305060641430909430506400505424007410743070707444206404107064109420643050642400641070607"
theorem cover_981380 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981380 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_981380)
  decide +kernel
#print axioms cover_981380

def state_981429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 10)))
def hex_981429 : String := "4344054240064305060544064206400A44420605420A05"
theorem cover_981429 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981429 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_981429)
  decide +kernel
#print axioms cover_981429

def state_981452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
def hex_981452 : String := "4244400A4143070A0A400741070A4440074107434244400743070707070A07"
theorem cover_981452 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981452 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_981452)
  decide +kernel
#print axioms cover_981452

def state_981489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 10)))
def hex_981489 : String := "43074442090907"
theorem cover_981489 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981489 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_981489)
  decide +kernel
#print axioms cover_981489

def state_981500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 48 else 20)))
def hex_981500 : String := "4041074442430740074107080707410A440A0A"
theorem cover_981500 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981500 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_981500)
  decide +kernel
#print axioms cover_981500

def state_981520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 49 else 20)))
def hex_981520 : String := "41074442434007410744424308090842430707074009410944090943400741070840070907"
theorem cover_981520 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981520 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 37) (hex := hex_981520)
  decide +kernel
#print axioms cover_981520

def state_981558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 50) else (if j.val < 3 then 16 else (if j.val < 4 then 49 else 20)))
def hex_981558 : String := "4442430A090907"
theorem cover_981558 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981558 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_981558)
  decide +kernel
#print axioms cover_981558

def state_981565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 51) else (if j.val < 3 then 16 else (if j.val < 4 then 49 else 20)))
def hex_981565 : String := "44424340410A440A0A0A4041094442430A40090A0A42430A4009050A0A430A4041090A0A4243404105440A0505404105444205090505430A400706"
theorem cover_981565 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981565 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_981565)
  decide +kernel
#print axioms cover_981565

def state_981624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 24 else 20)))
def hex_981624 : String := "4340070A40074106440A0A"
theorem cover_981624 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981624 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_981624)
  decide +kernel
#print axioms cover_981624

def state_981635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 21)))
def hex_981635 : String := "07"
theorem cover_981635 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981635 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_981635)
  decide +kernel
#print axioms cover_981635
end Mub6.Numerical.CircleFullD0.Forest
