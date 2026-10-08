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
def state_136116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 54 else 54)))
def hex_136116 : String := "8D"
theorem cover_136116 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136116 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_136116)
  decide +kernel
#print axioms cover_136116

def state_136117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 54 else 55)))
def hex_136117 : String := "40414244430706064443070606094142448D430706448D0742448D09448D09"
theorem cover_136117 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136117 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 31) (hex := hex_136117)
  decide +kernel
#print axioms cover_136117

def state_136148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 55 else 27)))
def hex_136148 : String := "4440414243440806060A4243440806060A4142438D440806438D0A42438D07438D0A4006410606"
theorem cover_136148 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136148 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 39) (hex := hex_136148)
  decide +kernel
#print axioms cover_136148

def state_136190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 26)))
def hex_136190 : String := "424143070A434440050607440A400542410705054107430505"
theorem cover_136190 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136190 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_136190)
  decide +kernel
#print axioms cover_136190

def state_136215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 26)))
def hex_136215 : String := "424143074409074344060744404206060640424143070A43064405054107054241430644060706410706410743074409400507"
theorem cover_136215 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136215 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_136215)
  decide +kernel
#print axioms cover_136215

def state_136266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 27)))
def hex_136266 : String := "404241074307444007070707424107430744400742410743074440070707070707"
theorem cover_136266 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136266 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 33) (hex := hex_136266)
  decide +kernel
#print axioms cover_136266

def state_136300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 26)))
def hex_136300 : String := "400A42410A440A43400A424109440A43400A424106060A0A0A0A0A"
theorem cover_136300 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136300 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 27) (hex := hex_136300)
  decide +kernel
#print axioms cover_136300

def state_136328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 27)))
def hex_136328 : String := "42410A43440A40064206060A0A"
theorem cover_136328 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136328 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_136328)
  decide +kernel
#print axioms cover_136328

def state_136343 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 46 else (if j.val < 4 then 27 else 27)))
def hex_136343 : String := "4344400707070A"
theorem cover_136343 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136343 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_136343)
  decide +kernel
#print axioms cover_136343

def state_136353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 45) else (if j.val < 3 then 46 else (if j.val < 4 then 54 else 54)))
def hex_136353 : String := "42410A43440A400542410705050A0A"
theorem cover_136353 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136353 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_136353)
  decide +kernel
#print axioms cover_136353
end Mub6.Numerical.CircleFullPrototype.Forest
