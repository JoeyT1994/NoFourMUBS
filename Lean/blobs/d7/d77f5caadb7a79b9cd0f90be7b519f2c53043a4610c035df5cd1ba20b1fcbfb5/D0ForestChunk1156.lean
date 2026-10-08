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
def state_1577889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 153 else 65) else (if j.val < 3 then 192 else (if j.val < 4 then 208 else 206)))
def hex_1577889 : String := "41D042440643064041D0080544430640410942060906434041D0420607064041D042444306084305070741D042054406430505"
theorem cover_1577889 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577889 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1577889)
  decide +kernel
#print axioms cover_1577889

def state_1577941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 152 else 65) else (if j.val < 3 then 192 else (if j.val < 4 then 209 else 206)))
def hex_1577941 : String := "41D042440808444340084109080A43400741D0080A"
theorem cover_1577941 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577941 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1577941)
  decide +kernel
#print axioms cover_1577941

def state_1577962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 153 else 65) else (if j.val < 3 then 192 else (if j.val < 4 then 209 else 206)))
def hex_1577962 : String := "41D042440A0A4443404109424408080941094206090A434041D042440808444307090741D042440A0A444309094340410705050A0A"
theorem cover_1577962 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577962 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 53) (hex := hex_1577962)
  decide +kernel
#print axioms cover_1577962

def state_1578016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 65) else (if j.val < 3 then 192 else (if j.val < 4 then 208 else 207)))
def hex_1578016 : String := "4041D04244080844070741D0424443054041D0050543050544434041D007054041D00741D00543400705400705"
theorem cover_1578016 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578016 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 45) (hex := hex_1578016)
  decide +kernel
#print axioms cover_1578016

def state_1578061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 65) else (if j.val < 3 then 192 else (if j.val < 4 then 209 else 207)))
def hex_1578061 : String := "4041D04244080644434006410607060641D0424443400A050A434009050A44434041D0424408070741D042054443050A05400A0A434041060641D00506"
theorem cover_1578061 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578061 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_1578061)
  decide +kernel
#print axioms cover_1578061
end Mub6.Numerical.CircleFullD0.Forest
