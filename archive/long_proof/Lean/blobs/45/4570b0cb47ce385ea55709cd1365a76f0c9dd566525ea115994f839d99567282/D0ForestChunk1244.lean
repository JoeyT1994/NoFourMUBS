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
def state_1599013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 59 else 101)))
def hex_1599013 : String := "41434442404106074109434409050A400609424006410605060643444240074341444205070505410A05400743410707410607424007050744420A0606"
theorem cover_1599013 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599013 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1599013)
  decide +kernel
#print axioms cover_1599013

def state_1599075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 59 else 100)))
def hex_1599075 : String := "420840084341444208400843414408420807080842084007434144070707410707084144080808"
theorem cover_1599075 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599075 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 39) (hex := hex_1599075)
  decide +kernel
#print axioms cover_1599075

def state_1599114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 59 else 101)))
def hex_1599114 : String := "42084043070743414442400705074205070541444208070708"
theorem cover_1599114 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599114 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1599114)
  decide +kernel
#print axioms cover_1599114

def state_1599143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 102 else (if j.val < 4 then 58 else 100)))
def hex_1599143 : String := "40430641440642054043054144060505050605"
theorem cover_1599143 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599143 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 19) (hex := hex_1599143)
  decide +kernel
#print axioms cover_1599143

def state_1599163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 58 else 100)))
def hex_1599163 : String := "43414406420608064144424009060942404309410909430508400908444206404306090642404305410505054043410906410944420509054305410605"
theorem cover_1599163 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599163 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1599163)
  decide +kernel
#print axioms cover_1599163

def state_1599224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 58 else 100)))
def hex_1599224 : String := "4306410806"
theorem cover_1599224 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599224 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1599224)
  decide +kernel
#print axioms cover_1599224

def state_1599229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 58 else 101)))
def hex_1599229 : String := "420540434144420508050541444240050508050505"
theorem cover_1599229 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599229 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1599229)
  decide +kernel
#print axioms cover_1599229

def state_1599250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 58 else 50)))
def hex_1599250 : String := "4442054043064144064205400505050505"
theorem cover_1599250 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599250 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1599250)
  decide +kernel
#print axioms cover_1599250
end Mub6.Numerical.CircleFullD0.Forest
