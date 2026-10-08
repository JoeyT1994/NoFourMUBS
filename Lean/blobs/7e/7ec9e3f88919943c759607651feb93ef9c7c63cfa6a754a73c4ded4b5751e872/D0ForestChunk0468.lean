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
def state_1050002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 51) else (if j.val < 3 then 31 else (if j.val < 4 then 50 else 16)))
def hex_1050002 : String := "42084443084008414207090808"
theorem cover_1050002 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050002 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1050002)
  decide +kernel
#print axioms cover_1050002

def state_1050016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 51) else (if j.val < 3 then 62 else (if j.val < 4 then 51 else 16)))
def hex_1050016 : String := "444041070841074308420644404107080606400707"
theorem cover_1050016 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050016 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_1050016)
  decide +kernel
#print axioms cover_1050016

def state_1050039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 51) else (if j.val < 3 then 63 else (if j.val < 4 then 51 else 32)))
def hex_1050039 : String := "4143420744400841070807420705430842444008414307070808444008DD4005410508"
theorem cover_1050039 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050039 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1050039)
  decide +kernel
#print axioms cover_1050039

def state_1050075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 102) else (if j.val < 3 then 63 else (if j.val < 4 then 51 else 32)))
def hex_1050075 : String := "434207444107430ADD074207444107DD07"
theorem cover_1050075 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050075 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1050075)
  decide +kernel
#print axioms cover_1050075

def state_1050092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 103) else (if j.val < 3 then 63 else (if j.val < 4 then 51 else 32)))
def hex_1050092 : String := "4342444308400841060508444308DD430840084106064244404143070743080A41430606430606404107080644DD404143070543080A41430606430606"
theorem cover_1050092 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050092 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 61) (hex := hex_1050092)
  decide +kernel
#print axioms cover_1050092

def state_1050153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 51) else (if j.val < 3 then 63 else (if j.val < 4 then 51 else 33)))
def hex_1050153 : String := "4041070841074308444206404107080606"
theorem cover_1050153 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050153 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1050153)
  decide +kernel
#print axioms cover_1050153

def state_1050170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 17)))
def hex_1050170 : String := "404107084107430707"
theorem cover_1050170 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050170 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1050170)
  decide +kernel
#print axioms cover_1050170

def state_1050179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 9)))
def hex_1050179 : String := "07"
theorem cover_1050179 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050179 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1050179)
  decide +kernel
#print axioms cover_1050179

def state_1050181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 4)))
def hex_1050181 : String := "44400A41070A07"
theorem cover_1050181 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050181 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1050181)
  decide +kernel
#print axioms cover_1050181

def state_1050190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 8)))
def hex_1050190 : String := "41050A"
theorem cover_1050190 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050190 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1050190)
  decide +kernel
#print axioms cover_1050190

def state_1050194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 8)))
def hex_1050194 : String := "430705"
theorem cover_1050194 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050194 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1050194)
  decide +kernel
#print axioms cover_1050194

def state_1050199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 8)))
def hex_1050199 : String := "44400A41070A07"
theorem cover_1050199 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050199 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1050199)
  decide +kernel
#print axioms cover_1050199

def state_1050206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 26 else 8)))
def hex_1050206 : String := "444041050A41430705434244400A41070A0A444041050A414342070505434244400A4109090A44DD400541050A0A400541050A0A400541050A"
theorem cover_1050206 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050206 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 57) (hex := hex_1050206)
  decide +kernel
#print axioms cover_1050206

def state_1050263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 27 else 8)))
def hex_1050263 : String := "0A"
theorem cover_1050263 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050263 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1050263)
  decide +kernel
#print axioms cover_1050263
end Mub6.Numerical.CircleFullD0.Forest
