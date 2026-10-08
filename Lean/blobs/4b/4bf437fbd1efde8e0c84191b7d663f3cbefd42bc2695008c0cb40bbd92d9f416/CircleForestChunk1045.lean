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
def state_1551119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 57) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 40)))
def hex_1551119 : String := "424143054440424144070507410507420841050805434408054440070840424143050707410507424143050508410508410543094440090605"
theorem cover_1551119 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551119 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1551119)
  decide +kernel
#print axioms cover_1551119

def state_1551176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 57) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 41)))
def hex_1551176 : String := "404241054305444006424105430506050505424105430544050505"
theorem cover_1551176 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551176 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_1551176)
  decide +kernel
#print axioms cover_1551176

def state_1551205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 57) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 40)))
def hex_1551205 : String := "4207414407434006050607"
theorem cover_1551205 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551205 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1551205)
  decide +kernel
#print axioms cover_1551205

def state_1551216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 57) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 40)))
def hex_1551216 : String := "4241444340070A07434042060A0A0A4407434007420707074144434042070A0A0743050A44074340420741050742410A0741050A07"
theorem cover_1551216 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551216 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_1551216)
  decide +kernel
#print axioms cover_1551216

def state_1551269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 57) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 41)))
def hex_1551269 : String := "4042064106434440064241050705050642414305064344404241060741050742410A0A41050A05440A06410543440505440A05"
theorem cover_1551269 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551269 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1551269)
  decide +kernel
#print axioms cover_1551269

def state_1551321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 56) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 20)))
def hex_1551321 : String := "4305444042410544430508050542050505"
theorem cover_1551321 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551321 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_1551321)
  decide +kernel
#print axioms cover_1551321

def state_1551339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 57) else (if j.val < 3 then 53 else (if j.val < 4 then 40 else 20)))
def hex_1551339 : String := "444009424105090505"
theorem cover_1551339 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551339 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1551339)
  decide +kernel
#print axioms cover_1551339
end Mub6.Numerical.CircleFullD0.Forest
