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
def state_942539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 25)))
def hex_942539 : String := "42440841434240080808084342080808440841434006080808"
theorem cover_942539 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942539 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_942539)
  decide +kernel
#print axioms cover_942539

def state_942565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 50 else (if j.val < 4 then 16 else 25)))
def hex_942565 : String := "44410808414340424408414342400807080843050844084108084244074107070940420808420744070743054042080842074405410705"
theorem cover_942565 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942565 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_942565)
  decide +kernel
#print axioms cover_942565

def state_942620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 16 else 25)))
def hex_942620 : String := "440841430940084208084305400809"
theorem cover_942620 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942620 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_942620)
  decide +kernel
#print axioms cover_942620

def state_942635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 25)))
def hex_942635 : String := "40424408410808084244084143400807074340080707440841430808430808"
theorem cover_942635 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942635 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_942635)
  decide +kernel
#print axioms cover_942635

def state_942666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 25)))
def hex_942666 : String := "4340420A0505400A420A4408410808"
theorem cover_942666 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942666 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_942666)
  decide +kernel
#print axioms cover_942666

def state_942681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 12)))
def hex_942681 : String := "424406414340420644064107060606064441430906064143404244094143404207090707430507090940424406074407410707064305404206440641060506"
theorem cover_942681 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942681 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_942681)
  decide +kernel
#print axioms cover_942681

def state_942744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 12)))
def hex_942744 : String := "40420A440A414340420808420744074308054005050A42064406410706"
theorem cover_942744 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942744 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 29) (hex := hex_942744)
  decide +kernel
#print axioms cover_942744
end Mub6.Numerical.CircleFullD0.Forest
