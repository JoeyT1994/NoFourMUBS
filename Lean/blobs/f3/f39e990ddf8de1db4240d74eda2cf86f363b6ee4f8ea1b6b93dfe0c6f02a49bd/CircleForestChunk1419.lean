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
def state_1641283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 98) else (if j.val < 3 then 59 else (if j.val < 4 then 51 else 40)))
def hex_1641283 : String := "43404442064105430608060640440542410543060541054340050605440806"
theorem cover_1641283 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641283 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1641283)
  decide +kernel
#print axioms cover_1641283

def state_1641315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 102 else 40)))
def hex_1641315 : String := "404442410643064008064143074008084307400744080742064143064007064307400707444206410643060A06"
theorem cover_1641315 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641315 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_1641315)
  decide +kernel
#print axioms cover_1641315

def state_1641361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 103 else 40)))
def hex_1641361 : String := "44420808424143060843404206440806064008A04143404405084408060843404408074442410643060841084307084206074008A0"
theorem cover_1641361 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641361 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_1641361)
  decide +kernel
#print axioms cover_1641361

def state_1641414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 103 else 40)))
def hex_1641414 : String := "4442410643060841430A08434044080A0608420641430640440606064306A0"
theorem cover_1641414 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641414 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_1641414)
  decide +kernel
#print axioms cover_1641414

def state_1641445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 59 else (if j.val < 4 then 51 else 41)))
def hex_1641445 : String := "4143064042064441090909064340420609064042444106430640420644410643060806060644414309400942060943094009A0094206440606"
theorem cover_1641445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641445 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 57) (hex := hex_1641445)
  decide +kernel
#print axioms cover_1641445

def state_1641502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 21)))
def hex_1641502 : String := "4206414309400906430940094442064106430640090606"
theorem cover_1641502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641502 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 23) (hex := hex_1641502)
  decide +kernel
#print axioms cover_1641502
end Mub6.Numerical.CircleFullD0.Forest
