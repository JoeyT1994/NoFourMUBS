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
def state_1631527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 54 else (if j.val < 4 then 49 else 34)))
def hex_1631527 : String := "434140420944080809404209090909"
theorem cover_1631527 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631527 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_1631527)
  decide +kernel
#print axioms cover_1631527

def state_1631544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 102) else (if j.val < 3 then 54 else (if j.val < 4 then 98 else 35)))
def hex_1631544 : String := "40424443410842094007050843410605410842400805400805444307084341070741084008440808424409064409430509"
theorem cover_1631544 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631544 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_1631544)
  decide +kernel
#print axioms cover_1631544

def state_1631593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 103) else (if j.val < 3 then 54 else (if j.val < 4 then 98 else 35)))
def hex_1631593 : String := "404244434105050943054142050505444341070541090943054140444209064205070540440605054205440905"
theorem cover_1631593 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631593 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1631593)
  decide +kernel
#print axioms cover_1631593

def state_1631638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 54 else (if j.val < 4 then 99 else 35)))
def hex_1631638 : String := "414042080809404244094341090909440943414044080809090909"
theorem cover_1631638 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631638 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1631638)
  decide +kernel
#print axioms cover_1631638

def state_1631665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 55 else (if j.val < 4 then 49 else 17)))
def hex_1631665 : String := "4443414007074006074108064341400742440743074107070740074244074305050741404208064208084006420906"
theorem cover_1631665 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631665 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1631665)
  decide +kernel
#print axioms cover_1631665

def state_1631712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 17)))
def hex_1631712 : String := "424409434109050944094341420940070542050509"
theorem cover_1631712 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631712 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1631712)
  decide +kernel
#print axioms cover_1631712

def state_1631733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 8)))
def hex_1631733 : String := "4244090644430A0943410605410909"
theorem cover_1631733 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631733 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1631733)
  decide +kernel
#print axioms cover_1631733
end Mub6.Numerical.CircleFullD0.Forest
