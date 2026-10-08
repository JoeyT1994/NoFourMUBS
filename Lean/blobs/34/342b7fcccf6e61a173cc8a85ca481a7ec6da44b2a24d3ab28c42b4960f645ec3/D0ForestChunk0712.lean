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
def state_1471736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
def hex_1471736 : String := "434408424041430808080808440842404143440842400A08080A0A414308050840414308060608"
theorem cover_1471736 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471736 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_1471736)
  decide +kernel
#print axioms cover_1471736

def state_1471775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
def hex_1471775 : String := "4143084405420508430808"
theorem cover_1471775 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471775 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1471775)
  decide +kernel
#print axioms cover_1471775

def state_1471793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 8 else (if j.val < 4 then 10 else 14)))
def hex_1471793 : String := "430A4442400A090A0A"
theorem cover_1471793 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471793 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1471793)
  decide +kernel
#print axioms cover_1471793

def state_1471803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 8 else (if j.val < 4 then 20 else 14)))
def hex_1471803 : String := "440707"
theorem cover_1471803 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471803 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1471803)
  decide +kernel
#print axioms cover_1471803

def state_1471810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 42) else (if j.val < 3 then 16 else (if j.val < 4 then 21 else 28)))
def hex_1471810 : String := "430A4442400909404308410606080A"
theorem cover_1471810 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471810 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1471810)
  decide +kernel
#print axioms cover_1471810

def state_1471825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 16 else (if j.val < 4 then 21 else 28)))
def hex_1471825 : String := "434407074442404143084405420508430708080842404143074409094307444286404107070742860A41070740410A430744070707"
theorem cover_1471825 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471825 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 53) (hex := hex_1471825)
  decide +kernel
#print axioms cover_1471825

def state_1471878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 16 else (if j.val < 4 then 21 else 28)))
def hex_1471878 : String := "414307094307440707"
theorem cover_1471878 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471878 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1471878)
  decide +kernel
#print axioms cover_1471878

def state_1471887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 17 else (if j.val < 4 then 21 else 28)))
def hex_1471887 : String := "40410A4307440842400A0707410707"
theorem cover_1471887 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471887 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1471887)
  decide +kernel
#print axioms cover_1471887

def state_1471902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 8 else (if j.val < 4 then 21 else 29)))
def hex_1471902 : String := "4240410A43074442400A4107070A0A410907400A07"
theorem cover_1471902 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471902 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_1471902)
  decide +kernel
#print axioms cover_1471902

def state_1471923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 10 else 14)))
def hex_1471923 : String := "41430709430744424007070707"
theorem cover_1471923 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471923 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_1471923)
  decide +kernel
#print axioms cover_1471923

def state_1471936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 10 else 15)))
def hex_1471936 : String := "400A410A07"
theorem cover_1471936 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471936 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1471936)
  decide +kernel
#print axioms cover_1471936

def state_1471941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 10 else 7)))
def hex_1471941 : String := "4440410A43074244080A074107070A"
theorem cover_1471941 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471941 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1471941)
  decide +kernel
#print axioms cover_1471941

def state_1471961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 8 else (if j.val < 4 then 22 else 14)))
def hex_1471961 : String := "44420940430A4409090942090A"
theorem cover_1471961 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471961 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_1471961)
  decide +kernel
#print axioms cover_1471961

def state_1471979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 42) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 28)))
def hex_1471979 : String := "4442094043410606090942094043090909"
theorem cover_1471979 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471979 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1471979)
  decide +kernel
#print axioms cover_1471979
end Mub6.Numerical.CircleFullD0.Forest
