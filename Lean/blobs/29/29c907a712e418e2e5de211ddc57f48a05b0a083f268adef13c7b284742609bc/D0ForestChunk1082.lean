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
def state_1560047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 208 else (if j.val < 4 then 82 else 177)))
def hex_1560047 : String := "434107400A44420A07074140444243410605054307084206074442090707404405420543050544420543410705054205430705"
theorem cover_1560047 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560047 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 51) (hex := hex_1560047)
  decide +kernel
#print axioms cover_1560047

def state_1560098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 209 else (if j.val < 4 then 82 else 177)))
def hex_1560098 : String := "4341070A41404442430708070707404442430A050A424307080744424307414007070543074107400A0607"
theorem cover_1560098 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560098 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1560098)
  decide +kernel
#print axioms cover_1560098

def state_1560141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 121) else (if j.val < 3 then 104 else (if j.val < 4 then 82 else 88)))
def hex_1560141 : String := "448942430741400707404442094307094209074409074307410740444207070707"
theorem cover_1560141 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560141 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1560141)
  decide +kernel
#print axioms cover_1560141

def state_1560175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 120) else (if j.val < 3 then 104 else (if j.val < 4 then 83 else 88)))
def hex_1560175 : String := "4044894206434106400644090606448909"
theorem cover_1560175 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560175 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1560175)
  decide +kernel
#print axioms cover_1560175

def state_1560193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 104 else (if j.val < 4 then 83 else 88)))
def hex_1560193 : String := "448942434140060905094341400844420943070842080740444205430805084442054341400807050542434107050543070841064005440505"
theorem cover_1560193 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560193 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_1560193)
  decide +kernel
#print axioms cover_1560193

def state_1560250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 121) else (if j.val < 3 then 104 else (if j.val < 4 then 83 else 88)))
def hex_1560250 : String := "4489420943414044090707404442094341074044050506410905420943070944090909"
theorem cover_1560250 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560250 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 35) (hex := hex_1560250)
  decide +kernel
#print axioms cover_1560250
end Mub6.Numerical.CircleFullD0.Forest
