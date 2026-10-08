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
def state_1659519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 97) else (if j.val < 3 then 59 else (if j.val < 4 then 56 else 46)))
def hex_1659519 : String := "444043424144074007074407404308070741084407080707404308424144074043080508440740430806084108444005070808"
theorem cover_1659519 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659519 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1659519)
  decide +kernel
#print axioms cover_1659519

def state_1659570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 57 else 46)))
def hex_1659570 : String := "42074144054005074407404342410707060507"
theorem cover_1659570 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659570 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_1659570)
  decide +kernel
#print axioms cover_1659570

def state_1659589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 46)))
def hex_1659589 : String := "07"
theorem cover_1659589 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659589 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1659589)
  decide +kernel
#print axioms cover_1659589

def state_1659594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 56 else 47)))
def hex_1659594 : String := "444043420608424144404306420609064009064440430642064109440709064043064206090641444009080844400908080640430842EA0806"
theorem cover_1659594 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659594 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 57) (hex := hex_1659594)
  decide +kernel
#print axioms cover_1659594

def state_1659653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 56 else 94)))
def hex_1659653 : String := "4342060842414440430642064144074009060A06404306420641090A0644400A060541444043094241090A09084009084440434209080A4308074043080A08"
theorem cover_1659653 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659653 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_1659653)
  decide +kernel
#print axioms cover_1659653

def state_1659716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 56 else 94)))
def hex_1659716 : String := "4306420608"
theorem cover_1659716 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659716 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1659716)
  decide +kernel
#print axioms cover_1659716

def state_1659721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 56 else 95)))
def hex_1659721 : String := "40430542444140050505054441084005050805"
theorem cover_1659721 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659721 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1659721)
  decide +kernel
#print axioms cover_1659721

def state_1659740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 59 else (if j.val < 4 then 56 else 47)))
def hex_1659740 : String := "41084440430842410808080808"
theorem cover_1659740 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659740 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1659740)
  decide +kernel
#print axioms cover_1659740
end Mub6.Numerical.CircleFullD0.Forest
