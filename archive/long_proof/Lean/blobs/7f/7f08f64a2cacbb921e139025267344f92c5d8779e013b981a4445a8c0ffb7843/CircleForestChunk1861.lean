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
def state_2319660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 62 else 87)))
def hex_2319660 : String := "43404244050505054042444105430507410543400905404407420709440505440541054305400905420505"
theorem cover_2319660 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319660 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_2319660)
  decide +kernel
#print axioms cover_2319660

def state_2319703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 62 else 87)))
def hex_2319703 : String := "43400942440506084042440741430940074407090709424408414308404407420705054306074408414305404205050509"
theorem cover_2319703 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319703 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_2319703)
  decide +kernel
#print axioms cover_2319703

def state_2319753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 63 else 43)))
def hex_2319753 : String := "4207440741434006424406064406060607"
theorem cover_2319753 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319753 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_2319753)
  decide +kernel
#print axioms cover_2319753

def state_2319771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 86 else (if j.val < 4 then 63 else 43)))
def hex_2319771 : String := "44074143404407420741434006440505060744074207410A0A0707"
theorem cover_2319771 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319771 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 27) (hex := hex_2319771)
  decide +kernel
#print axioms cover_2319771

def state_2319799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 87 else (if j.val < 4 then 63 else 86)))
def hex_2319799 : String := "414340420708080707"
theorem cover_2319799 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319799 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2319799)
  decide +kernel
#print axioms cover_2319799

def state_2319810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 126 else 87)))
def hex_2319810 : String := "4042444143050607414340060506434007440742070507444105434007050741064340424405060A4205058342440841054340440505058344054105430583"
theorem cover_2319810 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319810 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_2319810)
  decide +kernel
#print axioms cover_2319810

def state_2319873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 127 else 87)))
def hex_2319873 : String := "83"
theorem cover_2319873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319873 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2319873)
  decide +kernel
#print axioms cover_2319873
end Mub6.Numerical.CircleFullD0.Forest
