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
def state_2330246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_2330246 : String := "424344434440054142054344400506050505050505054344424344080505084205434005414442054340050805050505440805"
theorem cover_2330246 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330246 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 51) (hex := hex_2330246)
  decide +kernel
#print axioms cover_2330246

def state_2330306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 12)))
def hex_2330306 : String := "41084308444042444108430605084441430809434005060541080508400806"
theorem cover_2330306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330306 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_2330306)
  decide +kernel
#print axioms cover_2330306

def state_2330337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
def hex_2330337 : String := "414307440707434440424308444107420807090707094440424441430707434240444309050507400A07424005090A41094309050707400909"
theorem cover_2330337 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330337 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 57) (hex := hex_2330337)
  decide +kernel
#print axioms cover_2330337

def state_2330394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
def hex_2330394 : String := "09"
theorem cover_2330394 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330394 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2330394)
  decide +kernel
#print axioms cover_2330394

def state_2330398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 12)))
def hex_2330398 : String := "44400A43080909"
theorem cover_2330398 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330398 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2330398)
  decide +kernel
#print axioms cover_2330398

def state_2330405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 12)))
def hex_2330405 : String := "444043420544410A05050543424441084005064108054441094043420509054306094109400506424441400509050544410905054005430905"
theorem cover_2330405 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330405 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_2330405)
  decide +kernel
#print axioms cover_2330405

def state_2330462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 12)))
def hex_2330462 : String := "4144400A07094440430A0A434244410740430707070907424441074005090907400A430909"
theorem cover_2330462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330462 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_2330462)
  decide +kernel
#print axioms cover_2330462

def state_2330499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 13)))
def hex_2330499 : String := "420909"
theorem cover_2330499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330499 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2330499)
  decide +kernel
#print axioms cover_2330499
end Mub6.Numerical.CircleFullD0.Forest
