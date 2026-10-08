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
def state_1605516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 49)))
def hex_1605516 : String := "424105434405424005410508050505"
theorem cover_1605516 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605516 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1605516)
  decide +kernel
#print axioms cover_1605516

def state_1605533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 30 else 49)))
def hex_1605533 : String := "43440540054241094344400542410507059F44059F0544054005424105434405400542410543440540054241050A0505050505"
theorem cover_1605533 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605533 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 51) (hex := hex_1605533)
  decide +kernel
#print axioms cover_1605533

def state_1605586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 98)))
def hex_1605586 : String := "4042410505054241434405400542060505434440050640420805064405400842080505"
theorem cover_1605586 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605586 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1605586)
  decide +kernel
#print axioms cover_1605586

def state_1605622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 99)))
def hex_1605622 : String := "4241434405424043410508059F0544054240059F05434408420840089F0841054344054005429F0505"
theorem cover_1605622 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605622 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1605622)
  decide +kernel
#print axioms cover_1605622

def state_1605665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 82) else (if j.val < 3 then 104 else (if j.val < 4 then 60 else 99)))
def hex_1605665 : String := "4344404243410544059F410544059F0542430641070643410544059F410544059F9F4440424105050542414344059F054344079F44059F059F"
theorem cover_1605665 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605665 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 57) (hex := hex_1605665)
  decide +kernel
#print axioms cover_1605665

def state_1605722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 83) else (if j.val < 3 then 104 else (if j.val < 4 then 60 else 99)))
def hex_1605722 : String := "4344404208414344059F05084206414306444005069F069F4440084208414344059F44059F089F"
theorem cover_1605722 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605722 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1605722)
  decide +kernel
#print axioms cover_1605722
end Mub6.Numerical.CircleFullD0.Forest
