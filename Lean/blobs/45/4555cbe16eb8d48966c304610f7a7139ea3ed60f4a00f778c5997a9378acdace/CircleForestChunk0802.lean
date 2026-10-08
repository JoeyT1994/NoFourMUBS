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
def state_1493194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 44) else (if j.val < 3 then 39 else (if j.val < 4 then 101 else 60)))
def hex_1493194 : String := "414207444007430707074207440707"
theorem cover_1493194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493194 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1493194)
  decide +kernel
#print axioms cover_1493194

def state_1493209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 39 else (if j.val < 4 then 50 else 61)))
def hex_1493209 : String := "404305074341420505420505410707"
theorem cover_1493209 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493209 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1493209)
  decide +kernel
#print axioms cover_1493209

def state_1493224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 30)))
def hex_1493224 : String := "420744400741070707"
theorem cover_1493224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493224 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1493224)
  decide +kernel
#print axioms cover_1493224

def state_1493233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 45) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 30)))
def hex_1493233 : String := "434207444041070741434207440A40050A070A40074143420505074307074207440707"
theorem cover_1493233 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493233 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_1493233)
  decide +kernel
#print axioms cover_1493233

def state_1493268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 31)))
def hex_1493268 : String := "40074143420605074342070507"
theorem cover_1493268 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493268 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1493268)
  decide +kernel
#print axioms cover_1493268

def state_1493281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 15)))
def hex_1493281 : String := "43424440074143420A440905070940054143050609444009414342090542440940050A090905420744400741434207440940070707094007410707"
theorem cover_1493281 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493281 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_1493281)
  decide +kernel
#print axioms cover_1493281

def state_1493343 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 15)))
def hex_1493343 : String := "44434041094206440A06064041060A0606"
theorem cover_1493343 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493343 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1493343)
  decide +kernel
#print axioms cover_1493343

def state_1493362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 30)))
def hex_1493362 : String := "4041424443084041090808434005060608424408430840410505060808"
theorem cover_1493362 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493362 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1493362)
  decide +kernel
#print axioms cover_1493362

def state_1493393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 19 else (if j.val < 4 then 49 else 30)))
def hex_1493393 : String := "424443404109420A08064041090A0606444308404142444308404108080809084244084308400A06080843400506404142050542050506"
theorem cover_1493393 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493393 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_1493393)
  decide +kernel
#print axioms cover_1493393
end Mub6.Numerical.CircleFullD0.Forest
