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
def state_1633088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 50 else 37)))
def hex_1633088 : String := "42434144404205090505054109094341444209404341080508094240430541050505404305410805054442054043050905054144094209094409420909"
theorem cover_1633088 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633088 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1633088)
  decide +kernel
#print axioms cover_1633088

def state_1633149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 51 else 18)))
def hex_1633149 : String := "44404207080940420741080A420709"
theorem cover_1633149 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633149 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1633149)
  decide +kernel
#print axioms cover_1633149

def state_1633168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 50) else (if j.val < 3 then 27 else (if j.val < 4 then 50 else 38)))
def hex_1633168 : String := "42414306084344060644080A4143440840080608434440420808420843410844080808400A42064341060A084408400808"
theorem cover_1633168 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633168 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_1633168)
  decide +kernel
#print axioms cover_1633168

def state_1633217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 50) else (if j.val < 3 then 27 else (if j.val < 4 then 50 else 38)))
def hex_1633217 : String := "420641430644080643444206404306080606444206084206400806"
theorem cover_1633217 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633217 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1633217)
  decide +kernel
#print axioms cover_1633217

def state_1633244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 27 else (if j.val < 4 then 50 else 39)))
def hex_1633244 : String := "4042064143444009060644084008064344400942060909440A0A420641064305440606"
theorem cover_1633244 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633244 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1633244)
  decide +kernel
#print axioms cover_1633244

def state_1633279 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 27 else (if j.val < 4 then 51 else 19)))
def hex_1633279 : String := "4440420708420741084344080807404241070A41080A42064143440606074344420608420640080607"
theorem cover_1633279 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633279 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1633279)
  decide +kernel
#print axioms cover_1633279
end Mub6.Numerical.CircleFullD0.Forest
