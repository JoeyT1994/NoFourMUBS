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
def state_1639195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 51 else 38)))
def hex_1639195 : String := "42414340080808434006090941434006080606"
theorem cover_1639195 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639195 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 19) (hex := hex_1639195)
  decide +kernel
#print axioms cover_1639195

def state_1639217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 102 else 39)))
def hex_1639217 : String := "40444241070707424107070744424143070809414307080742414307404407070A4307400709410707"
theorem cover_1639217 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639217 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_1639217)
  decide +kernel
#print axioms cover_1639217

def state_1639258 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 103 else 39)))
def hex_1639258 : String := "4044064208064408424108094143400808084340060908"
theorem cover_1639258 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639258 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1639258)
  decide +kernel
#print axioms cover_1639258

def state_1639281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 101) else (if j.val < 3 then 60 else (if j.val < 4 then 51 else 39)))
def hex_1639281 : String := "434044070744420907420507400644094209410906"
theorem cover_1639281 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639281 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 21) (hex := hex_1639281)
  decide +kernel
#print axioms cover_1639281

def state_1639302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 61 else (if j.val < 4 then 51 else 39)))
def hex_1639302 : String := "41434007440707400644064241434006070606064340060706"
theorem cover_1639302 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639302 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_1639302)
  decide +kernel
#print axioms cover_1639302

def state_1639327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 19)))
def hex_1639327 : String := "434044060744424305410705070540064442414340060906060642414340060540060943050606"
theorem cover_1639327 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639327 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1639327)
  decide +kernel
#print axioms cover_1639327

def state_1639366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 19)))
def hex_1639366 : String := "41434006074006440606430706"
theorem cover_1639366 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639366 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1639366)
  decide +kernel
#print axioms cover_1639366

def state_1639381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 8)))
def hex_1639381 : String := "4105400609"
theorem cover_1639381 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639381 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1639381)
  decide +kernel
#print axioms cover_1639381

def state_1639387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 9)))
def hex_1639387 : String := "4005434244084108400808440541054005434408080505"
theorem cover_1639387 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639387 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_1639387)
  decide +kernel
#print axioms cover_1639387
end Mub6.Numerical.CircleFullD0.Forest
