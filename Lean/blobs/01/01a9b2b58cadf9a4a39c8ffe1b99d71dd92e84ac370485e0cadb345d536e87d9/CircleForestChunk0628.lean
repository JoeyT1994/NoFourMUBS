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
def state_1339671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 59 else 97) else (if j.val < 3 then 44 else (if j.val < 4 then 34 else 45)))
def hex_1339671 : String := "44424043410909410944064206090909424043410A44424008060942080A4144420A090A4442404308410A060609420A4043410A08410A080909400909"
theorem cover_1339671 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339671 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1339671)
  decide +kernel
#print axioms cover_1339671

def state_1339732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 59 else 48) else (if j.val < 3 then 44 else (if j.val < 4 then 35 else 45)))
def hex_1339732 : String := "41444207084240070709444240434107440542060505070942404341444207050A44424005070542404305050A40050905430907400509"
theorem cover_1339732 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339732 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_1339732)
  decide +kernel
#print axioms cover_1339732

def state_1339787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 48) else (if j.val < 3 then 45 else (if j.val < 4 then 17 else 22)))
def hex_1339787 : String := "444005094043410542440506050509"
theorem cover_1339787 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339787 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1339787)
  decide +kernel
#print axioms cover_1339787

def state_1339804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 49) else (if j.val < 3 then 44 else (if j.val < 4 then 17 else 44)))
def hex_1339804 : String := "40434142440640050605060506"
theorem cover_1339804 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339804 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1339804)
  decide +kernel
#print axioms cover_1339804

def state_1339818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 49) else (if j.val < 3 then 44 else (if j.val < 4 then 17 else 45)))
def hex_1339818 : String := "4341444240430805434144060806414405420605064005434144090707054208400543074105074442080A0841054405420805"
theorem cover_1339818 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339818 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1339818)
  decide +kernel
#print axioms cover_1339818

def state_1339870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 59 else 49) else (if j.val < 3 then 44 else (if j.val < 4 then 34 else 45)))
def hex_1339870 : String := "4144420609424043414442060908084144420609420840080944060843054109064043074109090944064206400706"
theorem cover_1339870 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339870 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_1339870)
  decide +kernel
#print axioms cover_1339870
end Mub6.Numerical.CircleFullD0.Forest
