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
def state_1028656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 48) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 29)))
def hex_1028656 : String := "444305414042054405430509050543410605414009420544050840420944050605"
theorem cover_1028656 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028656 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1028656)
  decide +kernel
#print axioms cover_1028656

def state_1028689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 48) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 29)))
def hex_1028689 : String := "444305414042440543050A074205054042050705430641404206064244050844430541080506404244060606420544054305410505"
theorem cover_1028689 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028689 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_1028689)
  decide +kernel
#print axioms cover_1028689

def state_1028742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 49) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 29)))
def hex_1028742 : String := "4244054305404142050A0505444305400A054305404142440506074205074142050505"
theorem cover_1028742 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028742 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1028742)
  decide +kernel
#print axioms cover_1028742

def state_1028777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 29)))
def hex_1028777 : String := "4142440505440543054041080505420505"
theorem cover_1028777 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028777 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1028777)
  decide +kernel
#print axioms cover_1028777

def state_1028794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 14)))
def hex_1028794 : String := "4244050544430540080543054041424405054405430540080508410505"
theorem cover_1028794 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028794 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 29) (hex := hex_1028794)
  decide +kernel
#print axioms cover_1028794

def state_1028824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 15)))
def hex_1028824 : String := "414206064206430644400641060606"
theorem cover_1028824 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028824 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1028824)
  decide +kernel
#print axioms cover_1028824

def state_1028841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 15)))
def hex_1028841 : String := "4344400605064440410942054306444006050607400607"
theorem cover_1028841 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028841 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_1028841)
  decide +kernel
#print axioms cover_1028841

def state_1028865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 15)))
def hex_1028865 : String := "44400641080506"
theorem cover_1028865 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028865 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1028865)
  decide +kernel
#print axioms cover_1028865
end Mub6.Numerical.CircleFullD0.Forest
