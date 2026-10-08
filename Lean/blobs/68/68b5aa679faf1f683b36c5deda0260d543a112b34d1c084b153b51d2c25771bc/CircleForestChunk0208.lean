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
def state_71316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 49) else (if j.val < 3 then 40 else (if j.val < 4 then 47 else 20)))
def hex_71316 : String := "44434107404244074308410808440743074107404209070742080741074042094407434107B84107094209074308410A40420A44434108B8410AB80808"
theorem cover_71316 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71316 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_71316)
  decide +kernel
#print axioms cover_71316

def state_71378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 49) else (if j.val < 3 then 41 else (if j.val < 4 then 47 else 40)))
def hex_71378 : String := "430707"
theorem cover_71378 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71378 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_71378)
  decide +kernel
#print axioms cover_71378

def state_71382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 49) else (if j.val < 3 then 41 else (if j.val < 4 then 94 else 41)))
def hex_71382 : String := "414042080707404244430841074042084407080808444307070808"
theorem cover_71382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71382 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_71382)
  decide +kernel
#print axioms cover_71382

def state_71409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 49) else (if j.val < 3 then 41 else (if j.val < 4 then 95 else 41)))
def hex_71409 : String := "4140424407084406430707420806404244434107B841404244070A0707B843084108B84443074107B8434108B84140424407080908B8424443070708440608"
theorem cover_71409 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71409 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_71409)
  decide +kernel
#print axioms cover_71409

def state_71472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 49) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
def hex_71472 : String := "424443070708440608"
theorem cover_71472 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71472 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_71472)
  decide +kernel
#print axioms cover_71472

def state_71481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 24) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 21)))
def hex_71481 : String := "410843084044420843084108404442080808080808"
theorem cover_71481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71481 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 21) (hex := hex_71481)
  decide +kernel
#print axioms cover_71481

def state_71503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 24) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 20)))
def hex_71503 : String := "410643404244064106430809060640424406434106404244060906064106404244060906060606"
theorem cover_71503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71503 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_71503)
  decide +kernel
#print axioms cover_71503

def state_71542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 24) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 21)))
def hex_71542 : String := "41430840420806064340090840424443094109090809420806"
theorem cover_71542 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71542 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_71542)
  decide +kernel
#print axioms cover_71542
end Mub6.Numerical.CircleFullPrototype.Forest
