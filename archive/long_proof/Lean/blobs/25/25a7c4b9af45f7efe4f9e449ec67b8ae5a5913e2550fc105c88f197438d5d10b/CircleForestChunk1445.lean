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
def state_1647492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 40)))
def hex_1647492 : String := "40434408424143400808084340420808A00841434008A00843404408420806A040060808434409A009"
theorem cover_1647492 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647492 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_1647492)
  decide +kernel
#print axioms cover_1647492

def state_1647534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 101) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 40)))
def hex_1647534 : String := "43444209414340060906064241434042440841430A080A44080AA04008094340424409050A0509414340440606A0400609434006A0064408420906"
theorem cover_1647534 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647534 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_1647534)
  decide +kernel
#print axioms cover_1647534

def state_1647593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 101) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 40)))
def hex_1647593 : String := "434409A009"
theorem cover_1647593 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647593 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1647593)
  decide +kernel
#print axioms cover_1647593

def state_1647604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 200) else (if j.val < 3 then 118 else (if j.val < 4 then 104 else 82)))
def hex_1647604 : String := "43404244084143060843404206080608440841430908434009A04008A0A040420808A0"
theorem cover_1647604 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647604 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1647604)
  decide +kernel
#print axioms cover_1647604

def state_1647639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 201) else (if j.val < 3 then 118 else (if j.val < 4 then 104 else 82)))
def hex_1647639 : String := "4340424441434008080843400A05084143400A050A0A4441434008A0080A41430A0A0AA0404244080A44080AA0"
theorem cover_1647639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647639 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_1647639)
  decide +kernel
#print axioms cover_1647639

def state_1647684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 118 else (if j.val < 4 then 104 else 83)))
def hex_1647684 : String := "4143404442410643064009060909A040444241080A41434008A0080A424143060A0A09A0434044424143050A05410905050540440A0AA0"
theorem cover_1647684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647684 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1647684)
  decide +kernel
#print axioms cover_1647684
end Mub6.Numerical.CircleFullD0.Forest
