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
def state_2332853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 48 else (if j.val < 4 then 44 else 62)))
def hex_2332853 : String := "424340414442430509054209094408094144054243050705440842434008084008080840414442070709440809410744074243400807070743400905400907"
theorem cover_2332853 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332853 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_2332853)
  decide +kernel
#print axioms cover_2332853

def state_2332918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 96 else (if j.val < 4 then 88 else 63)))
def hex_2332918 : String := "40410909414442434005054041050907430505E544424340410909414405E54408E54009414442434005050705E54408E54340060609E5"
theorem cover_2332918 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332918 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 55) (hex := hex_2332918)
  decide +kernel
#print axioms cover_2332918

def state_2332973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 96 else (if j.val < 4 then 89 else 63)))
def hex_2332973 : String := "4041090941440742430A0707444243400941074407E54009074309074243E5400941060609"
theorem cover_2332973 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332973 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_2332973)
  decide +kernel
#print axioms cover_2332973

def state_2333010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 97 else (if j.val < 4 then 44 else 63)))
def hex_2333010 : String := "4340094105094009410709"
theorem cover_2333010 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333010 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2333010)
  decide +kernel
#print axioms cover_2333010

def state_2333021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 48 else (if j.val < 4 then 45 else 31)))
def hex_2333021 : String := "404144424309070909094107444243404107090707074243400941074407420607400606430907"
theorem cover_2333021 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333021 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_2333021)
  decide +kernel
#print axioms cover_2333021

def state_2333060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 49 else (if j.val < 4 then 22 else 31)))
def hex_2333060 : String := "4340094105094009410709"
theorem cover_2333060 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333060 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2333060)
  decide +kernel
#print axioms cover_2333060

def state_2333072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 29) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 30)))
def hex_2333072 : String := "42434008080808"
theorem cover_2333072 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333072 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2333072)
  decide +kernel
#print axioms cover_2333072
end Mub6.Numerical.CircleFullD0.Forest
