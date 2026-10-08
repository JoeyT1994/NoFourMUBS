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
def state_1508709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 61)))
def hex_1508709 : String := "43424440410707060644404105054143054206054305420A05054207444041434207050743070741434206440A05060A4041050506"
theorem cover_1508709 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508709 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_1508709)
  decide +kernel
#print axioms cover_1508709

def state_1508762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 44) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 61)))
def hex_1508762 : String := "41064342064440410608060606"
theorem cover_1508762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508762 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1508762)
  decide +kernel
#print axioms cover_1508762

def state_1508779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 41 else (if j.val < 4 then 102 else 60)))
def hex_1508779 : String := "42440840050808"
theorem cover_1508779 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508779 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1508779)
  decide +kernel
#print axioms cover_1508779

def state_1508788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 82 else (if j.val < 4 then 103 else 120)))
def hex_1508788 : String := "404143088843084408420A06410808"
theorem cover_1508788 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508788 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1508788)
  decide +kernel
#print axioms cover_1508788

def state_1508804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 88) else (if j.val < 3 then 82 else (if j.val < 4 then 103 else 121)))
def hex_1508804 : String := "4143424440050805058843424408050542444041434207054207440A05430A0A4143080A0A4041050541430542050543050A44404105060805"
theorem cover_1508804 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508804 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_1508804)
  decide +kernel
#print axioms cover_1508804

def state_1508861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 88) else (if j.val < 3 then 82 else (if j.val < 4 then 103 else 121)))
def hex_1508861 : String := "414308884308424408404143050A0A0808"
theorem cover_1508861 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508861 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_1508861)
  decide +kernel
#print axioms cover_1508861

def state_1508878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 83 else (if j.val < 4 then 103 else 60)))
def hex_1508878 : String := "44084041050808"
theorem cover_1508878 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508878 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1508878)
  decide +kernel
#print axioms cover_1508878

def state_1508885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 60)))
def hex_1508885 : String := "4308424440410806084041430842440A4041430507070A4408054308420A0841080808"
theorem cover_1508885 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508885 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 35) (hex := hex_1508885)
  decide +kernel
#print axioms cover_1508885

def state_1508920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 60)))
def hex_1508920 : String := "41430842440840410808080808"
theorem cover_1508920 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508920 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1508920)
  decide +kernel
#print axioms cover_1508920
end Mub6.Numerical.CircleFullD0.Forest
