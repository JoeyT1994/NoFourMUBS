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
def state_1568735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 11)))
def hex_1568735 : String := "4344424140084344080808404309074344094241080908440708410509424108400844430808080844424108070808"
theorem cover_1568735 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568735 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_1568735)
  decide +kernel
#print axioms cover_1568735

def state_1568786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 30) else (if j.val < 3 then 28 else (if j.val < 4 then 22 else 22)))
def hex_1568786 : String := "404344420A0542410505050A43440A050A"
theorem cover_1568786 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568786 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1568786)
  decide +kernel
#print axioms cover_1568786

def state_1568804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 28 else (if j.val < 4 then 22 else 22)))
def hex_1568804 : String := "43444241404309070A4007430607410A09424140440808440A0A40444309074308084443420A060A4342410A44090A090A41054009440909440A420A0A"
theorem cover_1568804 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568804 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_1568804)
  decide +kernel
#print axioms cover_1568804

def state_1568865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 28 else (if j.val < 4 then 22 else 22)))
def hex_1568865 : String := "434442410A060642410A440A400A06410544060A0A"
theorem cover_1568865 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568865 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1568865)
  decide +kernel
#print axioms cover_1568865

def state_1568886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 29 else (if j.val < 4 then 22 else 22)))
def hex_1568886 : String := "4140050540434409050A434406050A"
theorem cover_1568886 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568886 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1568886)
  decide +kernel
#print axioms cover_1568886

def state_1568903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 30) else (if j.val < 3 then 28 else (if j.val < 4 then 22 else 23)))
def hex_1568903 : String := "44404305080505"
theorem cover_1568903 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568903 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1568903)
  decide +kernel
#print axioms cover_1568903

def state_1568911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 28 else (if j.val < 4 then 22 else 46)))
def hex_1568911 : String := "404342410844400843424108440808080A4008430808410544400805084241084408080843424105444043420A050A0A40434207050A43050A050A"
theorem cover_1568911 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568911 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 59) (hex := hex_1568911)
  decide +kernel
#print axioms cover_1568911

def state_1568970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 28 else (if j.val < 4 then 22 else 47)))
def hex_1568970 : String := "404342080808434241054440430708070705420905"
theorem cover_1568970 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568970 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1568970)
  decide +kernel
#print axioms cover_1568970

def state_1568991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 29 else (if j.val < 4 then 22 else 23)))
def hex_1568991 : String := "410505"
theorem cover_1568991 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568991 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1568991)
  decide +kernel
#print axioms cover_1568991
end Mub6.Numerical.CircleFullD0.Forest
