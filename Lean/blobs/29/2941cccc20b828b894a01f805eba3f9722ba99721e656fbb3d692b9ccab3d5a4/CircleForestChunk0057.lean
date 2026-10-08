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
def state_951070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 43) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 54)))
def hex_951070 : String := "420741440607440607"
theorem cover_951070 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951070 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_951070)
  decide +kernel
#print axioms cover_951070

def state_951079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 55)))
def hex_951079 : String := "434042080A08404241084443080908410A44434042080808404209C7420708084208410808"
theorem cover_951079 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951079 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_951079)
  decide +kernel
#print axioms cover_951079

def state_951116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 27)))
def hex_951116 : String := "424107440607410A44434042070A060608"
theorem cover_951116 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951116 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_951116)
  decide +kernel
#print axioms cover_951116

def state_951135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 13)))
def hex_951135 : String := "4109444342090A0609"
theorem cover_951135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951135 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_951135)
  decide +kernel
#print axioms cover_951135

def state_951145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 13)))
def hex_951145 : String := "4443400542054443410540050705050505"
theorem cover_951145 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951145 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_951145)
  decide +kernel
#print axioms cover_951145

def state_951163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 26)))
def hex_951163 : String := "4340420A41440A050A42414406090A4144434008060643404205410544080542410506410544060505440643400A42064144064306050606400506"
theorem cover_951163 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951163 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_951163)
  decide +kernel
#print axioms cover_951163

def state_951222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 27)))
def hex_951222 : String := "4340420941050942094143440505054344404209410543440A0505424109094143444005420541050605054344400A0640094209C7440605090905"
theorem cover_951222 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951222 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 59) (hex := hex_951222)
  decide +kernel
#print axioms cover_951222

def state_951282 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 13)))
def hex_951282 : String := "41440707440607"
theorem cover_951282 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951282 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_951282)
  decide +kernel
#print axioms cover_951282

def state_951290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 13)))
def hex_951290 : String := "444340420744074341050705070543400542050705"
theorem cover_951290 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951290 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_951290)
  decide +kernel
#print axioms cover_951290

def state_951312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 26)))
def hex_951312 : String := "4340420641440643404206070606060606"
theorem cover_951312 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951312 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_951312)
  decide +kernel
#print axioms cover_951312
end Mub6.Numerical.CircleFullD0.Forest
