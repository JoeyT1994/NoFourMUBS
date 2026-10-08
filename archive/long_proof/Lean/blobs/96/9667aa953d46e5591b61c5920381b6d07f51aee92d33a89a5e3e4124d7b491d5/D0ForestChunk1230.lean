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
def state_1595639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
def hex_1595639 : String := "440540064241064344400642410643444005084006080606060606"
theorem cover_1595639 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595639 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 27) (hex := hex_1595639)
  decide +kernel
#print axioms cover_1595639

def state_1595666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 13)))
def hex_1595666 : String := "414340060806434042444106434244410607060606060642444143080643404244410843080841064305050808400642440805064106434006050644080606"
theorem cover_1595666 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595666 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 63) (hex := hex_1595666)
  decide +kernel
#print axioms cover_1595666

def state_1595732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
def hex_1595732 : String := "4340424407430707440808074042444107430709410A434205400A050A44094108430808420708"
theorem cover_1595732 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595732 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1595732)
  decide +kernel
#print axioms cover_1595732

def state_1595774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 12)))
def hex_1595774 : String := "444107064143050505"
theorem cover_1595774 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595774 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1595774)
  decide +kernel
#print axioms cover_1595774

def state_1595784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 24)))
def hex_1595784 : String := "4143074407404207070743064440420607064042410706410843064407404207070607"
theorem cover_1595784 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595784 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 35) (hex := hex_1595784)
  decide +kernel
#print axioms cover_1595784

def state_1595819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 25)))
def hex_1595819 : String := "414308084340420544080505404244414305070505444108430844080808420508"
theorem cover_1595819 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595819 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1595819)
  decide +kernel
#print axioms cover_1595819

def state_1595852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 12)))
def hex_1595852 : String := "42440505440705"
theorem cover_1595852 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595852 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1595852)
  decide +kernel
#print axioms cover_1595852

def state_1595861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 12)))
def hex_1595861 : String := "4441430742074407400A0743420744074041070705420A44400A06400A074143054205400A0505"
theorem cover_1595861 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595861 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1595861)
  decide +kernel
#print axioms cover_1595861
end Mub6.Numerical.CircleFullD0.Forest
