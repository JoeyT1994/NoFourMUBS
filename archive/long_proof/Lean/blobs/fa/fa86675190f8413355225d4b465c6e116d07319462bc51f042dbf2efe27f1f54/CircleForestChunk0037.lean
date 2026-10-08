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
def state_8741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 54) else (if j.val < 3 then 55 else (if j.val < 4 then 35 else 36)))
def hex_8741 : String := "424441434008084041070741084244080707434042449A070742440509054042449A070742449A43410707410707440A074143070743070744410743050707"
theorem cover_8741 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8741 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_8741)
  decide +kernel
#print axioms cover_8741

def state_8804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 54) else (if j.val < 3 then 55 else (if j.val < 4 then 35 else 36)))
def hex_8804 : String := "42444143084008084305404244054305410609440543050A054108430940444209070744420943050A09444108054107430507"
theorem cover_8804 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8804 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_8804)
  decide +kernel
#print axioms cover_8804

def state_8855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 55) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 36)))
def hex_8855 : String := "420943404142050505054041424443054041420906064142090505094406070941424405090509"
theorem cover_8855 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8855 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_8855)
  decide +kernel
#print axioms cover_8855

def state_8894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 37)))
def hex_8894 : String := "414243094044410609090943400744080740074442410609070709"
theorem cover_8894 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8894 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_8894)
  decide +kernel
#print axioms cover_8894

def state_8921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 19)))
def hex_8921 : String := "4309404441420907090709"
theorem cover_8921 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8921 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_8921)
  decide +kernel
#print axioms cover_8921

def state_8935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 8)))
def hex_8935 : String := "4043444109424005090905054344410642060941064206404344410642060905050606"
theorem cover_8935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8935 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_8935)
  decide +kernel
#print axioms cover_8935
end Mub6.Numerical.CircleFullPrototype.Forest
