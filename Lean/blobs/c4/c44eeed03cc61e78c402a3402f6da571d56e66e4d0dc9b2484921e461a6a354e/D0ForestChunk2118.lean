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
def state_2588935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 23 else 19)))
def hex_2588935 : String := "4340084144084206080A404108084144434208084240054144084308050805434240064144080808084240054144050544050505440A0A"
theorem cover_2588935 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588935 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_2588935)
  decide +kernel
#print axioms cover_2588935

def state_2588990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 11 else 9)))
def hex_2588990 : String := "43414409400809440809414443400809400542410505054340084244094143084208050809400542440505054443080843400809400542414405050805"
theorem cover_2588990 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588990 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_2588990)
  decide +kernel
#print axioms cover_2588990

def state_2589051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 4)))
def hex_2589051 : String := "434144094042430808050909414440054309054005434244094140050909050544400509400543094241050505"
theorem cover_2589051 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589051 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_2589051)
  decide +kernel
#print axioms cover_2589051

def state_2589098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 4)))
def hex_2589098 : String := "41440742050909"
theorem cover_2589098 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589098 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2589098)
  decide +kernel
#print axioms cover_2589098

def state_2589107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 8)))
def hex_2589107 : String := "4243070606"
theorem cover_2589107 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589107 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2589107)
  decide +kernel
#print axioms cover_2589107

def state_2589116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 18)))
def hex_2589116 : String := "410707"
theorem cover_2589116 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589116 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2589116)
  decide +kernel
#print axioms cover_2589116

def state_2589120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 19)))
def hex_2589120 : String := "42430540440541050505434044050905404407414243050643090642430540440641420506420509054309404406090606"
theorem cover_2589120 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589120 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 49) (hex := hex_2589120)
  decide +kernel
#print axioms cover_2589120

def state_2589169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 17) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 19)))
def hex_2589169 : String := "4243054044050505430940440941090909"
theorem cover_2589169 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589169 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_2589169)
  decide +kernel
#print axioms cover_2589169

def state_2589186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 9)))
def hex_2589186 : String := "440505"
theorem cover_2589186 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589186 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2589186)
  decide +kernel
#print axioms cover_2589186
end Mub6.Numerical.CircleFullD0.Forest
