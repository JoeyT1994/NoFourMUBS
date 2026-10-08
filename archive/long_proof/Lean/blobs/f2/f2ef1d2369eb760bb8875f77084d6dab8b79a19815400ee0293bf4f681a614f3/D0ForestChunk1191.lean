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
def state_1586274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 27 else 26)))
def hex_1586274 : String := "4440414342084407060608414342054440414305050505050A430505404106084143050505"
theorem cover_1586274 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586274 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 37) (hex := hex_1586274)
  decide +kernel
#print axioms cover_1586274

def state_1586311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 26)))
def hex_1586311 : String := "44404143070607414342444041070741430542050605400705444007410707070643424440070505074244400705070740064106430706"
theorem cover_1586311 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586311 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_1586311)
  decide +kernel
#print axioms cover_1586311

def state_1586366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 26)))
def hex_1586366 : String := "4244080544400741430707074007410705"
theorem cover_1586366 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586366 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1586366)
  decide +kernel
#print axioms cover_1586366

def state_1586383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 27)))
def hex_1586383 : String := "4041060641424006090642054006410705"
theorem cover_1586383 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586383 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1586383)
  decide +kernel
#print axioms cover_1586383

def state_1586400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 13)))
def hex_1586400 : String := "434440074142430744070707070744404106074142444007414307064307060644070642440707074006410607"
theorem cover_1586400 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586400 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_1586400)
  decide +kernel
#print axioms cover_1586400

def state_1586445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 6)))
def hex_1586445 : String := "43440A4007410A074440410544054207064144054243090506444243090505424340070A404105074109440907430709400641064243074440064106070607"
theorem cover_1586445 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586445 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_1586445)
  decide +kernel
#print axioms cover_1586445
end Mub6.Numerical.CircleFullD0.Forest
