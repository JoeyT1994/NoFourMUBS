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
def state_2273313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 21 else 28)))
def hex_2273313 : String := "4243440A400A0A44400A0A4041420843054405080A410909434405400505444041050A05404105420A43050A41050A"
theorem cover_2273313 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273313 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_2273313)
  decide +kernel
#print axioms cover_2273313

def state_2273361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 44 else (if j.val < 4 then 21 else 29)))
def hex_2273361 : String := "434440074108074007084440410807410809400808"
theorem cover_2273361 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273361 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 21) (hex := hex_2273361)
  decide +kernel
#print axioms cover_2273361

def state_2273383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 42 else 29)))
def hex_2273383 : String := "444041050741050A40410807410542074305410507"
theorem cover_2273383 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273383 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_2273383)
  decide +kernel
#print axioms cover_2273383

def state_2273405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 43 else 58)))
def hex_2273405 : String := "404142430508054243070A43440507440A40070A41420505420A4305440541050A"
theorem cover_2273405 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273405 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 33) (hex := hex_2273405)
  decide +kernel
#print axioms cover_2273405

def state_2273438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 43 else 59)))
def hex_2273438 : String := "4041084207430740074108074108424308084341080A414440050508440A400708"
theorem cover_2273438 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273438 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_2273438)
  decide +kernel
#print axioms cover_2273438

def state_2273472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 10 else 14)))
def hex_2273472 : String := "43054405420805"
theorem cover_2273472 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273472 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2273472)
  decide +kernel
#print axioms cover_2273472

def state_2273479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 10 else 14)))
def hex_2273479 : String := "4344420905420940440541050A0944424043090909404305050542404309090940434405410542090544410542090541084209430909430509"
theorem cover_2273479 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273479 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_2273479)
  decide +kernel
#print axioms cover_2273479

def state_2273538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 23 else (if j.val < 4 then 10 else 14)))
def hex_2273538 : String := "430505"
theorem cover_2273538 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273538 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2273538)
  decide +kernel
#print axioms cover_2273538

def state_2273542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 20 else 14)))
def hex_2273542 : String := "440542440540070505"
theorem cover_2273542 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273542 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2273542)
  decide +kernel
#print axioms cover_2273542

def state_2273552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 28)))
def hex_2273552 : String := "4243050505"
theorem cover_2273552 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273552 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2273552)
  decide +kernel
#print axioms cover_2273552
end Mub6.Numerical.CircleFullD0.Forest
