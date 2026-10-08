import D0FullInterface
import ChartPartitionJoined
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1315010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 5)))
def hex_1315010 : String := "44410909414240444341090909434142444009430A0940434142080908084341060A0644094009434142440906050909424409400543410A05050909444341420A4009080A094341420A40440A430A060A420A404409430A090A0A40094409434142404405430509050542400944084308070509424009440943410A0A0909"
theorem cover_1315010 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315010 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 127) (hex := hex_1315010)
  decide +kernel
#print axioms cover_1315010

def state_1315137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
def hex_1315137 : String := "09"
theorem cover_1315137 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315137 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1315137)
  decide +kernel
#print axioms cover_1315137

def state_1315138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
def hex_1315138 : String := "4344094009424344054105400605090909"
theorem cover_1315138 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315138 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1315138)
  decide +kernel
#print axioms cover_1315138

def state_1315156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_1315156 : String := "41424344414344404241090A0942414305440905430A4440084244080805084105430509400742050544090943440A400A0A4409084143050808094344410942434409090909090942434443444006410A060808080843440942080A440908"
theorem cover_1315156 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315156 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 95) (hex := hex_1315156)
  decide +kernel
#print axioms cover_1315156
end Mub6.Numerical.CircleFullD0.Forest
