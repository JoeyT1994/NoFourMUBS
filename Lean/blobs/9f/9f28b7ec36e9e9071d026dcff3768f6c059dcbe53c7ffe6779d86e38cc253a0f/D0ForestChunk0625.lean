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
def state_1338941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 97) else (if j.val < 3 then 89 else (if j.val < 4 then 33 else 44)))
def hex_1338941 : String := "440940434142440A40050709070509"
theorem cover_1338941 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338941 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1338941)
  decide +kernel
#print axioms cover_1338941

def state_1338956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 59 else 48) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 44)))
def hex_1338956 : String := "09"
theorem cover_1338956 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338956 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1338956)
  decide +kernel
#print axioms cover_1338956

def state_1338959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 48) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 45)))
def hex_1338959 : String := "4144424043410A074144420A0606444208400707084305410A05400609420A0644424007050707"
theorem cover_1338959 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338959 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_1338959)
  decide +kernel
#print axioms cover_1338959

def state_1339003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 116 else 96) else (if j.val < 3 then 88 else (if j.val < 4 then 66 else 90)))
def hex_1339003 : String := "4144420A0606444240084308410A0840430605434144420A06060741444240060A0606444208400507420806420806"
theorem cover_1339003 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339003 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_1339003)
  decide +kernel
#print axioms cover_1339003

def state_1339050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 116 else 96) else (if j.val < 3 then 88 else (if j.val < 4 then 67 else 90)))
def hex_1339050 : String := "41444240050A05064442400543410A08054005434105440542080505420806"
theorem cover_1339050 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339050 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_1339050)
  decide +kernel
#print axioms cover_1339050

def state_1339081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 117 else 96) else (if j.val < 3 then 88 else (if j.val < 4 then 33 else 90)))
def hex_1339081 : String := "43410A44420A40430909090A4144420A090A444240430A410A444207090A094043090909420A40430A410644420A060609"
theorem cover_1339081 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339081 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_1339081)
  decide +kernel
#print axioms cover_1339081

def state_1339130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 96) else (if j.val < 3 then 89 else (if j.val < 4 then 33 else 90)))
def hex_1339130 : String := "4006430909"
theorem cover_1339130 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339130 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1339130)
  decide +kernel
#print axioms cover_1339130

def state_1339135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 96) else (if j.val < 3 then 44 else (if j.val < 4 then 33 else 91)))
def hex_1339135 : String := "4240060A06"
theorem cover_1339135 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339135 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1339135)
  decide +kernel
#print axioms cover_1339135

def state_1339143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 116 else 97) else (if j.val < 3 then 88 else (if j.val < 4 then 33 else 90)))
def hex_1339143 : String := "43414442084007070807414442084005434144050808050808"
theorem cover_1339143 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339143 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_1339143)
  decide +kernel
#print axioms cover_1339143

def state_1339169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 117 else 97) else (if j.val < 3 then 88 else (if j.val < 4 then 66 else 90)))
def hex_1339169 : String := "41444240080540430741090709420840070544420640070608"
theorem cover_1339169 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339169 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1339169)
  decide +kernel
#print axioms cover_1339169
end Mub6.Numerical.CircleFullD0.Forest
