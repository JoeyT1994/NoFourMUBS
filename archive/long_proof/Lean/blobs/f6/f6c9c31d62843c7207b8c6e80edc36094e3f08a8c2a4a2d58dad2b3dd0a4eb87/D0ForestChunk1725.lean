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
def state_2287169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 10)))
def hex_2287169 : String := "404241430A06074106094241434405404241060706054406400642410643080606430944074007420741430906074143050A43094409400942410A0909"
theorem cover_2287169 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287169 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_2287169)
  decide +kernel
#print axioms cover_2287169

def state_2287231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
def hex_2287231 : String := "42410A07410A434409424006434441060741060706060A"
theorem cover_2287231 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287231 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 23) (hex := hex_2287231)
  decide +kernel
#print axioms cover_2287231

def state_2287256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 11)))
def hex_2287256 : String := "43444042410A43440707070A4208410843054405084042410843080A0A08444006424106430A060A0A"
theorem cover_2287256 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287256 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_2287256)
  decide +kernel
#print axioms cover_2287256

def state_2287300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 22)))
def hex_2287300 : String := "42074341440940074207434106070607410A07"
theorem cover_2287300 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287300 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 19) (hex := hex_2287300)
  decide +kernel
#print axioms cover_2287300

def state_2287319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 22)))
def hex_2287319 : String := "42434108074144070807434144054008084409400708414440420709054042070A084409400742074344094108074409410807"
theorem cover_2287319 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287319 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_2287319)
  decide +kernel
#print axioms cover_2287319

def state_2287371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 23)))
def hex_2287371 : String := "420743444140074207434408080A07414007080744410A07410A05"
theorem cover_2287371 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287371 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_2287371)
  decide +kernel
#print axioms cover_2287371

def state_2287399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 24 else 23)))
def hex_2287399 : String := "4344080844410807410807"
theorem cover_2287399 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287399 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2287399)
  decide +kernel
#print axioms cover_2287399

def state_2287411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 48 else 23)))
def hex_2287411 : String := "4441084007084108400708"
theorem cover_2287411 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287411 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2287411)
  decide +kernel
#print axioms cover_2287411
end Mub6.Numerical.CircleFullD0.Forest
