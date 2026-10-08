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
def state_1624229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 103) else (if j.val < 3 then 105 else (if j.val < 4 then 97 else 33)))
def hex_1624229 : String := "40444341090909434142404409430541060505404443410809084341420505054108090942404409050540444305094305410505054142090942090909"
theorem cover_1624229 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624229 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_1624229)
  decide +kernel
#print axioms cover_1624229

def state_1624292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 48 else 32)))
def hex_1624292 : String := "4341424007070742400607064142080606"
theorem cover_1624292 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624292 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_1624292)
  decide +kernel
#print axioms cover_1624292

def state_1624310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 96 else 33)))
def hex_1624310 : String := "41424044074307410707440743074107070742404407430741070644430741070743074107424007070707"
theorem cover_1624310 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624310 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1624310)
  decide +kernel
#print axioms cover_1624310

def state_1624354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 102) else (if j.val < 3 then 53 else (if j.val < 4 then 97 else 33)))
def hex_1624354 : String := "424044084341084208050544084341084208080840064408430708"
theorem cover_1624354 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624354 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_1624354)
  decide +kernel
#print axioms cover_1624354

def state_1624381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 103) else (if j.val < 3 then 53 else (if j.val < 4 then 97 else 33)))
def hex_1624381 : String := "424006444341424006440608060606434142404406434107060844430708434107074108420806400607424006440643414240060506060606414208060606"
theorem cover_1624381 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624381 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 63) (hex := hex_1624381)
  decide +kernel
#print axioms cover_1624381

def state_1624445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 48 else 32)))
def hex_1624445 : String := "4341420A07424007090741420908420909"
theorem cover_1624445 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624445 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_1624445)
  decide +kernel
#print axioms cover_1624445
end Mub6.Numerical.CircleFullD0.Forest
