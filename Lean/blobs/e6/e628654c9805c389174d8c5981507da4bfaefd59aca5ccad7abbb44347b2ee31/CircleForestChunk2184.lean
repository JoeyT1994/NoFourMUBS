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
def state_2604696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
def hex_2604696 : String := "4344404243440A09440A4109090A4243440A08440A080A400908444042440A4109070A42440A41080A0A400908"
theorem cover_2604696 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604696 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_2604696)
  decide +kernel
#print axioms cover_2604696

def state_2604741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_2604741 : String := "424344404143440A06440A070A4143440A420606440A070A4007414306070644400741440A070707434440410A050A4041090A41080A440A4007410907"
theorem cover_2604741 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604741 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_2604741)
  decide +kernel
#print axioms cover_2604741

def state_2604804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
def hex_2604804 : String := "43444344404142430605080A0A064440414205440A0542440A050A41050A404105420508410542050606444440410542050A05404105420543440705050505"
theorem cover_2604804 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604804 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_2604804)
  decide +kernel
#print axioms cover_2604804

def state_2604867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
def hex_2604867 : String := "4344424308440A0808084442440A080808"
theorem cover_2604867 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604867 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_2604867)
  decide +kernel
#print axioms cover_2604867

def state_2604884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_2604884 : String := "4243444143440A400606440A4042070A070A41430607064441440A07070743440A41080A44414244400A430A440A0A0A440A0842440A070A410807"
theorem cover_2604884 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604884 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_2604884)
  decide +kernel
#print axioms cover_2604884
end Mub6.Numerical.CircleFullD0.Forest
