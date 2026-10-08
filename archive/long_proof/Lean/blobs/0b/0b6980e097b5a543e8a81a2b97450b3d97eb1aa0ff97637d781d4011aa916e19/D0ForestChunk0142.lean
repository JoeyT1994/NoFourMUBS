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
def state_971544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 26)))
def hex_971544 : String := "4243404106440506410905404144084208060A414408424308080844084243080843050843054041060A41440543050805"
theorem cover_971544 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971544 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_971544)
  decide +kernel
#print axioms cover_971544

def state_971595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 28 else (if j.val < 4 then 18 else 27)))
def hex_971595 : String := "4006410642430644060606"
theorem cover_971595 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971595 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_971595)
  decide +kernel
#print axioms cover_971595

def state_971607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 28 else (if j.val < 4 then 19 else 27)))
def hex_971607 : String := "41420606424306440A0707"
theorem cover_971607 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971607 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_971607)
  decide +kernel
#print axioms cover_971607

def state_971619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 28 else (if j.val < 4 then 19 else 27)))
def hex_971619 : String := "424344400641064306420806064440410608410808400505430644400641060806"
theorem cover_971619 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971619 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_971619)
  decide +kernel
#print axioms cover_971619

def state_971652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 28 else (if j.val < 4 then 19 else 27)))
def hex_971652 : String := "4243444041060741430942080843094208080744404108084142080842080840074142054306054243070507434440060906444041080741080807"
theorem cover_971652 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971652 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 59) (hex := hex_971652)
  decide +kernel
#print axioms cover_971652

def state_971711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 29 else (if j.val < 4 then 9 else 27)))
def hex_971711 : String := "430640064106430642444006090606"
theorem cover_971711 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971711 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_971711)
  decide +kernel
#print axioms cover_971711

def state_971727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 13)))
def hex_971727 : String := "44424309404408424341080808430808440742070743094044084306080942430A4042430A410544404205080A054306410644400608060A430640060A"
theorem cover_971727 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971727 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_971727)
  decide +kernel
#print axioms cover_971727
end Mub6.Numerical.CircleFullD0.Forest
