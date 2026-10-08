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
def state_1520088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
def hex_1520088 : String := "4440424344070A0909424344410707410707440941420707074344090709400A42430A410A444207070A0A"
theorem cover_1520088 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520088 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_1520088)
  decide +kernel
#print axioms cover_1520088

def state_1520131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
def hex_1520131 : String := "44400942440707094042410A0A094241064344070A07410A07"
theorem cover_1520131 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520131 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1520131)
  decide +kernel
#print axioms cover_1520131

def state_1520156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
def hex_1520156 : String := "434440434409090943440907090A09"
theorem cover_1520156 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520156 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1520156)
  decide +kernel
#print axioms cover_1520156

def state_1520173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
def hex_1520173 : String := "44404109094142080908404142430A444009070A0A4243084409400907094142430744070707420807"
theorem cover_1520173 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520173 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1520173)
  decide +kernel
#print axioms cover_1520173

def state_1520214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
def hex_1520214 : String := "44400941424407070942080840414243444007070A440707094243440940094107070909414243440707070742434407070707"
theorem cover_1520214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520214 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1520214)
  decide +kernel
#print axioms cover_1520214

def state_1520265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
def hex_1520265 : String := "434409400907440909"
theorem cover_1520265 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520265 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1520265)
  decide +kernel
#print axioms cover_1520265

def state_1520279 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 6)))
def hex_1520279 : String := "43444041420707084142430708090840410707414207070744404142080508414244054307050542084408074041064207074106420807"
theorem cover_1520279 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520279 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 55) (hex := hex_1520279)
  decide +kernel
#print axioms cover_1520279

def state_1520334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 6)))
def hex_1520334 : String := "43440907440940410607410607"
theorem cover_1520334 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520334 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1520334)
  decide +kernel
#print axioms cover_1520334
end Mub6.Numerical.CircleFullD0.Forest
