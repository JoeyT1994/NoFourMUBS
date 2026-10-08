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
def state_1013787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 21)))
def hex_1013787 : String := "43054044050507"
theorem cover_1013787 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013787 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1013787)
  decide +kernel
#print axioms cover_1013787

def state_1013794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 14 else 10)))
def hex_1013794 : String := "440541430540424405414305404405424143050905054405424143050905050505424405414305404405424143054009090505440542410A0505050505"
theorem cover_1013794 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013794 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 61) (hex := hex_1013794)
  decide +kernel
#print axioms cover_1013794

def state_1013856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 10)))
def hex_1013856 : String := "4244064106064408414340420608424406414340064406070606440808400642064406410706430806"
theorem cover_1013856 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013856 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 41) (hex := hex_1013856)
  decide +kernel
#print axioms cover_1013856

def state_1013899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 20 else (if j.val < 4 then 15 else 20)))
def hex_1013899 : String := "4143070606"
theorem cover_1013899 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013899 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1013899)
  decide +kernel
#print axioms cover_1013899

def state_1013907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 21)))
def hex_1013907 : String := "440641420643400644410606414206434044060A440941080A4006440608420643400644060A060606"
theorem cover_1013907 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013907 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 41) (hex := hex_1013907)
  decide +kernel
#print axioms cover_1013907

def state_1013948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 21)))
def hex_1013948 : String := "440741420743404441420743070707414208434044410842070908080842074340440741420743050807074044060807074044064108060707"
theorem cover_1013948 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013948 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 57) (hex := hex_1013948)
  decide +kernel
#print axioms cover_1013948

def state_1014005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 31 else 21)))
def hex_1014005 : String := "40064406414205434006050506"
theorem cover_1014005 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014005 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1014005)
  decide +kernel
#print axioms cover_1014005

def state_1014018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 20 else (if j.val < 4 then 15 else 21)))
def hex_1014018 : String := "4340060706"
theorem cover_1014018 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014018 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1014018)
  decide +kernel
#print axioms cover_1014018

def state_1014024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 20)))
def hex_1014024 : String := "4143404206084207094006420609430506"
theorem cover_1014024 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014024 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_1014024)
  decide +kernel
#print axioms cover_1014024
end Mub6.Numerical.CircleFullD0.Forest
