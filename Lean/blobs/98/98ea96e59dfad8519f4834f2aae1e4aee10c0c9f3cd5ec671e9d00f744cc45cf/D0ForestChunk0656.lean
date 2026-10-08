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
def state_1346401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_1346401 : String := "42430A440942430A4405404105090A430A44050A434440410A050A0A440543440A0A44054041060A0A"
theorem cover_1346401 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346401 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1346401)
  decide +kernel
#print axioms cover_1346401

def state_1346443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_1346443 : String := "414243444041060A410642440706060644400541054205060543060A4243440A4007060A43440A06440A0A"
theorem cover_1346443 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346443 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1346443)
  decide +kernel
#print axioms cover_1346443

def state_1346489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
def hex_1346489 : String := "444142444006434106074106424443074006090606060642444007070744070606"
theorem cover_1346489 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346489 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 33) (hex := hex_1346489)
  decide +kernel
#print axioms cover_1346489

def state_1346522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
def hex_1346522 : String := "44414243444005410542050605050642434440424405050A424441430A050A4143060507440A4106074005064440054205050543440A060606"
theorem cover_1346522 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346522 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_1346522)
  decide +kernel
#print axioms cover_1346522

def state_1346579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
def hex_1346579 : String := "4344060606"
theorem cover_1346579 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346579 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1346579)
  decide +kernel
#print axioms cover_1346579

def state_1346584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_1346584 : String := "42434442070707444243440A0744400A4142430A050A0A400A414243070606070A4243074006060643070A"
theorem cover_1346584 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346584 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 43) (hex := hex_1346584)
  decide +kernel
#print axioms cover_1346584
end Mub6.Numerical.CircleFullD0.Forest
