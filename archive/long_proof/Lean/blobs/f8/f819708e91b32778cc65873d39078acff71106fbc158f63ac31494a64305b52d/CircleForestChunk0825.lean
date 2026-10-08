import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1498664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 198 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 120)))
def hex_1498664 : String := "4341420744060542070641420744070707"
theorem cover_1498664 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498664 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_1498664)
  decide +kernel
#print axioms cover_1498664

def state_1498684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 174) else (if j.val < 3 then 162 else (if j.val < 4 then 206 else 120)))
def hex_1498684 : String := "44400743070707"
theorem cover_1498684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498684 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1498684)
  decide +kernel
#print axioms cover_1498684

def state_1498692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 174) else (if j.val < 3 then 163 else (if j.val < 4 then 206 else 240)))
def hex_1498692 : String := "404341420705064142070642070643414244400743090705054244400643060707440605414207444006434105068805420744064005430507"
theorem cover_1498692 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498692 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1498692)
  decide +kernel
#print axioms cover_1498692

def state_1498749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 174) else (if j.val < 3 then 163 else (if j.val < 4 then 206 else 241)))
def hex_1498749 : String := "400543054105420705"
theorem cover_1498749 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498749 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1498749)
  decide +kernel
#print axioms cover_1498749

def state_1498758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 175) else (if j.val < 3 then 81 else (if j.val < 4 then 206 else 120)))
def hex_1498758 : String := "42444007070744400643414244060706064142070642070640430507434105420505410707"
theorem cover_1498758 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498758 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1498758)
  decide +kernel
#print axioms cover_1498758

def state_1498795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 207 else 120)))
def hex_1498795 : String := "88"
theorem cover_1498795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498795 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1498795)
  decide +kernel
#print axioms cover_1498795

def state_1498796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 121)))
def hex_1498796 : String := "404341050507434142070542070588"
theorem cover_1498796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498796 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1498796)
  decide +kernel
#print axioms cover_1498796

def state_1498811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 61)))
def hex_1498811 : String := "4043050843410542050541420605420705"
theorem cover_1498811 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498811 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_1498811)
  decide +kernel
#print axioms cover_1498811

def state_1498830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 60)))
def hex_1498830 : String := "430A410A4244060505"
theorem cover_1498830 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498830 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1498830)
  decide +kernel
#print axioms cover_1498830

def state_1498840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 102 else 60)))
def hex_1498840 : String := "41054244400543054105060505"
theorem cover_1498840 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498840 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1498840)
  decide +kernel
#print axioms cover_1498840

def state_1498853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 103 else 60)))
def hex_1498853 : String := "414244400A430A410A8805054244404306414406050643414442400643064142440605050605054406420505884005430588440605"
theorem cover_1498853 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498853 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 53) (hex := hex_1498853)
  decide +kernel
#print axioms cover_1498853

def state_1498906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 61)))
def hex_1498906 : String := "05"
theorem cover_1498906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498906 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1498906)
  decide +kernel
#print axioms cover_1498906

def state_1498907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 31)))
def hex_1498907 : String := "05"
theorem cover_1498907 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498907 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1498907)
  decide +kernel
#print axioms cover_1498907

def state_1498908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 25 else 15)))
def hex_1498908 : String := "44400543050A05"
theorem cover_1498908 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498908 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1498908)
  decide +kernel
#print axioms cover_1498908
end Mub6.Numerical.CircleFullD0.Forest
