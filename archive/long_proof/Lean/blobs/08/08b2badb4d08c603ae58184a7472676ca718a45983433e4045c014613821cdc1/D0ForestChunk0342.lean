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
def state_1019446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 12)))
def hex_1019446 : String := "4441424006054043084408414205400605060A420640060A414205404305444105060505420640064305440505"
theorem cover_1019446 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019446 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_1019446)
  decide +kernel
#print axioms cover_1019446

def state_1019494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 30) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 24)))
def hex_1019494 : String := "4006440905"
theorem cover_1019494 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019494 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1019494)
  decide +kernel
#print axioms cover_1019494

def state_1019500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 24)))
def hex_1019500 : String := "44434142064408400643060606414206440640060606434142064006444305410505050641420640064443060643050606"
theorem cover_1019500 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019500 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1019500)
  decide +kernel
#print axioms cover_1019500

def state_1019549 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 24)))
def hex_1019549 : String := "444309094341054205404409050541420540444305050505420540440643050609"
theorem cover_1019549 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019549 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1019549)
  decide +kernel
#print axioms cover_1019549

def state_1019582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 31) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 24)))
def hex_1019582 : String := "420640064409434206414006090642064140060706"
theorem cover_1019582 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019582 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1019582)
  decide +kernel
#print axioms cover_1019582

def state_1019604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 30) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 25)))
def hex_1019604 : String := "424006054043444142054006050609444142054006444305050506410906434405054441054205404405050505"
theorem cover_1019604 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019604 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_1019604)
  decide +kernel
#print axioms cover_1019604

def state_1019649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 31) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 25)))
def hex_1019649 : String := "4206400643444205414006050642054105054442064140064405050642054140060506"
theorem cover_1019649 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019649 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1019649)
  decide +kernel
#print axioms cover_1019649

def state_1019686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 12)))
def hex_1019686 : String := "4408424107430640060807"
theorem cover_1019686 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019686 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1019686)
  decide +kernel
#print axioms cover_1019686
end Mub6.Numerical.CircleFullD0.Forest
