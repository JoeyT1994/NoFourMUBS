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
def state_1553254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 52 else (if j.val < 4 then 21 else 21)))
def hex_1553254 : String := "43444140064206434441060A0606400742074344074140060A0707410640064206444341064006420644070606064441060706"
theorem cover_1553254 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553254 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 51) (hex := hex_1553254)
  decide +kernel
#print axioms cover_1553254

def state_1553307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 42)))
def hex_1553307 : String := "414042060842434441060A080A434441050A050840420743090742434407414008420A0A070743444140070A07414008440A0540074407094407410807"
theorem cover_1553307 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553307 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1553307)
  decide +kernel
#print axioms cover_1553307

def state_1553368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 43)))
def hex_1553368 : String := "41064044080644424341084008444243080708080643410540084442080508084243080608"
theorem cover_1553368 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553368 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 37) (hex := hex_1553368)
  decide +kernel
#print axioms cover_1553368

def state_1553405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 53 else (if j.val < 4 then 43 else 21)))
def hex_1553405 : String := "4441060706"
theorem cover_1553405 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553405 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1553405)
  decide +kernel
#print axioms cover_1553405

def state_1553411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 27 else (if j.val < 4 then 20 else 10)))
def hex_1553411 : String := "4441404105094105424305444009410509050540094142430944090909094105400944410509410509"
theorem cover_1553411 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553411 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_1553411)
  decide +kernel
#print axioms cover_1553411

def state_1553454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 20)))
def hex_1553454 : String := "4043080843414244080505424440080A40080A440A0541080A"
theorem cover_1553454 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553454 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1553454)
  decide +kernel
#print axioms cover_1553454
end Mub6.Numerical.CircleFullD0.Forest
