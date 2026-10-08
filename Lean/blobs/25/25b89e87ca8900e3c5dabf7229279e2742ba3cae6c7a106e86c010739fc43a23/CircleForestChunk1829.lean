import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2312131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 39 else (if j.val < 4 then 58 else 88)))
def hex_2312131 : String := "4243410540070541050743054105400605"
theorem cover_2312131 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312131 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_2312131)
  decide +kernel
#print axioms cover_2312131

def state_2312148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 39 else (if j.val < 4 then 58 else 89)))
def hex_2312148 : String := "4243414044050605404442074341050707080A410640080A4341054044434205054206060844054305084106400644424305060508"
theorem cover_2312148 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312148 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_2312148)
  decide +kernel
#print axioms cover_2312148

def state_2312201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 39 else (if j.val < 4 then 58 else 44)))
def hex_2312201 : String := "40440742074309074442074341400709070742434140070A07074341404409084443090943080809414008444207080807"
theorem cover_2312201 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312201 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_2312201)
  decide +kernel
#print axioms cover_2312201

def state_2312250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 39 else (if j.val < 4 then 59 else 44)))
def hex_2312250 : String := "4140064442060642434106080606400744074207410807"
theorem cover_2312250 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312250 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2312250)
  decide +kernel
#print axioms cover_2312250

def state_2312274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 38 else (if j.val < 4 then 29 else 45)))
def hex_2312274 : String := "434140444208080844420A434140080A0808084008440A08410808"
theorem cover_2312274 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312274 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_2312274)
  decide +kernel
#print axioms cover_2312274

def state_2312301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 39 else (if j.val < 4 then 29 else 45)))
def hex_2312301 : String := "4341404442080808444243414008444208050808084341400844050708084208084008444243080843080808414008444208060808"
theorem cover_2312301 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312301 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_2312301)
  decide +kernel
#print axioms cover_2312301
end Mub6.Numerical.CircleFullD0.Forest
