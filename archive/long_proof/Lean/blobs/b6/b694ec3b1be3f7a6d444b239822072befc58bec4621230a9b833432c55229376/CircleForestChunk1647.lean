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
def state_2268532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 88 else (if j.val < 4 then 90 else 56)))
def hex_2268532 : String := "41444043420641080606430806064440060606"
theorem cover_2268532 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268532 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_2268532)
  decide +kernel
#print axioms cover_2268532

def state_2268552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 106) else (if j.val < 3 then 89 else (if j.val < 4 then 90 else 56)))
def hex_2268552 : String := "444043424105440506054241444006050606410509430542414006050605404342084105094206410606434208054206410606"
theorem cover_2268552 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268552 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_2268552)
  decide +kernel
#print axioms cover_2268552

def state_2268603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 107) else (if j.val < 3 then 89 else (if j.val < 4 then 90 else 56)))
def hex_2268603 : String := "44404342070942060943424140060606410540090A420641400906064043070643420641060606"
theorem cover_2268603 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268603 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 39) (hex := hex_2268603)
  decide +kernel
#print axioms cover_2268603

def state_2268642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 91 else 56)))
def hex_2268642 : String := "42410606414440434206414409060606434206414006050606064440060606"
theorem cover_2268642 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268642 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_2268642)
  decide +kernel
#print axioms cover_2268642

def state_2268673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 57)))
def hex_2268673 : String := "40434206414440060606060643420641444006060644060606"
theorem cover_2268673 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268673 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_2268673)
  decide +kernel
#print axioms cover_2268673

def state_2268699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 28)))
def hex_2268699 : String := "41054440424305090542430541054405400905054042430741090709424341050741440508444007424305090540074207094305410509"
theorem cover_2268699 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268699 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_2268699)
  decide +kernel
#print axioms cover_2268699
end Mub6.Numerical.CircleFullD0.Forest
