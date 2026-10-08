import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_136368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 45) else (if j.val < 3 then 46 else (if j.val < 4 then 54 else 54)))
def hex_136368 : String := "42414307440A0A434440428D0A428D410743050540428D07428D0744400A428D0A40428D0A428D410843080A410A43440A070A"
theorem cover_136368 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136368 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_136368)
  decide +kernel
#print axioms cover_136368

def state_136419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 46 else (if j.val < 4 then 54 else 55)))
def hex_136419 : String := "404241074443070606074241074443074006080808"
theorem cover_136419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136419 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_136419)
  decide +kernel
#print axioms cover_136419

def state_136440 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 46 else (if j.val < 4 then 55 else 27)))
def hex_136440 : String := "440A40064206410606"
theorem cover_136440 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136440 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_136440)
  decide +kernel
#print axioms cover_136440

def state_136449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 47 else (if j.val < 4 then 27 else 27)))
def hex_136449 : String := "410A43440A070A"
theorem cover_136449 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136449 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_136449)
  decide +kernel
#print axioms cover_136449

def state_136460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 26 else 26)))
def hex_136460 : String := "41424309084344400506094408400541420805054208430505"
theorem cover_136460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136460 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_136460)
  decide +kernel
#print axioms cover_136460

def state_136485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 26 else 26)))
def hex_136485 : String := "4142434406090843440640410606064408404142434406090843064405054208054142430608064208064208434406094408400508"
theorem cover_136485 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136485 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_136485)
  decide +kernel
#print axioms cover_136485

def state_136538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 26 else 27)))
def hex_136538 : String := "400941420943094440094142094309444009414206060909090909"
theorem cover_136538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136538 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 27) (hex := hex_136538)
  decide +kernel
#print axioms cover_136538

def state_136566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 26)))
def hex_136566 : String := "404142084408434008080807414208440843400841420844084340080807070707"
theorem cover_136566 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136566 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 33) (hex := hex_136566)
  decide +kernel
#print axioms cover_136566

def state_136600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 27)))
def hex_136600 : String := "41420943094440064106060609"
theorem cover_136600 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136600 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_136600)
  decide +kernel
#print axioms cover_136600

def state_136615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 46) else (if j.val < 3 then 44 else (if j.val < 4 then 27 else 27)))
def hex_136615 : String := "434440080809440709"
theorem cover_136615 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136615 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_136615)
  decide +kernel
#print axioms cover_136615
end Mub6.Numerical.CircleFullPrototype.Forest
