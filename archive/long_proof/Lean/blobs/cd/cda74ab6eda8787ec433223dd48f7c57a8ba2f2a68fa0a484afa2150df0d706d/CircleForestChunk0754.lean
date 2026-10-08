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
def state_1481919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 65) else (if j.val < 3 then 76 else (if j.val < 4 then 206 else 209)))
def hex_1481919 : String := "42410707410A400A43094442090A09"
theorem cover_1481919 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481919 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1481919)
  decide +kernel
#print axioms cover_1481919

def state_1481935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 65) else (if j.val < 3 then 76 else (if j.val < 4 then 207 else 208)))
def hex_1481935 : String := "42418005418040434442050642418005410A40064306054405084344420507424180054180404344050A0743440507074405420507"
theorem cover_1481935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481935 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_1481935)
  decide +kernel
#print axioms cover_1481935

def state_1481988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 65) else (if j.val < 3 then 76 else (if j.val < 4 then 207 else 209)))
def hex_1481988 : String := "42084180400843444241804005054180400A430A444205070A42080A44420841804008434407080708"
theorem cover_1481988 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481988 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 41) (hex := hex_1481988)
  decide +kernel
#print axioms cover_1481988

def state_1482030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 65) else (if j.val < 3 then 76 else (if j.val < 4 then 206 else 104)))
def hex_1482030 : String := "44420941804043084408090809"
theorem cover_1482030 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482030 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1482030)
  decide +kernel
#print axioms cover_1482030

def state_1482044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 65) else (if j.val < 3 then 76 else (if j.val < 4 then 207 else 208)))
def hex_1482044 : String := "424180054180404344420507424109054180404307074307074442050742050743440809440A420507"
theorem cover_1482044 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482044 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_1482044)
  decide +kernel
#print axioms cover_1482044

def state_1482085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 65) else (if j.val < 3 then 76 else (if j.val < 4 then 207 else 209)))
def hex_1482085 : String := "4209418040434442094109404309440709090944420641064043440706060606430906"
theorem cover_1482085 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482085 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_1482085)
  decide +kernel
#print axioms cover_1482085
end Mub6.Numerical.CircleFullD0.Forest
