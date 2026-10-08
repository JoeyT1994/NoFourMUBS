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
def state_273629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 8)))
def hex_273629 : String := "41430A4244090A444041430642094406064306090940410A430A420A4440410606060A0A43420944060642094409404143420706420944084007060909"
theorem cover_273629 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273629 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_273629)
  decide +kernel
#print axioms cover_273629

def state_273690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 9)))
def hex_273690 : String := "4041430A4442404105444307420A410507070A4041054443050505410A44430A420A404105070A0A0A4307444207414007070707410A430744420740070707"
theorem cover_273690 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273690 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 63) (hex := hex_273690)
  decide +kernel
#print axioms cover_273690

def state_273754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 8)))
def hex_273754 : String := "404143084244400841424306440840050606084041050841424305050542430844084008410606080808414306424406404106060606430642440640080606"
theorem cover_273754 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273754 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 63) (hex := hex_273754)
  decide +kernel
#print axioms cover_273754

def state_273817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 9)))
def hex_273817 : String := "404143054244400541054244430540054105060505050543074244414007070707440807414306424440410606060A0643064244404142070607060706"
theorem cover_273817 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273817 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 61) (hex := hex_273817)
  decide +kernel
#print axioms cover_273817
end Mub6.Numerical.CircleFullPrototype.Forest
