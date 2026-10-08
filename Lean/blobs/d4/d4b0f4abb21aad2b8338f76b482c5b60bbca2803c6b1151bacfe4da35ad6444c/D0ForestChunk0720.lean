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
def state_1473733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 35 else (if j.val < 4 then 46 else 59)))
def hex_1473733 : String := "4043410A444240054305050505410707434109444240430A41070709400509424005090541094442400707404341050507094207400509"
theorem cover_1473733 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473733 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1473733)
  decide +kernel
#print axioms cover_1473733

def state_1473788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 29)))
def hex_1473788 : String := "414442074007090744420740074341070707420740074341070707"
theorem cover_1473788 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473788 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_1473788)
  decide +kernel
#print axioms cover_1473788

def state_1473815 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 17 else (if j.val < 4 then 23 else 29)))
def hex_1473815 : String := "4341094442094043090909094109440909"
theorem cover_1473815 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473815 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1473815)
  decide +kernel
#print axioms cover_1473815

def state_1473832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 14)))
def hex_1473832 : String := "4341094442094043080808094109440909"
theorem cover_1473832 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473832 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1473832)
  decide +kernel
#print axioms cover_1473832

def state_1473851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 22 else 15)))
def hex_1473851 : String := "4109424440430A4106444206400A0606090644400A430A090A"
theorem cover_1473851 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473851 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 25) (hex := hex_1473851)
  decide +kernel
#print axioms cover_1473851

def state_1473876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 15)))
def hex_1473876 : String := "41094244404341060606060644404341094244400709064440054305410505054107070940430A0606"
theorem cover_1473876 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473876 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 41) (hex := hex_1473876)
  decide +kernel
#print axioms cover_1473876

def state_1473917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 15)))
def hex_1473917 : String := "09"
theorem cover_1473917 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473917 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1473917)
  decide +kernel
#print axioms cover_1473917

def state_1473921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 14)))
def hex_1473921 : String := "414244400A4308080A0A42444043084144060A060840430A410A4244400A43084108080A0A430A410A424408400A070844080A"
theorem cover_1473921 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473921 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 51) (hex := hex_1473921)
  decide +kernel
#print axioms cover_1473921
end Mub6.Numerical.CircleFullD0.Forest
