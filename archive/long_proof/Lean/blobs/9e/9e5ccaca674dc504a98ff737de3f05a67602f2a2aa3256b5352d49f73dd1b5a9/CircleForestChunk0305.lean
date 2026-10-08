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
def state_148590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 27)))
def hex_148590 : String := "40414243440506064305064243050605414243440540414206050541424405060505444041420605054142430506050506430544050642430544050605"
theorem cover_148590 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148590 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_148590)
  decide +kernel
#print axioms cover_148590

def state_148651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 13)))
def hex_148651 : String := "400743054405410705"
theorem cover_148651 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148651 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_148651)
  decide +kernel
#print axioms cover_148651

def state_148660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 13)))
def hex_148660 : String := "4240084305440542080505"
theorem cover_148660 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148660 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_148660)
  decide +kernel
#print axioms cover_148660

def state_148672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 7)))
def hex_148672 : String := "43410742090741420907420907"
theorem cover_148672 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148672 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 13) (hex := hex_148672)
  decide +kernel
#print axioms cover_148672

def state_148686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 7)))
def hex_148686 : String := "4142444043070743410742440A090741424440074307070707424440090A0944050709440707424440430909430A420A0509440540074305410605"
theorem cover_148686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148686 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_148686)
  decide +kernel
#print axioms cover_148686

def state_148749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 14)))
def hex_148749 : String := "43410709410609"
theorem cover_148749 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148749 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_148749)
  decide +kernel
#print axioms cover_148749

def state_148757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 14)))
def hex_148757 : String := "41424440094341070941080908440707424440094309090944400743074441070541070909"
theorem cover_148757 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148757 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_148757)
  decide +kernel
#print axioms cover_148757
end Mub6.Numerical.CircleFullPrototype.Forest
