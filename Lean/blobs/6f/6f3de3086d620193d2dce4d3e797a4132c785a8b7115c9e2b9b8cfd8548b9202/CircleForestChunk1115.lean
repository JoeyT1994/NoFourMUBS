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
def state_1568009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 14) else (if j.val < 3 then 27 else (if j.val < 4 then 10 else 10)))
def hex_1568009 : String := "434406054441404341420705060A43060906414005054043440605440A0A4306440605"
theorem cover_1568009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568009 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1568009)
  decide +kernel
#print axioms cover_1568009

def state_1568044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 10)))
def hex_1568044 : String := "42434406050943064406410506"
theorem cover_1568044 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568044 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1568044)
  decide +kernel
#print axioms cover_1568044

def state_1568057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 10)))
def hex_1568057 : String := "404243064406414042430609430644060906060606"
theorem cover_1568057 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568057 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 21) (hex := hex_1568057)
  decide +kernel
#print axioms cover_1568057

def state_1568079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 11)))
def hex_1568079 : String := "4440424305090542050507"
theorem cover_1568079 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568079 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1568079)
  decide +kernel
#print axioms cover_1568079

def state_1568092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 22)))
def hex_1568092 : String := "424341440607064144404209434109060909094440420606064042094306090643064144404306424109064105060640430542090505440640430642060606"
theorem cover_1568092 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568092 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_1568092)
  decide +kernel
#print axioms cover_1568092

def state_1568155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 22)))
def hex_1568155 : String := "4243060906"
theorem cover_1568155 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568155 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1568155)
  decide +kernel
#print axioms cover_1568155

def state_1568160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 23)))
def hex_1568160 : String := "40424307410944090943074107444043064209070607420907"
theorem cover_1568160 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568160 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1568160)
  decide +kernel
#print axioms cover_1568160

def state_1568186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 10)))
def hex_1568186 : String := "41434042094441090A41090A090943404244410905410943400A060744064143400A060A43060A4209064042090A09"
theorem cover_1568186 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568186 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1568186)
  decide +kernel
#print axioms cover_1568186

def state_1568233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 11)))
def hex_1568233 : String := "410943444042094143440A09094344400A064042090A060A090909"
theorem cover_1568233 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568233 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 27) (hex := hex_1568233)
  decide +kernel
#print axioms cover_1568233
end Mub6.Numerical.CircleFullD0.Forest
