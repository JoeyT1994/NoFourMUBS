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
def state_1604764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 58 else 100)))
def hex_1604764 : String := "40424143054406050541434406404205070544404241430607060742060A400742050A43064440420607064007054205410605"
theorem cover_1604764 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604764 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1604764)
  decide +kernel
#print axioms cover_1604764

def state_1604815 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 58 else 101)))
def hex_1604815 : String := "40420541430544400705050505"
theorem cover_1604815 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604815 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1604815)
  decide +kernel
#print axioms cover_1604815

def state_1604831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 42) else (if j.val < 3 then 104 else (if j.val < 4 then 59 else 100)))
def hex_1604831 : String := "414344420840084106054205400705440842084007419F0508"
theorem cover_1604831 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604831 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1604831)
  decide +kernel
#print axioms cover_1604831

def state_1604857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 84) else (if j.val < 3 then 105 else (if j.val < 4 then 59 else 100)))
def hex_1604857 : String := "434440424107070742419F43060841430A440707430707400742419F0507444042070742419F08414307070740074241070707"
theorem cover_1604857 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604857 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 51) (hex := hex_1604857)
  decide +kernel
#print axioms cover_1604857

def state_1604908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 85) else (if j.val < 3 then 105 else (if j.val < 4 then 59 else 100)))
def hex_1604908 : String := "4344400842084143060707400742050744084007420507"
theorem cover_1604908 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604908 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1604908)
  decide +kernel
#print axioms cover_1604908

def state_1604932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 42) else (if j.val < 3 then 104 else (if j.val < 4 then 59 else 100)))
def hex_1604932 : String := "41430544404205419F05050505"
theorem cover_1604932 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604932 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1604932)
  decide +kernel
#print axioms cover_1604932

def state_1604947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 84) else (if j.val < 3 then 105 else (if j.val < 4 then 118 else 100)))
def hex_1604947 : String := "44404206410A0A06404205410A0505"
theorem cover_1604947 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604947 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1604947)
  decide +kernel
#print axioms cover_1604947

def state_1604963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 84) else (if j.val < 3 then 105 else (if j.val < 4 then 119 else 200)))
def hex_1604963 : String := "4042419F4344060544080941430A44404207070A40070A43444042410706070A40070A44400742410A080A400742070742419F05410A4306440A09"
theorem cover_1604963 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604963 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1604963)
  decide +kernel
#print axioms cover_1604963
end Mub6.Numerical.CircleFullD0.Forest
