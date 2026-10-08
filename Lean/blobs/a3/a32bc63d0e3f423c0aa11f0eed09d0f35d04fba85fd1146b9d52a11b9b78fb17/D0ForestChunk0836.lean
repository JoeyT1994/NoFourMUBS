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
def state_1501327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 85) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 118)))
def hex_1501327 : String := "4043410A064142080606434142444006070A07424405400643070506414244054008430705074205440507"
theorem cover_1501327 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501327 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_1501327)
  decide +kernel
#print axioms cover_1501327

def state_1501370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 85) else (if j.val < 3 then 41 else (if j.val < 4 then 105 else 119)))
def hex_1501370 : String := "424008434108444208400843410808080808400A430A410A42080A"
theorem cover_1501370 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501370 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 27) (hex := hex_1501370)
  decide +kernel
#print axioms cover_1501370

def state_1501398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 58)))
def hex_1501398 : String := "42054041434405080543090541434405420540434108050543410505050505"
theorem cover_1501398 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501398 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_1501398)
  decide +kernel
#print axioms cover_1501398

def state_1501429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 59)))
def hex_1501429 : String := "420840084143444208400843410842080708080843444205404108084143420544050705054208400841080808"
theorem cover_1501429 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501429 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 45) (hex := hex_1501429)
  decide +kernel
#print axioms cover_1501429

def state_1501476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 58)))
def hex_1501476 : String := "42404143440542050505050540064143060506"
theorem cover_1501476 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501476 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1501476)
  decide +kernel
#print axioms cover_1501476

def state_1501497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 59)))
def hex_1501497 : String := "4143420844400643060808084342074406400641080608"
theorem cover_1501497 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501497 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1501497)
  decide +kernel
#print axioms cover_1501497

def state_1501522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 40 else (if j.val < 4 then 104 else 59)))
def hex_1501522 : String := "4244050844404341440542050605054341050505404341084207440608084341420844404341080808434144050805054008434108080888410888"
theorem cover_1501522 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501522 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 59) (hex := hex_1501522)
  decide +kernel
#print axioms cover_1501522

def state_1501581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 40 else (if j.val < 4 then 105 else 59)))
def hex_1501581 : String := "4205440508"
theorem cover_1501581 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501581 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1501581)
  decide +kernel
#print axioms cover_1501581
end Mub6.Numerical.CircleFullD0.Forest
