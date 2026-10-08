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
def state_1491469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 29)))
def hex_1491469 : String := "424405074440434142050606054341050505404341070707434142074440430707434109050540074307074207440A40070741420544050707"
theorem cover_1491469 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491469 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_1491469)
  decide +kernel
#print axioms cover_1491469

def state_1491527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 14)))
def hex_1491527 : String := "4109424443404105050505094443084041420508080843404109420908084041094244430940410905050944084308404109080809"
theorem cover_1491527 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491527 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 53) (hex := hex_1491527)
  decide +kernel
#print axioms cover_1491527

def state_1491581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 14)))
def hex_1491581 : String := "420944404342094441090509420544054109050909"
theorem cover_1491581 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491581 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1491581)
  decide +kernel
#print axioms cover_1491581

def state_1491603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 14)))
def hex_1491603 : String := "4405404341090A41050506"
theorem cover_1491603 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491603 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1491603)
  decide +kernel
#print axioms cover_1491603

def state_1491615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 28)))
def hex_1491615 : String := "404341420505050505"
theorem cover_1491615 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491615 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1491615)
  decide +kernel
#print axioms cover_1491615

def state_1491627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 42) else (if j.val < 3 then 19 else (if j.val < 4 then 50 else 29)))
def hex_1491627 : String := "420944404309090909"
theorem cover_1491627 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491627 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1491627)
  decide +kernel
#print axioms cover_1491627

def state_1491636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 19 else (if j.val < 4 then 50 else 29)))
def hex_1491636 : String := "4244054043094109090944404341420508084105054308054043410942440A09440840430809084109420A440A404341090A41090A0909"
theorem cover_1491636 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491636 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_1491636)
  decide +kernel
#print axioms cover_1491636

def state_1491691 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 29)))
def hex_1491691 : String := "4142094440434109050505094205440540434142094405090A41420544050605430905"
theorem cover_1491691 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491691 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1491691)
  decide +kernel
#print axioms cover_1491691
end Mub6.Numerical.CircleFullD0.Forest
