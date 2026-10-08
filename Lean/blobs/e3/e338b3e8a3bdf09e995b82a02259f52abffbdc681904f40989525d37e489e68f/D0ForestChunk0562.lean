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
def state_1323798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 16 else 51)))
def hex_1323798 : String := "4342440A414043070A0707440A414043070A07070A"
theorem cover_1323798 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323798 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1323798)
  decide +kernel
#print axioms cover_1323798

def state_1323819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 53) else (if j.val < 3 then 51 else (if j.val < 4 then 16 else 51)))
def hex_1323819 : String := "4006430706"
theorem cover_1323819 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323819 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1323819)
  decide +kernel
#print axioms cover_1323819

def state_1323824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 25)))
def hex_1323824 : String := "42064406410A06"
theorem cover_1323824 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323824 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1323824)
  decide +kernel
#print axioms cover_1323824

def state_1323831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 25)))
def hex_1323831 : String := "4342440A410807440A410A070A"
theorem cover_1323831 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323831 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1323831)
  decide +kernel
#print axioms cover_1323831

def state_1323844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 25)))
def hex_1323844 : String := "4006430706"
theorem cover_1323844 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323844 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1323844)
  decide +kernel
#print axioms cover_1323844

def state_1323849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 12)))
def hex_1323849 : String := "42060A"
theorem cover_1323849 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323849 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1323849)
  decide +kernel
#print axioms cover_1323849

def state_1323852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 12)))
def hex_1323852 : String := "43420A0A0A"
theorem cover_1323852 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323852 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1323852)
  decide +kernel
#print axioms cover_1323852

def state_1323860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 13)))
def hex_1323860 : String := "41444009050509"
theorem cover_1323860 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323860 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1323860)
  decide +kernel
#print axioms cover_1323860

def state_1323870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 26)))
def hex_1323870 : String := "43420941444043420941444043B709434209414440B70709074209414440090505090909094342410507414440430742054105070705074205410509090909"
theorem cover_1323870 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323870 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 63) (hex := hex_1323870)
  decide +kernel
#print axioms cover_1323870

def state_1323933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 26)))
def hex_1323933 : String := "43424105094144404342050705050544070742054105440A05"
theorem cover_1323933 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323933 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1323933)
  decide +kernel
#print axioms cover_1323933

def state_1323958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 27)))
def hex_1323958 : String := "09"
theorem cover_1323958 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323958 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1323958)
  decide +kernel
#print axioms cover_1323958

def state_1323959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 13)))
def hex_1323959 : String := "09"
theorem cover_1323959 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323959 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1323959)
  decide +kernel
#print axioms cover_1323959

def state_1323960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 13)))
def hex_1323960 : String := "4209414443400905050509"
theorem cover_1323960 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323960 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1323960)
  decide +kernel
#print axioms cover_1323960

def state_1323971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 13)))
def hex_1323971 : String := "4342410544070541444043420507050505440740090542054105440A05"
theorem cover_1323971 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323971 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1323971)
  decide +kernel
#print axioms cover_1323971

def state_1324004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 24)))
def hex_1324004 : String := "41420A0A420A05"
theorem cover_1324004 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324004 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1324004)
  decide +kernel
#print axioms cover_1324004

def state_1324016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 16 else 50)))
def hex_1324016 : String := "41420A0505"
theorem cover_1324016 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324016 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1324016)
  decide +kernel
#print axioms cover_1324016
end Mub6.Numerical.CircleFullD0.Forest
