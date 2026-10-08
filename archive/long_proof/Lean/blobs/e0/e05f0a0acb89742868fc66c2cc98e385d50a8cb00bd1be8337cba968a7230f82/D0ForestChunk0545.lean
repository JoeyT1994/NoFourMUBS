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
def state_1319544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 26 else 24)))
def hex_1319544 : String := "4142444008060844404341090908434142060542444009064008060941060940084341064206444008060606420844400843414244090809090908"
theorem cover_1319544 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319544 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1319544)
  decide +kernel
#print axioms cover_1319544

def state_1319603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 27 else 24)))
def hex_1319603 : String := "4142060908"
theorem cover_1319603 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319603 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1319603)
  decide +kernel
#print axioms cover_1319603

def state_1319608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 25)))
def hex_1319608 : String := "08"
theorem cover_1319608 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319608 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1319608)
  decide +kernel
#print axioms cover_1319608

def state_1319610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 24)))
def hex_1319610 : String := "43414206064240440A060640444341420A440A40434106090606420A440940090A0A4341420606420840444341420809080808440A0606440A0606"
theorem cover_1319610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319610 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 59) (hex := hex_1319610)
  decide +kernel
#print axioms cover_1319610

def state_1319669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 25)))
def hex_1319669 : String := "434106420640080606"
theorem cover_1319669 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319669 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1319669)
  decide +kernel
#print axioms cover_1319669

def state_1319679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 12)))
def hex_1319679 : String := "4443414244094009430509050909434142404408084443050605054240084443414208050808084009440905410909"
theorem cover_1319679 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319679 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_1319679)
  decide +kernel
#print axioms cover_1319679

def state_1319729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 24)))
def hex_1319729 : String := "4240444305094305060505"
theorem cover_1319729 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319729 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1319729)
  decide +kernel
#print axioms cover_1319729

def state_1319740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 24)))
def hex_1319740 : String := "42404443410909094341424044094305060505424009444341090909434105424009060506090944434105420A050A4341054240440A06060506400905"
theorem cover_1319740 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319740 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 61) (hex := hex_1319740)
  decide +kernel
#print axioms cover_1319740
end Mub6.Numerical.CircleFullD0.Forest
