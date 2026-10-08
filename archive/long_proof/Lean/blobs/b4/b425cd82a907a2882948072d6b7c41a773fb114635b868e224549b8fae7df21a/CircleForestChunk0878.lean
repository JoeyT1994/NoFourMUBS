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
def state_1511333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 60)))
def hex_1511333 : String := "42440A404143420A440A4041430509094143080A0A0A0A0A44400608404143424406400508064244094009414309090909430609414308420A0808"
theorem cover_1511333 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511333 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_1511333)
  decide +kernel
#print axioms cover_1511333

def state_1511392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 41 else (if j.val < 4 then 105 else 60)))
def hex_1511392 : String := "420A44404109060A40414342440940090A094209094309094143420A4408404143080908080A0A"
theorem cover_1511392 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511392 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_1511392)
  decide +kernel
#print axioms cover_1511392

def state_1511431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 60)))
def hex_1511431 : String := "41434244400A0A404188430A0A0644084041880808424405064440414388050A0A404143884206444041060A060643420A080A41060A43420A080A"
theorem cover_1511431 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511431 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_1511431)
  decide +kernel
#print axioms cover_1511431

def state_1511494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 82 else (if j.val < 4 then 104 else 61)))
def hex_1511494 : String := "4440414342050542064440050605434244400741060705054207444041050741430506430507054106434206444005060506400506"
theorem cover_1511494 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511494 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_1511494)
  decide +kernel
#print axioms cover_1511494

def state_1511547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 83 else (if j.val < 4 then 104 else 61)))
def hex_1511547 : String := "4440410505414305424440050605054305424440410543054205054106430506050505"
theorem cover_1511547 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511547 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_1511547)
  decide +kernel
#print axioms cover_1511547
end Mub6.Numerical.CircleFullD0.Forest
