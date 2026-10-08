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
def state_1470095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
def hex_1470095 : String := "43444008410809400841054405054440084108430808404105084108430808"
theorem cover_1470095 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470095 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 31) (hex := hex_1470095)
  decide +kernel
#print axioms cover_1470095

def state_1470129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
def hex_1470129 : String := "40094241434409400942410A0909440740420709424143440740074207410A0707074143094407400742414344070907070943090743090709"
theorem cover_1470129 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470129 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 16) (count := 57) (hex := hex_1470129)
  decide +kernel
#print axioms cover_1470129

def state_1470187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 5)))
def hex_1470187 : String := "4244414309060A0A44090A"
theorem cover_1470187 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470187 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1470187)
  decide +kernel
#print axioms cover_1470187

def state_1470202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 10)))
def hex_1470202 : String := "400A4244410A09410A0A0A"
theorem cover_1470202 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470202 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1470202)
  decide +kernel
#print axioms cover_1470202

def state_1470214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 10)))
def hex_1470214 : String := "424441060706440908"
theorem cover_1470214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470214 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1470214)
  decide +kernel
#print axioms cover_1470214

def state_1470224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 10)))
def hex_1470224 : String := "4441434042060A424106430A44060641430A060A06434007420709074143060643400A42440A0A0A400642064443060606"
theorem cover_1470224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470224 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_1470224)
  decide +kernel
#print axioms cover_1470224

def state_1470273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 10)))
def hex_1470273 : String := "4441434009420A0940064241064344090606414309060943094009424309070941430A0643094006424443090606440909"
theorem cover_1470273 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470273 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_1470273)
  decide +kernel
#print axioms cover_1470273

def state_1470322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 10)))
def hex_1470322 : String := "430A40420709424407430A4140074205070544094309414009420A0909"
theorem cover_1470322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470322 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1470322)
  decide +kernel
#print axioms cover_1470322
end Mub6.Numerical.CircleFullD0.Forest
