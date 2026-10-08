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
def state_1022120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 124) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 202)))
def hex_1022120 : String := "434241404408074409430505400809410708424140444309094307420A074409430909404409434209090A094140070640440843070709"
theorem cover_1022120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022120 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 55) (hex := hex_1022120)
  decide +kernel
#print axioms cover_1022120

def state_1022176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 124) else (if j.val < 3 then 75 else (if j.val < 4 then 206 else 203)))
def hex_1022176 : String := "4241400744050540444307070744430542050743050507"
theorem cover_1022176 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022176 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1022176)
  decide +kernel
#print axioms cover_1022176

def state_1022199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 124) else (if j.val < 3 then 75 else (if j.val < 4 then 207 else 203)))
def hex_1022199 : String := "4241404407074443054205064305054044434241074007440905070A43070A444342050942090943420507420541074007440505410740074443060607"
theorem cover_1022199 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022199 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1022199)
  decide +kernel
#print axioms cover_1022199

def state_1022260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 124) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 101)))
def hex_1022260 : String := "44430909434241054044050505064241054044094305050506"
theorem cover_1022260 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022260 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1022260)
  decide +kernel
#print axioms cover_1022260

def state_1022287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 125) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 202)))
def hex_1022287 : String := "4308420909"
theorem cover_1022287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022287 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1022287)
  decide +kernel
#print axioms cover_1022287

def state_1022293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 125) else (if j.val < 3 then 75 else (if j.val < 4 then 206 else 203)))
def hex_1022293 : String := "4241404408430742410740074408050744430809434205074205410740070940084408430842090841400744080708"
theorem cover_1022293 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022293 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_1022293)
  decide +kernel
#print axioms cover_1022293
end Mub6.Numerical.CircleFullD0.Forest
