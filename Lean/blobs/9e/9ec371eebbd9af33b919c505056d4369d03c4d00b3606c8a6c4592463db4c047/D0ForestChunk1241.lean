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
def state_1598261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 57 else 50)))
def hex_1598261 : String := "444206404306414442060942400705070806420540430541070505"
theorem cover_1598261 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598261 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1598261)
  decide +kernel
#print axioms cover_1598261

def state_1598288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 50)))
def hex_1598288 : String := "43064144060505"
theorem cover_1598288 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598288 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1598288)
  decide +kernel
#print axioms cover_1598288

def state_1598295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 51)))
def hex_1598295 : String := "4043054142054440430541070505050505"
theorem cover_1598295 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598295 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1598295)
  decide +kernel
#print axioms cover_1598295

def state_1598313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 25)))
def hex_1598313 : String := "4440434142440A05444043410A08084306410A054043050A050841420A440A0A0843054142054440410A0505050505"
theorem cover_1598313 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598313 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_1598313)
  decide +kernel
#print axioms cover_1598313

def state_1598367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 40) else (if j.val < 3 then 102 else (if j.val < 4 then 58 else 100)))
def hex_1598367 : String := "4341444240080909424008434109050A4009094408420840074308084144420809420A40070908"
theorem cover_1598367 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598367 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1598367)
  decide +kernel
#print axioms cover_1598367

def state_1598407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 40) else (if j.val < 3 then 102 else (if j.val < 4 then 116 else 100)))
def hex_1598407 : String := "4144420640090642054043090906440605"
theorem cover_1598407 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598407 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1598407)
  decide +kernel
#print axioms cover_1598407

def state_1598424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 40) else (if j.val < 3 then 102 else (if j.val < 4 then 117 else 100)))
def hex_1598424 : String := "414442400A06400943090942400A05404341090941090943410905410944090544420840080642054043410A050805"
theorem cover_1598424 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598424 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_1598424)
  decide +kernel
#print axioms cover_1598424

def state_1598472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 58 else 100)))
def hex_1598472 : String := "43410944094240074309070741094409420707"
theorem cover_1598472 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598472 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1598472)
  decide +kernel
#print axioms cover_1598472

def state_1598492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 116 else 100)))
def hex_1598492 : String := "41440942400909094442400906094240434106054109440605064009430609"
theorem cover_1598492 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598492 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1598492)
  decide +kernel
#print axioms cover_1598492
end Mub6.Numerical.CircleFullD0.Forest
