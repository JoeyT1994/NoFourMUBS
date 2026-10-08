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
def state_1482120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 32) else (if j.val < 3 then 77 else (if j.val < 4 then 103 else 104)))
def hex_1482120 : String := "41804043444241804006430607070A440742410A400A430A440707074344084241054043080A08054407424180404344070A07434407090707"
theorem cover_1482120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482120 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_1482120)
  decide +kernel
#print axioms cover_1482120

def state_1482177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 32) else (if j.val < 3 then 38 else (if j.val < 4 then 103 else 105)))
def hex_1482177 : String := "4241404309060640434442070A07084309064105400A430544424105400A060505"
theorem cover_1482177 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482177 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1482177)
  decide +kernel
#print axioms cover_1482177

def state_1482210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 32) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 52)))
def hex_1482210 : String := "43440809444241094043094442064106404308060606094140430544070508404308440742410640430806060708420641054043050606"
theorem cover_1482210 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482210 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_1482210)
  decide +kernel
#print axioms cover_1482210

def state_1482268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 33) else (if j.val < 3 then 38 else (if j.val < 4 then 102 else 104)))
def hex_1482268 : String := "42414043440609444205064207410A0643094442050809400643440509440542054109054140060806"
theorem cover_1482268 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482268 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1482268)
  decide +kernel
#print axioms cover_1482268

def state_1482309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 33) else (if j.val < 3 then 38 else (if j.val < 4 then 102 else 105)))
def hex_1482309 : String := "42414043090A094043094442050A0709410A400A430A44424109400608080A"
theorem cover_1482309 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482309 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_1482309)
  decide +kernel
#print axioms cover_1482309
end Mub6.Numerical.CircleFullD0.Forest
