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
def state_54907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 17 else (if j.val < 4 then 49 else 27)))
def hex_54907 : String := "40410944070841440A420943410940080A09440A42084340080A08"
theorem cover_54907 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54907 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_54907)
  decide +kernel
#print axioms cover_54907

def state_54934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 13)))
def hex_54934 : String := "440909"
theorem cover_54934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54934 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_54934)
  decide +kernel
#print axioms cover_54934

def state_54940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 26)))
def hex_54940 : String := "4105424344074105070705"
theorem cover_54940 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54940 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_54940)
  decide +kernel
#print axioms cover_54940

def state_54952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 26)))
def hex_54952 : String := "4243440840050844400508400541050A05"
theorem cover_54952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54952 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_54952)
  decide +kernel
#print axioms cover_54952

def state_54970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 26)))
def hex_54970 : String := "434440074108074041424344400508400541054207050705420707414243080A43084408410540050842434407400709070944074007410A07"
theorem cover_54970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54970 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_54970)
  decide +kernel
#print axioms cover_54970

def state_55027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 26)))
def hex_55027 : String := "43440940050907"
theorem cover_55027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55027 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_55027)
  decide +kernel
#print axioms cover_55027

def state_55035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 27)))
def hex_55035 : String := "410542434140054244050505400842444341400542070507070844070841050805"
theorem cover_55035 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55035 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 33) (hex := hex_55035)
  decide +kernel
#print axioms cover_55035

def state_55069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 27)))
def hex_55069 : String := "42434041054244050505414206054244434041054244050605084005410642060606064005410642440A060605"
theorem cover_55069 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55069 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 45) (hex := hex_55069)
  decide +kernel
#print axioms cover_55069

def state_55122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 38) else (if j.val < 3 then 36 else (if j.val < 4 then 96 else 54)))
def hex_55122 : String := "410542440543050505"
theorem cover_55122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55122 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_55122)
  decide +kernel
#print axioms cover_55122

def state_55132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 76) else (if j.val < 3 then 36 else (if j.val < 4 then 96 else 54)))
def hex_55132 : String := "42440543050505"
theorem cover_55132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55132 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_55132)
  decide +kernel
#print axioms cover_55132
end Mub6.Numerical.CircleFullPrototype.Forest
