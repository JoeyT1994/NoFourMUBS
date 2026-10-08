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
def state_48544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
def hex_48544 : String := "414308444240050540434105050543080A08434442064006410843080608444206404105064143444205050505430644420505054206404105054105430805"
theorem cover_48544 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48544 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_48544)
  decide +kernel
#print axioms cover_48544

def state_48608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
def hex_48608 : String := "44400A41424344070907094243440A09440A40090A0909"
theorem cover_48608 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48608 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_48608)
  decide +kernel
#print axioms cover_48608

def state_48633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
def hex_48633 : String := "4142434407400A074405434041050507400505430A44054243400A054005054309400A0542430A44410505414340050505430A080A"
theorem cover_48633 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48633 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_48633)
  decide +kernel
#print axioms cover_48633

def state_48686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
def hex_48686 : String := "4107424344074041070A410742430A0707440740410543424405050505410743074244050505430A44074041050541054243070505"
theorem cover_48686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48686 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_48686)
  decide +kernel
#print axioms cover_48686

def state_48743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 5)))
def hex_48743 : String := "09"
theorem cover_48743 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48743 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_48743)
  decide +kernel
#print axioms cover_48743
end Mub6.Numerical.CircleFullPrototype.Forest
