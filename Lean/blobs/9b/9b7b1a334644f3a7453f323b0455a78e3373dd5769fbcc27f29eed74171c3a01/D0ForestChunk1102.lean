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
def state_1564804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 62) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 44)))
def hex_1564804 : String := "444205430605424341400544054205430505050543414009440642060606414044050544434205060543420541400806050505"
theorem cover_1564804 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564804 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 51) (hex := hex_1564804)
  decide +kernel
#print axioms cover_1564804

def state_1564855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 62) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 44)))
def hex_1564855 : String := "4442430605064243060543064140440643064205060606"
theorem cover_1564855 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564855 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_1564855)
  decide +kernel
#print axioms cover_1564855

def state_1564878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 63) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 44)))
def hex_1564878 : String := "400506"
theorem cover_1564878 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564878 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1564878)
  decide +kernel
#print axioms cover_1564878

def state_1564881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 53 else (if j.val < 4 then 43 else 44)))
def hex_1564881 : String := "41400544054342054140050A050505"
theorem cover_1564881 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564881 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1564881)
  decide +kernel
#print axioms cover_1564881

def state_1564897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 52 else (if j.val < 4 then 21 else 45)))
def hex_1564897 : String := "43414044050544420543414005440509050542054341444005090905050505"
theorem cover_1564897 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564897 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_1564897)
  decide +kernel
#print axioms cover_1564897

def state_1564933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 62) else (if j.val < 3 then 106 else (if j.val < 4 then 42 else 90)))
def hex_1564933 : String := "434140440542050844420543414005060505420543410705050505"
theorem cover_1564933 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564933 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1564933)
  decide +kernel
#print axioms cover_1564933

def state_1564960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 62) else (if j.val < 3 then 107 else (if j.val < 4 then 42 else 90)))
def hex_1564960 : String := "434140440942080844424306414008060509424307410705430608400944064205064140444308050844434205410805420508434208080805"
theorem cover_1564960 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564960 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1564960)
  decide +kernel
#print axioms cover_1564960

def state_1565017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 62) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 91)))
def hex_1565017 : String := "4243414008444205070705054341400807404409084442430605090741084005440508"
theorem cover_1565017 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565017 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1565017)
  decide +kernel
#print axioms cover_1565017
end Mub6.Numerical.CircleFullD0.Forest
