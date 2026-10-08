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
def state_1485386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 17) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 53)))
def hex_1485386 : String := "414008434442054140434442054140434407060606050808064005054206410640080644420541060506404305054344050505"
theorem cover_1485386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485386 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 51) (hex := hex_1485386)
  decide +kernel
#print axioms cover_1485386

def state_1485439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 34) else (if j.val < 3 then 39 else (if j.val < 4 then 52 else 53)))
def hex_1485439 : String := "43444241400A430A0740430A084344070A440707070A4442080708"
theorem cover_1485439 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485439 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1485439)
  decide +kernel
#print axioms cover_1485439

def state_1485467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 34) else (if j.val < 3 then 39 else (if j.val < 4 then 104 else 53)))
def hex_1485467 : String := "4442414043440742410640070607074344074206060740434407424107050707434407424107050707074241400A0640430A0843444206070606410707"
theorem cover_1485467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485467 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1485467)
  decide +kernel
#print axioms cover_1485467

def state_1485528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 34) else (if j.val < 3 then 39 else (if j.val < 4 then 105 else 53)))
def hex_1485528 : String := "444241070707420807"
theorem cover_1485528 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485528 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1485528)
  decide +kernel
#print axioms cover_1485528

def state_1485538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 35) else (if j.val < 3 then 39 else (if j.val < 4 then 52 else 53)))
def hex_1485538 : String := "43444241400943440542050705050742080A440908"
theorem cover_1485538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485538 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_1485538)
  decide +kernel
#print axioms cover_1485538

def state_1485559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 35) else (if j.val < 3 then 39 else (if j.val < 4 then 52 else 53)))
def hex_1485559 : String := "434442414043440542050705434405420507050507424140434442050708084344420507420941070744420507420606400505410707444205074241080507"
theorem cover_1485559 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485559 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1485559)
  decide +kernel
#print axioms cover_1485559
end Mub6.Numerical.CircleFullD0.Forest
