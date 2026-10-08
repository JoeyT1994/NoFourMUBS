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
def state_1023076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 251) else (if j.val < 3 then 150 else (if j.val < 4 then 207 else 204)))
def hex_1023076 : String := "40440A0A444342414044050505400644050541404443070A074409430505400A44094309090A434241054006054140070540440A074443050A050A"
theorem cover_1023076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023076 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_1023076)
  decide +kernel
#print axioms cover_1023076

def state_1023135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 125) else (if j.val < 3 then 151 else (if j.val < 4 then 207 else 204)))
def hex_1023135 : String := "41400744430742410740070A0707404443070A0744434241400744070740440707440943070907420A0A43424107400744070707420A07"
theorem cover_1023135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023135 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1023135)
  decide +kernel
#print axioms cover_1023135

def state_1023190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 125) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 205)))
def hex_1023190 : String := "4342414007054044070744430505050742414044070708404443420A070A094443420541054007050808410740074443070707"
theorem cover_1023190 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023190 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1023190)
  decide +kernel
#print axioms cover_1023190

def state_1023243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 125) else (if j.val < 3 then 75 else (if j.val < 4 then 206 else 204)))
def hex_1023243 : String := "424105404443054205090505414044430606070640444308420906434205064241054044070505074409430506"
theorem cover_1023243 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023243 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_1023243)
  decide +kernel
#print axioms cover_1023243

def state_1023289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 125) else (if j.val < 3 then 150 else (if j.val < 4 then 207 else 204)))
def hex_1023289 : String := "4140444305050505404443420509420509430508440905"
theorem cover_1023289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023289 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 23) (hex := hex_1023289)
  decide +kernel
#print axioms cover_1023289

def state_1023313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 250) else (if j.val < 3 then 151 else (if j.val < 4 then 207 else 204)))
def hex_1023313 : String := "404443060643060606"
theorem cover_1023313 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023313 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1023313)
  decide +kernel
#print axioms cover_1023313
end Mub6.Numerical.CircleFullD0.Forest
