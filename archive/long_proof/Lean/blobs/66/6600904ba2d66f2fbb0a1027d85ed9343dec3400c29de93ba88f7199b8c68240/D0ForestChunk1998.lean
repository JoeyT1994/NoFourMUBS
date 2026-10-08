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
def state_2560095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 28 else (if j.val < 4 then 31 else 25)))
def hex_2560095 : String := "40414442050A0A4442434144050744404243070A060707414405400A054440060540420A0607434107440607410606420A0A414405074442050707"
theorem cover_2560095 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560095 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 59) (hex := hex_2560095)
  decide +kernel
#print axioms cover_2560095

def state_2560154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 29 else (if j.val < 4 then 15 else 25)))
def hex_2560154 : String := "43400A0740410A09410707"
theorem cover_2560154 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560154 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2560154)
  decide +kernel
#print axioms cover_2560154

def state_2560170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 48)))
def hex_2560170 : String := "404243444105400805410540420943440641060806054405410508434406410640064205050605"
theorem cover_2560170 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560170 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 39) (hex := hex_2560170)
  decide +kernel
#print axioms cover_2560170

def state_2560213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 92) else (if j.val < 3 then 56 else (if j.val < 4 then 60 else 49)))
def hex_2560213 : String := "4440424344050744054105400A05430A060540420A0707"
theorem cover_2560213 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560213 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_2560213)
  decide +kernel
#print axioms cover_2560213

def state_2560237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 93) else (if j.val < 3 then 56 else (if j.val < 4 then 60 else 98)))
def hex_2560237 : String := "404243414409400A0744094042090A074144084042080807440840080843414440060707444042080607400A07414406400607440840080742430709430707"
theorem cover_2560237 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560237 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 63) (hex := hex_2560237)
  decide +kernel
#print axioms cover_2560237

def state_2560300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 93) else (if j.val < 3 then 56 else (if j.val < 4 then 60 else 99)))
def hex_2560300 : String := "404243410744070741440707444042090A07074307410744400A070707"
theorem cover_2560300 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560300 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_2560300)
  decide +kernel
#print axioms cover_2560300
end Mub6.Numerical.CircleFullD0.Forest
