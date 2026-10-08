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
def state_2562678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 11)))
def hex_2562678 : String := "40074241430707074143444042074107070840080844400742410807410A430707400A42084108440A08430707"
theorem cover_2562678 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562678 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_2562678)
  decide +kernel
#print axioms cover_2562678

def state_2562723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 5)))
def hex_2562723 : String := "44400742070740074241440743070707414443400642070606430A064407430705"
theorem cover_2562723 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562723 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2562723)
  decide +kernel
#print axioms cover_2562723

def state_2562756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
def hex_2562756 : String := "07"
theorem cover_2562756 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562756 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2562756)
  decide +kernel
#print axioms cover_2562756

def state_2562757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 2)))
def hex_2562757 : String := "440741440740074207434106070607"
theorem cover_2562757 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562757 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_2562757)
  decide +kernel
#print axioms cover_2562757

def state_2562772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_2562772 : String := "42430744070743440743090707"
theorem cover_2562772 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562772 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2562772)
  decide +kernel
#print axioms cover_2562772

def state_2562789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
def hex_2562789 : String := "4007410507"
theorem cover_2562789 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562789 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2562789)
  decide +kernel
#print axioms cover_2562789

def state_2562797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 5)))
def hex_2562797 : String := "4306440941420644090606"
theorem cover_2562797 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562797 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2562797)
  decide +kernel
#print axioms cover_2562797

def state_2562809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 5)))
def hex_2562809 : String := "4407414306444007060606"
theorem cover_2562809 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562809 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2562809)
  decide +kernel
#print axioms cover_2562809

def state_2562820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 5)))
def hex_2562820 : String := "4441400742070707414440420707420943414407060641440709074042430607430707420643064144400706404206430607060644400709400706"
theorem cover_2562820 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562820 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 59) (hex := hex_2562820)
  decide +kernel
#print axioms cover_2562820

def state_2562879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
def hex_2562879 : String := "4206430607"
theorem cover_2562879 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562879 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2562879)
  decide +kernel
#print axioms cover_2562879

def state_2562884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
def hex_2562884 : String := "41420643064440414243050543050542060741050640414442064306414009050606060606"
theorem cover_2562884 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562884 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 37) (hex := hex_2562884)
  decide +kernel
#print axioms cover_2562884

def state_2562922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 4)))
def hex_2562922 : String := "4007410507"
theorem cover_2562922 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562922 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2562922)
  decide +kernel
#print axioms cover_2562922
end Mub6.Numerical.CircleFullD0.Forest
