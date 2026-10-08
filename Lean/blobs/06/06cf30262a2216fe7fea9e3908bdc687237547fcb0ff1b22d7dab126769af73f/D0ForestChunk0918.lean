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
def state_1520804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 11)))
def hex_1520804 : String := "434042444107434007070907074209074042090609"
theorem cover_1520804 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520804 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1520804)
  decide +kernel
#print axioms cover_1520804

def state_1520825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 5)))
def hex_1520825 : String := "410942094443050909"
theorem cover_1520825 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520825 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1520825)
  decide +kernel
#print axioms cover_1520825

def state_1520834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
def hex_1520834 : String := "444041094207090940410942090909"
theorem cover_1520834 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520834 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1520834)
  decide +kernel
#print axioms cover_1520834

def state_1520850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
def hex_1520850 : String := "43440740444142074340070707070A0A44070A"
theorem cover_1520850 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520850 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 19) (hex := hex_1520850)
  decide +kernel
#print axioms cover_1520850

def state_1520871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 4)))
def hex_1520871 : String := "4042414344074007070707414308440740420741430807070843080708"
theorem cover_1520871 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520871 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 29) (hex := hex_1520871)
  decide +kernel
#print axioms cover_1520871

def state_1520907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 20 else (if j.val < 4 then 8 else 10)))
def hex_1520907 : String := "4407410A07"
theorem cover_1520907 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520907 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1520907)
  decide +kernel
#print axioms cover_1520907

def state_1520913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 8 else 20)))
def hex_1520913 : String := "41434007080707"
theorem cover_1520913 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520913 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1520913)
  decide +kernel
#print axioms cover_1520913

def state_1520924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 42 else (if j.val < 4 then 16 else 21)))
def hex_1520924 : String := "4407410A07"
theorem cover_1520924 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520924 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1520924)
  decide +kernel
#print axioms cover_1520924

def state_1520929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 16 else 21)))
def hex_1520929 : String := "4441434008084042074406060807414340420944410543050909090943404244070A444108074143834042070909438307420A44080A40420744074109070A"
theorem cover_1520929 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520929 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_1520929)
  decide +kernel
#print axioms cover_1520929

def state_1520992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 16 else 21)))
def hex_1520992 : String := "420A440841090A"
theorem cover_1520992 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520992 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1520992)
  decide +kernel
#print axioms cover_1520992

def state_1520999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 17 else 21)))
def hex_1520999 : String := "404207440741094340070907420909"
theorem cover_1520999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520999 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1520999)
  decide +kernel
#print axioms cover_1520999

def state_1521014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 8 else 21)))
def hex_1521014 : String := "43404207440741434007420744070A0707420744070A400707"
theorem cover_1521014 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521014 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 25) (hex := hex_1521014)
  decide +kernel
#print axioms cover_1521014

def state_1521039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 10)))
def hex_1521039 : String := "420A44084143400A08090A"
theorem cover_1521039 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521039 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1521039)
  decide +kernel
#print axioms cover_1521039

def state_1521050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 9 else 10)))
def hex_1521050 : String := "40420744074109074207440709"
theorem cover_1521050 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521050 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1521050)
  decide +kernel
#print axioms cover_1521050
end Mub6.Numerical.CircleFullD0.Forest
