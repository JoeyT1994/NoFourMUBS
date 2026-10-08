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
def state_1664561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 7)))
def hex_1664561 : String := "4244400843080A40084308414244400843080A40084305414244400843050A400843054142440AF70805080808084440080808"
theorem cover_1664561 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664561 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 18) (count := 51) (hex := hex_1664561)
  decide +kernel
#print axioms cover_1664561

def state_1664612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 7)))
def hex_1664612 : String := "42440A400A4143420A440A400841430807080A0A440A40084143080708"
theorem cover_1664612 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664612 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 29) (hex := hex_1664612)
  decide +kernel
#print axioms cover_1664612

def state_1664642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
def hex_1664642 : String := "4342440641064306404244064106430540424406414306074305404244410607F744064106070506060606064244074107404342440741070707070707"
theorem cover_1664642 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664642 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 20) (count := 61) (hex := hex_1664642)
  decide +kernel
#print axioms cover_1664642

def state_1664704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 7)))
def hex_1664704 : String := "424443050943054041424443050905444305400605430540080505054406430540410808410605"
theorem cover_1664704 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664704 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_1664704)
  decide +kernel
#print axioms cover_1664704

def state_1664745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 14)))
def hex_1664745 : String := "400A07"
theorem cover_1664745 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664745 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1664745)
  decide +kernel
#print axioms cover_1664745

def state_1664749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 15)))
def hex_1664749 : String := "41434244400A074041434244400A07404143424407F707070A41070544074041070707070A4107054407404107430807070743420A4407400A050A"
theorem cover_1664749 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664749 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 59) (hex := hex_1664749)
  decide +kernel
#print axioms cover_1664749

def state_1664808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 15)))
def hex_1664808 : String := "4107430507"
theorem cover_1664808 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664808 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1664808)
  decide +kernel
#print axioms cover_1664808
end Mub6.Numerical.CircleFullD0.Forest
