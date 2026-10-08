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
def state_1628127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 25 else 19)))
def hex_1628127 : String := "414340440A09444241080A41080A420A410909400A44080A43400A44420A0A0A0A"
theorem cover_1628127 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628127 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_1628127)
  decide +kernel
#print axioms cover_1628127

def state_1628160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 4)))
def hex_1628160 : String := "4044054105420706444105420806414207054243400707074340440508440841080A08"
theorem cover_1628160 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628160 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1628160)
  decide +kernel
#print axioms cover_1628160

def state_1628198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 4)))
def hex_1628198 : String := "4442074341400A44430A0A0A0A070A"
theorem cover_1628198 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628198 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1628198)
  decide +kernel
#print axioms cover_1628198

def state_1628215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 24 else (if j.val < 4 then 12 else 8)))
def hex_1628215 : String := "434140070740070707"
theorem cover_1628215 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628215 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1628215)
  decide +kernel
#print axioms cover_1628215

def state_1628227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 8)))
def hex_1628227 : String := "444342414007070741400A44434241400A440A070A41400A44D343420A0A0A064207410A0643420A410A0A0A400644060A4207410A0643420A410A0A0A"
theorem cover_1628227 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628227 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 61) (hex := hex_1628227)
  decide +kernel
#print axioms cover_1628227

def state_1628291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 50 else (if j.val < 4 then 48 else 16)))
def hex_1628291 : String := "41400707400707"
theorem cover_1628291 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628291 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_1628291)
  decide +kernel
#print axioms cover_1628291

def state_1628303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 102 else (if j.val < 4 then 96 else 32)))
def hex_1628303 : String := "414044434207D30707444342050507074044430807074443050705"
theorem cover_1628303 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628303 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 27) (hex := hex_1628303)
  decide +kernel
#print axioms cover_1628303

def state_1628331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 104) else (if j.val < 3 then 103 else (if j.val < 4 then 96 else 32)))
def hex_1628331 : String := "4044D3434241400A0508414044D30A44D30508420741400A44D3070A44D3434205054207414044D307054044D30505"
theorem cover_1628331 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628331 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_1628331)
  decide +kernel
#print axioms cover_1628331
end Mub6.Numerical.CircleFullD0.Forest
