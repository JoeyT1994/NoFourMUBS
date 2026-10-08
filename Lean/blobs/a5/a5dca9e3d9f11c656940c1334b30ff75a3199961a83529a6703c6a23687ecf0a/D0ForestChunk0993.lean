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
def state_1538729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 24 else (if j.val < 4 then 19 else 21)))
def hex_1538729 : String := "4244434140064206440606070743410640064244070644430A05060644434140064244430A0606440A0A400A4244070A0A410607434106400642440A0A0A06"
theorem cover_1538729 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538729 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_1538729)
  decide +kernel
#print axioms cover_1538729

def state_1538794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 48 else (if j.val < 4 then 19 else 42)))
def hex_1538794 : String := "43414240440743080608404408430806080841420940060907"
theorem cover_1538794 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538794 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1538794)
  decide +kernel
#print axioms cover_1538794

def state_1538821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 48 else (if j.val < 4 then 38 else 43)))
def hex_1538821 : String := "42400609404443060606440809"
theorem cover_1538821 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538821 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1538821)
  decide +kernel
#print axioms cover_1538821

def state_1538834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 48 else (if j.val < 4 then 38 else 43)))
def hex_1538834 : String := "42404443080743410905094408094044430841420640060805434142400609400644080A4240054405050A4106054408430809"
theorem cover_1538834 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538834 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1538834)
  decide +kernel
#print axioms cover_1538834

def state_1538885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 48 else (if j.val < 4 then 39 else 43)))
def hex_1538885 : String := "410642094044070609"
theorem cover_1538885 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538885 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1538885)
  decide +kernel
#print axioms cover_1538885

def state_1538895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 49 else (if j.val < 4 then 19 else 42)))
def hex_1538895 : String := "434140424408430841064006084408430A4106400608080841404244430606064443410608060642440809440843080940420744074341400608070708"
theorem cover_1538895 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538895 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1538895)
  decide +kernel
#print axioms cover_1538895
end Mub6.Numerical.CircleFullD0.Forest
