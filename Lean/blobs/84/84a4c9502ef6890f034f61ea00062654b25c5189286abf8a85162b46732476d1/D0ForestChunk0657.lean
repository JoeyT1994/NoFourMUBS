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
def state_1346629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_1346629 : String := "4142434405400541050544054041050606434405404105060644054041060506424344054042050942090509434405404344054105050543050505"
theorem cover_1346629 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346629 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1346629)
  decide +kernel
#print axioms cover_1346629

def state_1346688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_1346688 : String := "414243440541420506420905064306054243440542090905430505"
theorem cover_1346688 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346688 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_1346688)
  decide +kernel
#print axioms cover_1346688

def state_1346718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
def hex_1346718 : String := "434440054105420505054440094109094005410509"
theorem cover_1346718 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346718 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 21) (hex := hex_1346718)
  decide +kernel
#print axioms cover_1346718

def state_1346740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 3)))
def hex_1346740 : String := "44404143054405050A414344050544064205054306440506400541050A"
theorem cover_1346740 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346740 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_1346740)
  decide +kernel
#print axioms cover_1346740

def state_1346769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 3)))
def hex_1346769 : String := "4440414442430540050543400505400A41050542094309400A09440A09414442094305410505090909"
theorem cover_1346769 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346769 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1346769)
  decide +kernel
#print axioms cover_1346769

def state_1346810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_1346810 : String := "424344404243054405050A42434405054409410505430A440509400542050A4440094209094009420609434440430A4409094344060644060A0A09"
theorem cover_1346810 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346810 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1346810)
  decide +kernel
#print axioms cover_1346810
end Mub6.Numerical.CircleFullD0.Forest
