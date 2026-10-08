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
def state_1000091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 39 else (if j.val < 4 then 27 else 43)))
def hex_1000091 : String := "41430640444243050905424309090944424305410605050643054005440542414305050505"
theorem cover_1000091 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000091 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1000091)
  decide +kernel
#print axioms cover_1000091

def state_1000128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 21)))
def hex_1000128 : String := "444241430A0707410A05424143060843404407424106070606404407420741080707410643054044050606"
theorem cover_1000128 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000128 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1000128)
  decide +kernel
#print axioms cover_1000128

def state_1000175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 22)))
def hex_1000175 : String := "434205404441074307070744410543420540074443070505050505"
theorem cover_1000175 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000175 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 27) (hex := hex_1000175)
  decide +kernel
#print axioms cover_1000175

def state_1000204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 16 else (if j.val < 4 then 26 else 22)))
def hex_1000204 : String := "400644434105060505"
theorem cover_1000204 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000204 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1000204)
  decide +kernel
#print axioms cover_1000204

def state_1000214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 22)))
def hex_1000214 : String := "44434142064006444307060706064341070A0A"
theorem cover_1000214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000214 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_1000214)
  decide +kernel
#print axioms cover_1000214

def state_1000237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 52 else 44)))
def hex_1000237 : String := "404443410506064305054443050505"
theorem cover_1000237 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000237 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1000237)
  decide +kernel
#print axioms cover_1000237

def state_1000253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 44)))
def hex_1000253 : String := "4443410742400644060A400744C60741070A430707"
theorem cover_1000253 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000253 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1000253)
  decide +kernel
#print axioms cover_1000253

def state_1000277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 88)))
def hex_1000277 : String := "4205400744C607"
theorem cover_1000277 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000277 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1000277)
  decide +kernel
#print axioms cover_1000277

def state_1000284 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 109) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 88)))
def hex_1000284 : String := "424044C64341050A0A44C64305054044C643070744C64342410540074443070505074241054044430705050541074007444307410542050707"
theorem cover_1000284 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000284 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_1000284)
  decide +kernel
#print axioms cover_1000284
end Mub6.Numerical.CircleFullD0.Forest
