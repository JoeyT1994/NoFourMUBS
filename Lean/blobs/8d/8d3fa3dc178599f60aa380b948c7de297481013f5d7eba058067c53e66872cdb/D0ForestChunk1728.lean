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
def state_2287897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 36 else (if j.val < 4 then 97 else 47)))
def hex_2287897 : String := "4441400A0840074207434441080741080744414007080741400708074140080840054207444308410505430505"
theorem cover_2287897 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287897 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_2287897)
  decide +kernel
#print axioms cover_2287897

def state_2287945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 102) else (if j.val < 3 then 37 else (if j.val < 4 then 96 else 94)))
def hex_2287945 : String := "4042434441054042070505080A4344054105400A050A42084305440507"
theorem cover_2287945 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287945 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_2287945)
  decide +kernel
#print axioms cover_2287945

def state_2287975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 103) else (if j.val < 3 then 37 else (if j.val < 4 then 96 else 94)))
def hex_2287975 : String := "424344094140074207430844080807440941400742074344094108070A0743440941400942430544054105090509440941400942434409410A090A0909"
theorem cover_2287975 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287975 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_2287975)
  decide +kernel
#print axioms cover_2287975

def state_2288036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 37 else (if j.val < 4 then 96 else 94)))
def hex_2288036 : String := "424344410509410806444140090509414008084042060906434405410540090544094140424344054105050A0505400909"
theorem cover_2288036 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288036 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_2288036)
  decide +kernel
#print axioms cover_2288036

def state_2288085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 37 else (if j.val < 4 then 96 else 95)))
def hex_2288085 : String := "41404243080A43444108CF4108CF0A420807404243444140070807410807444140074207CF074140050805CF424344410806064441084042060606410806CF"
theorem cover_2288085 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288085 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_2288085)
  decide +kernel
#print axioms cover_2288085

def state_2288150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 102) else (if j.val < 3 then 37 else (if j.val < 4 then 97 else 94)))
def hex_2288150 : String := "0A"
theorem cover_2288150 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288150 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2288150)
  decide +kernel
#print axioms cover_2288150
end Mub6.Numerical.CircleFullD0.Forest
