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
def state_284899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 58) else (if j.val < 3 then 37 else (if j.val < 4 then 57 else 48)))
def hex_284899 : String := "444043064106060640430641060606"
theorem cover_284899 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284899 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_284899)
  decide +kernel
#print axioms cover_284899

def state_284914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 59) else (if j.val < 3 then 18 else (if j.val < 4 then 57 else 48)))
def hex_284914 : String := "424440434142050505050540074306054440060506"
theorem cover_284914 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284914 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_284914)
  decide +kernel
#print axioms cover_284914

def state_284935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 49)))
def hex_284935 : String := "4341424007060642070641424007444306414206060607404443060906064207400706"
theorem cover_284935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284935 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_284935)
  decide +kernel
#print axioms cover_284935

def state_284970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 24)))
def hex_284970 : String := "44430641420506054306410606"
theorem cover_284970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284970 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_284970)
  decide +kernel
#print axioms cover_284970

def state_284985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 48)))
def hex_284985 : String := "4142434405404143424440070507094208094342070A0A054405400A054344400A0540094109054405094243440540070505434405400A0505"
theorem cover_284985 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284985 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_284985)
  decide +kernel
#print axioms cover_284985

def state_285042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 49)))
def hex_285042 : String := "414243404441090707444108434207400605080708094207434007444243060506070A"
theorem cover_285042 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285042 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_285042)
  decide +kernel
#print axioms cover_285042

def state_285077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 24)))
def hex_285077 : String := "4405414243404405080508434009060942434044050705054340060505"
theorem cover_285077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285077 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_285077)
  decide +kernel
#print axioms cover_285077

def state_285106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 19 else (if j.val < 4 then 14 else 24)))
def hex_285106 : String := "4340444243060606060640444241090A09094442050642410943060506"
theorem cover_285106 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285106 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_285106)
  decide +kernel
#print axioms cover_285106
end Mub6.Numerical.CircleFullPrototype.Forest
