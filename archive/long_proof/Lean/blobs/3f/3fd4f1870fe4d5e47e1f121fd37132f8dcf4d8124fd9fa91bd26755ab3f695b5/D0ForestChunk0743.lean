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
def state_1479212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 45) else (if j.val < 3 then 17 else (if j.val < 4 then 22 else 29)))
def hex_1479212 : String := "43440707440842404143440806440A0643080A4106064041080808"
theorem cover_1479212 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479212 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1479212)
  decide +kernel
#print axioms cover_1479212

def state_1479240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 28)))
def hex_1479240 : String := "420A4043414406424043410606070A400643080A0A0A43414408420A08080A"
theorem cover_1479240 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479240 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_1479240)
  decide +kernel
#print axioms cover_1479240

def state_1479272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 23 else 29)))
def hex_1479272 : String := "40434144420A40070A420740074341440706440706070A074341440A060A0A"
theorem cover_1479272 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479272 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_1479272)
  decide +kernel
#print axioms cover_1479272

def state_1479308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 34 else (if j.val < 4 then 46 else 58)))
def hex_1479308 : String := "40434144070744070707434144420A40434144060708070A4240074341090A074043414407074407070743414409094408420A084107070A4144070707"
theorem cover_1479308 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479308 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_1479308)
  decide +kernel
#print axioms cover_1479308

def state_1479370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 44) else (if j.val < 3 then 35 else (if j.val < 4 then 46 else 58)))
def hex_1479370 : String := "4341440642400643410605070609410707"
theorem cover_1479370 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479370 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1479370)
  decide +kernel
#print axioms cover_1479370

def state_1479388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 44) else (if j.val < 3 then 35 else (if j.val < 4 then 92 else 58)))
def hex_1479388 : String := "41444240060806424043414408420505440605410707430841440842090808404308410606084408424043084107070808"
theorem cover_1479388 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479388 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1479388)
  decide +kernel
#print axioms cover_1479388

def state_1479437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 44) else (if j.val < 3 then 35 else (if j.val < 4 then 93 else 58)))
def hex_1479437 : String := "4144420A06424007434107070740434106060743410808410707440A420A40060A"
theorem cover_1479437 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479437 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 33) (hex := hex_1479437)
  decide +kernel
#print axioms cover_1479437
end Mub6.Numerical.CircleFullD0.Forest
