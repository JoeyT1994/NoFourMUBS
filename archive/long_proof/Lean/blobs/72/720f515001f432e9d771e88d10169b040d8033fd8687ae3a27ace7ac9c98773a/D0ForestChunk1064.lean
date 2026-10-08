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
def state_1555687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 42)))
def hex_1555687 : String := "41404243440A050A43050A420A0A40424344410A07410A40420A0A0A0A4344410A400706410540440A420A050A0A4243440A0A0A4344064105060A"
theorem cover_1555687 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555687 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1555687)
  decide +kernel
#print axioms cover_1555687

def state_1555747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 58) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 43)))
def hex_1555747 : String := "4044050505"
theorem cover_1555747 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555747 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1555747)
  decide +kernel
#print axioms cover_1555747

def state_1555753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 43)))
def hex_1555753 : String := "4442434140440A05054044420A0A420A0A440A0A0A4341054044420A0505050A424341054044420A0508440A050A43050A"
theorem cover_1555753 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555753 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_1555753)
  decide +kernel
#print axioms cover_1555753

def state_1555802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 59) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 43)))
def hex_1555802 : String := "44424341050A0A43050A4243050905"
theorem cover_1555802 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555802 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1555802)
  decide +kernel
#print axioms cover_1555802

def state_1555817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 53 else (if j.val < 4 then 43 else 21)))
def hex_1555817 : String := "44410A0A410A400A0A"
theorem cover_1555817 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555817 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1555817)
  decide +kernel
#print axioms cover_1555817

def state_1555826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 29) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 21)))
def hex_1555826 : String := "42434441094042090A090909434441400A0940420A43060A0641054044420A05420905440905440A09"
theorem cover_1555826 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555826 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_1555826)
  decide +kernel
#print axioms cover_1555826

def state_1555868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 27 else (if j.val < 4 then 20 else 10)))
def hex_1555868 : String := "44414041054243054440410506060505410506404142430644064005050606064105404441054243054044050505050505"
theorem cover_1555868 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555868 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_1555868)
  decide +kernel
#print axioms cover_1555868

def state_1555919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 20)))
def hex_1555919 : String := "404341420A0542440A0A440A050A4341420A0542440605060A"
theorem cover_1555919 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555919 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 25) (hex := hex_1555919)
  decide +kernel
#print axioms cover_1555919
end Mub6.Numerical.CircleFullD0.Forest
