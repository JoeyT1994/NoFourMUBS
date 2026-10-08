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
def state_1485841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 17) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 27)))
def hex_1485841 : String := "434208444140084342060A064008434244414008430906400843420844410A0508080844410A400A430A42440707070A420844410808080808"
theorem cover_1485841 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485841 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 57) (hex := hex_1485841)
  decide +kernel
#print axioms cover_1485841

def state_1485898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 17) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 27)))
def hex_1485898 : String := "434206444106404342444106404309060606444140430A060640434209070743090606420606060606"
theorem cover_1485898 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485898 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 41) (hex := hex_1485898)
  decide +kernel
#print axioms cover_1485898

def state_1485939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 13)))
def hex_1485939 : String := "444241060541404407060640440708440A064206410608"
theorem cover_1485939 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485939 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 23) (hex := hex_1485939)
  decide +kernel
#print axioms cover_1485939

def state_1485962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 13)))
def hex_1485962 : String := "43444241060A414043444206080606064043440A420641064043080606440A06430A06420606440A06"
theorem cover_1485962 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485962 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 41) (hex := hex_1485962)
  decide +kernel
#print axioms cover_1485962

def state_1486004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 13)))
def hex_1486004 : String := "05"
theorem cover_1486004 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486004 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1486004)
  decide +kernel
#print axioms cover_1486004

def state_1486008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 26)))
def hex_1486008 : String := "41420540434405420541404344054205090543440542054140070705050505434405420541404344054205410705054344054205410705050544050505"
theorem cover_1486008 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486008 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 61) (hex := hex_1486008)
  decide +kernel
#print axioms cover_1486008

def state_1486071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 18) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 27)))
def hex_1486071 : String := "4008430505"
theorem cover_1486071 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486071 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1486071)
  decide +kernel
#print axioms cover_1486071

def state_1486079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 18) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 27)))
def hex_1486079 : String := "410808"
theorem cover_1486079 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486079 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1486079)
  decide +kernel
#print axioms cover_1486079
end Mub6.Numerical.CircleFullD0.Forest
