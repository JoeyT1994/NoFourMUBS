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
def state_1010968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 44)))
def hex_1010968 : String := "40444305054341424005440543050505054142400A444305090A05054443410505074341424044050906050541424044074309090740050609"
theorem cover_1010968 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010968 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1010968)
  decide +kernel
#print axioms cover_1010968

def state_1011025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 44)))
def hex_1011025 : String := "4207400507"
theorem cover_1011025 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011025 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1011025)
  decide +kernel
#print axioms cover_1011025

def state_1011036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 56) else (if j.val < 3 then 36 else (if j.val < 4 then 104 else 90)))
def hex_1011036 : String := "414240444308094341420908084142094007090944094309094044084308410708440906420908"
theorem cover_1011036 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011036 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1011036)
  decide +kernel
#print axioms cover_1011036

def state_1011075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 56) else (if j.val < 3 then 36 else (if j.val < 4 then 105 else 90)))
def hex_1011075 : String := "414240440A0A440943090940444341420905050A4341420A060A0A444309094341060941420906094209400A09"
theorem cover_1011075 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011075 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 45) (hex := hex_1011075)
  decide +kernel
#print axioms cover_1011075

def state_1011121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 56) else (if j.val < 3 then 36 else (if j.val < 4 then 104 else 91)))
def hex_1011121 : String := "4142404443410742090741070A4307074443410609410609430641064209064007064240440943090A0940440843070A4409430609"
theorem cover_1011121 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011121 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_1011121)
  decide +kernel
#print axioms cover_1011121

def state_1011174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 56) else (if j.val < 3 then 36 else (if j.val < 4 then 105 else 91)))
def hex_1011174 : String := "4142400A444341420506090A4341050A0A40444341070A0A0744430641060A430606420A400A4409430909"
theorem cover_1011174 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011174 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_1011174)
  decide +kernel
#print axioms cover_1011174
end Mub6.Numerical.CircleFullD0.Forest
