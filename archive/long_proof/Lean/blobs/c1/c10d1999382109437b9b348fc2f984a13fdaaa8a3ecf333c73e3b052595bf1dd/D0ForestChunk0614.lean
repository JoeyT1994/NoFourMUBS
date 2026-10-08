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
def state_1336158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 15 else (if j.val < 4 then 24 else 26)))
def hex_1336158 : String := "42054340054441420543400544414205DB050540054441060505050540054441060505"
theorem cover_1336158 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336158 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 35) (hex := hex_1336158)
  decide +kernel
#print axioms cover_1336158

def state_1336193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 24 else 27)))
def hex_1336193 : String := "410605"
theorem cover_1336193 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336193 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1336193)
  decide +kernel
#print axioms cover_1336193

def state_1336196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 13)))
def hex_1336196 : String := "44410642050606"
theorem cover_1336196 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336196 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1336196)
  decide +kernel
#print axioms cover_1336196

def state_1336203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 6)))
def hex_1336203 : String := "44414240060840060A42400707074106420606"
theorem cover_1336203 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336203 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 19) (hex := hex_1336203)
  decide +kernel
#print axioms cover_1336203

def state_1336225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 12)))
def hex_1336225 : String := "4243090943440A40410842090A090A"
theorem cover_1336225 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336225 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1336225)
  decide +kernel
#print axioms cover_1336225

def state_1336241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 12)))
def hex_1336241 : String := "4344404142090A420505094041090509440A09"
theorem cover_1336241 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336241 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_1336241)
  decide +kernel
#print axioms cover_1336241

def state_1336262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 24 else 24)))
def hex_1336262 : String := "40410A080A"
theorem cover_1336262 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336262 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1336262)
  decide +kernel
#print axioms cover_1336262

def state_1336269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 15 else (if j.val < 4 then 24 else 25)))
def hex_1336269 : String := "4243444041094209430A090909094344400A0A404142090A424309094344400A0A4041094209DB090A090A"
theorem cover_1336269 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336269 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 43) (hex := hex_1336269)
  decide +kernel
#print axioms cover_1336269

def state_1336313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 30 else (if j.val < 4 then 24 else 25)))
def hex_1336313 : String := "4344404142050805084005084440070809"
theorem cover_1336313 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336313 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1336313)
  decide +kernel
#print axioms cover_1336313

def state_1336330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 31 else (if j.val < 4 then 24 else 25)))
def hex_1336330 : String := "43440840414243440840410905084440070809434408404142434440410905080909DB08084408404109080808084440070840414209430A070708"
theorem cover_1336330 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336330 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 59) (hex := hex_1336330)
  decide +kernel
#print axioms cover_1336330

def state_1336389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 24 else 25)))
def hex_1336389 : String := "410908"
theorem cover_1336389 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336389 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1336389)
  decide +kernel
#print axioms cover_1336389

def state_1336392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 12)))
def hex_1336392 : String := "440A40410A4209434407090709"
theorem cover_1336392 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336392 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1336392)
  decide +kernel
#print axioms cover_1336392
end Mub6.Numerical.CircleFullD0.Forest
