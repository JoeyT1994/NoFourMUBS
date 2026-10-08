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
def state_150251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 54 else 54)))
def hex_150251 : String := "408D414205434409050942430A440505434440410606060A44094041420509420A43444041090A090A44094041050A0541054205430909"
theorem cover_150251 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150251 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 55) (hex := hex_150251)
  decide +kernel
#print axioms cover_150251

def state_150306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 54 else 55)))
def hex_150306 : String := "404142440505448D0742448D0A448D43084006084142054443050508420A44430A40414205080A0A08"
theorem cover_150306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150306 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_150306)
  decide +kernel
#print axioms cover_150306

def state_150348 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 55 else 54)))
def hex_150348 : String := "404142430505438D0942438D07438D4407400607414205094243440505074344094041094207090907"
theorem cover_150348 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150348 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_150348)
  decide +kernel
#print axioms cover_150348

def state_150389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 55 else 55)))
def hex_150389 : String := "40414243050543448D06064243448D060643448D06064142054305054243050543444041054205434440410506050506410542054305054006054440060506"
theorem cover_150389 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150389 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 63) (hex := hex_150389)
  decide +kernel
#print axioms cover_150389

def state_150452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 27)))
def hex_150452 : String := "4142054305054243050543444041420509420A430A0941050A4041050A0544404105420509054041054205434405050505"
theorem cover_150452 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150452 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_150452)
  decide +kernel
#print axioms cover_150452
end Mub6.Numerical.CircleFullPrototype.Forest
