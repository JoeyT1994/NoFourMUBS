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
def state_1474709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 10 else 15)))
def hex_1474709 : String := "40414307424440410A430505070644400A070A43054244400506050507"
theorem cover_1474709 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474709 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1474709)
  decide +kernel
#print axioms cover_1474709

def state_1474738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 10 else 7)))
def hex_1474738 : String := "444041430742440807074307080740410A0707"
theorem cover_1474738 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474738 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1474738)
  decide +kernel
#print axioms cover_1474738

def state_1474768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 56)))
def hex_1474768 : String := "424041430805080808"
theorem cover_1474768 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474768 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1474768)
  decide +kernel
#print axioms cover_1474768

def state_1474781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 32 else (if j.val < 4 then 88 else 57)))
def hex_1474781 : String := "4442864041080608428640414344084286400A0744428606428640430606430808434408428608440842864041060608414307440842860808"
theorem cover_1474781 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474781 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_1474781)
  decide +kernel
#print axioms cover_1474781

def state_1474839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 32 else (if j.val < 4 then 89 else 114)))
def hex_1474839 : String := "420A404306060A"
theorem cover_1474839 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474839 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1474839)
  decide +kernel
#print axioms cover_1474839

def state_1474847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 64 else (if j.val < 4 then 89 else 115)))
def hex_1474847 : String := "404386414405070A43860A"
theorem cover_1474847 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474847 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1474847)
  decide +kernel
#print axioms cover_1474847

def state_1474860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 88) else (if j.val < 3 then 65 else (if j.val < 4 then 178 else 115)))
def hex_1474860 : String := "4144428606428640430606434108084144064286060844420A06428640430606430808"
theorem cover_1474860 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474860 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1474860)
  decide +kernel
#print axioms cover_1474860

def state_1474895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 88) else (if j.val < 3 then 65 else (if j.val < 4 then 179 else 115)))
def hex_1474895 : String := "4144420A0642400743860740430606434144064286064406420A0607440A420A40060A"
theorem cover_1474895 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474895 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1474895)
  decide +kernel
#print axioms cover_1474895

def state_1474930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 88) else (if j.val < 3 then 65 else (if j.val < 4 then 89 else 115)))
def hex_1474930 : String := "43414408428640430808084408420A08414405420A40434108080A0A0A"
theorem cover_1474930 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474930 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1474930)
  decide +kernel
#print axioms cover_1474930
end Mub6.Numerical.CircleFullD0.Forest
