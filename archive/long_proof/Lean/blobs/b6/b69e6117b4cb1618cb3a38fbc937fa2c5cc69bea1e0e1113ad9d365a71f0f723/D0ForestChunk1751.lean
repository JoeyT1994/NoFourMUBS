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
def state_2293402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 103) else (if j.val < 3 then 68 else (if j.val < 4 then 109 else 184)))
def hex_2293402 : String := "41404308424441080741090544410940050909084043420744410807410805420544070543084244074140050805444140430807080A4140050840050A"
theorem cover_2293402 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293402 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_2293402)
  decide +kernel
#print axioms cover_2293402

def state_2293463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 103) else (if j.val < 3 then 68 else (if j.val < 4 then 109 else 185)))
def hex_2293463 : String := "41404308054308094005430605"
theorem cover_2293463 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293463 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 13) (hex := hex_2293463)
  decide +kernel
#print axioms cover_2293463

def state_2293478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 206) else (if j.val < 3 then 69 else (if j.val < 4 then 109 else 184)))
def hex_2293478 : String := "4043084244090909430809"
theorem cover_2293478 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293478 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2293478)
  decide +kernel
#print axioms cover_2293478

def state_2293491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 207) else (if j.val < 3 then 69 else (if j.val < 4 then 218 else 184)))
def hex_2293491 : String := "4244410840050841400508054441404308090840434205080543084208C4414009084005430805"
theorem cover_2293491 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293491 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 39) (hex := hex_2293491)
  decide +kernel
#print axioms cover_2293491

def state_2293530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 207) else (if j.val < 3 then 69 else (if j.val < 4 then 219 else 184)))
def hex_2293530 : String := "42444140054309050505444140060940054342050905410505"
theorem cover_2293530 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293530 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2293530)
  decide +kernel
#print axioms cover_2293530

def state_2293555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 175 else 207) else (if j.val < 3 then 69 else (if j.val < 4 then 109 else 184)))
def hex_2293555 : String := "4308424441400908404308070A4109400509444109404309090909"
theorem cover_2293555 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293555 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_2293555)
  decide +kernel
#print axioms cover_2293555

def state_2293582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 103) else (if j.val < 3 then 69 else (if j.val < 4 then 109 else 185)))
def hex_2293582 : String := "41400909404342054441050505054342440809094244090509"
theorem cover_2293582 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293582 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2293582)
  decide +kernel
#print axioms cover_2293582
end Mub6.Numerical.CircleFullD0.Forest
