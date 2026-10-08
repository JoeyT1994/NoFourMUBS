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
def state_1523301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 9 else 21)))
def hex_1523301 : String := "4340424441064340064209440606060644410643400642440806440806060642440909444143050643084209084109434209404405050509400609"
theorem cover_1523301 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523301 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1523301)
  decide +kernel
#print axioms cover_1523301

def state_1523364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 46 else (if j.val < 4 then 18 else 42)))
def hex_1523364 : String := "41434007080707"
theorem cover_1523364 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523364 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1523364)
  decide +kernel
#print axioms cover_1523364

def state_1523372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 46 else (if j.val < 4 then 18 else 43)))
def hex_1523372 : String := "434042060642444106074106434006090644410643080741064340064209440809064006420606"
theorem cover_1523372 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523372 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_1523372)
  decide +kernel
#print axioms cover_1523372

def state_1523411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 59) else (if j.val < 3 then 46 else (if j.val < 4 then 18 else 43)))
def hex_1523411 : String := "43400742074407414340054244050544084143050505050507"
theorem cover_1523411 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523411 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 25) (hex := hex_1523411)
  decide +kernel
#print axioms cover_1523411

def state_1523437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 47 else (if j.val < 4 then 18 else 42)))
def hex_1523437 : String := "4143404244074106070A084006420744074106074340070807"
theorem cover_1523437 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523437 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1523437)
  decide +kernel
#print axioms cover_1523437

def state_1523463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 47 else (if j.val < 4 then 18 else 43)))
def hex_1523463 : String := "4340424406060A4244414340060806430840060841064340064244080A0A0644410A0A41060A4006420606"
theorem cover_1523463 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523463 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1523463)
  decide +kernel
#print axioms cover_1523463
end Mub6.Numerical.CircleFullD0.Forest
