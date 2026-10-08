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
def state_2256705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 13)))
def hex_2256705 : String := "44404307054341444205404307054341444209404307054341090A410905420540050944070541050505050505"
theorem cover_2256705 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256705 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 45) (hex := hex_2256705)
  decide +kernel
#print axioms cover_2256705

def state_2256752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 26)))
def hex_2256752 : String := "4341424408400543070508084142050808"
theorem cover_2256752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256752 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_2256752)
  decide +kernel
#print axioms cover_2256752

def state_2256774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 46 else 52)))
def hex_2256774 : String := "43414406424007430705060808"
theorem cover_2256774 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256774 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2256774)
  decide +kernel
#print axioms cover_2256774

def state_2256788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 92 else 52)))
def hex_2256788 : String := "4144424008434106084106080642404341440642050607414406050543414442090609440A0A414442050609440505400643410608084408424005430A0508"
theorem cover_2256788 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256788 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_2256788)
  decide +kernel
#print axioms cover_2256788

def state_2256851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 93 else 52)))
def hex_2256851 : String := "41440842050808"
theorem cover_2256851 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256851 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2256851)
  decide +kernel
#print axioms cover_2256851

def state_2256859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 46 else 53)))
def hex_2256859 : String := "434142054440074341420706074142050605050705"
theorem cover_2256859 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256859 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_2256859)
  decide +kernel
#print axioms cover_2256859

def state_2256883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 84 else (if j.val < 4 then 92 else 53)))
def hex_2256883 : String := "44404341050505434109050505"
theorem cover_2256883 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256883 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_2256883)
  decide +kernel
#print axioms cover_2256883

def state_2256898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 70 else 104) else (if j.val < 3 then 85 else (if j.val < 4 then 92 else 106)))
def hex_2256898 : String := "43414244064005090642440505084142050605"
theorem cover_2256898 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256898 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_2256898)
  decide +kernel
#print axioms cover_2256898

def state_2256917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 71 else 104) else (if j.val < 3 then 85 else (if j.val < 4 then 92 else 106)))
def hex_2256917 : String := "434142440909440640060942444008430A09054408400843414209060808414209440640434106050509420508"
theorem cover_2256917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256917 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_2256917)
  decide +kernel
#print axioms cover_2256917
end Mub6.Numerical.CircleFullD0.Forest
