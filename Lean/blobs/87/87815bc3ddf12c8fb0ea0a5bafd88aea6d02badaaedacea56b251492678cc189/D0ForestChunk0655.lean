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
def state_1346153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_1346153 : String := "42430A44054005410542050543444041064206060A0A44400505404106430A054106430606"
theorem cover_1346153 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346153 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 37) (hex := hex_1346153)
  decide +kernel
#print axioms cover_1346153

def state_1346191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
def hex_1346191 : String := "434440080A0A444005054042430805430A0542430A05430A44050A"
theorem cover_1346191 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346191 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_1346191)
  decide +kernel
#print axioms cover_1346191

def state_1346219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 2)))
def hex_1346219 : String := "44400841420A430805084044080744410A0707"
theorem cover_1346219 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346219 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_1346219)
  decide +kernel
#print axioms cover_1346219

def state_1346238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
def hex_1346238 : String := "4440050540434441420540060508410A4207074405410A420A404344050605064344410A42054005050A44054106420506"
theorem cover_1346238 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346238 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_1346238)
  decide +kernel
#print axioms cover_1346238

def state_1346291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
def hex_1346291 : String := "0A"
theorem cover_1346291 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346291 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1346291)
  decide +kernel
#print axioms cover_1346291

def state_1346293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 5)))
def hex_1346293 : String := "4244400A43414208080A0A4043414244400643060A06060A414205060A434142094408064209440907414209084244094309090A440A40064341060A0A"
theorem cover_1346293 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346293 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1346293)
  decide +kernel
#print axioms cover_1346293

def state_1346354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 5)))
def hex_1346354 : String := "42440A400A43070A0A"
theorem cover_1346354 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346354 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1346354)
  decide +kernel
#print axioms cover_1346354

def state_1346363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 2)))
def hex_1346363 : String := "4441050541424344054005410542050505430A0542430A050A"
theorem cover_1346363 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346363 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_1346363)
  decide +kernel
#print axioms cover_1346363

def state_1346388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
def hex_1346388 : String := "430A444105054106430A440506"
theorem cover_1346388 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346388 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_1346388)
  decide +kernel
#print axioms cover_1346388
end Mub6.Numerical.CircleFullD0.Forest
