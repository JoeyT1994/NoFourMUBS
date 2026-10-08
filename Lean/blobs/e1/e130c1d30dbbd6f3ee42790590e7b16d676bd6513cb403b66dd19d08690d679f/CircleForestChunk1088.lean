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
def state_1561456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 122) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 178)))
def hex_1561456 : String := "4243414008444243070507074005440542050A41400844420508080543414008074009440907414008440808400844420543080508"
theorem cover_1561456 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561456 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_1561456)
  decide +kernel
#print axioms cover_1561456

def state_1561509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 122) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 179)))
def hex_1561509 : String := "4243410740080708430708"
theorem cover_1561509 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561509 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1561509)
  decide +kernel
#print axioms cover_1561509

def state_1561522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 122) else (if j.val < 3 then 210 else (if j.val < 4 then 83 else 178)))
def hex_1561522 : String := "4341400707404406420506064140444205434107050542090744420943070907400544054205430505"
theorem cover_1561522 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561522 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1561522)
  decide +kernel
#print axioms cover_1561522

def state_1561563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 122) else (if j.val < 3 then 211 else (if j.val < 4 then 83 else 178)))
def hex_1561563 : String := "4341070641404442430708070707404442054306414005060542430705430608440607"
theorem cover_1561563 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561563 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1561563)
  decide +kernel
#print axioms cover_1561563

def state_1561598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 122) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 179)))
def hex_1561598 : String := "424307410740440507444205070707"
theorem cover_1561598 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561598 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1561598)
  decide +kernel
#print axioms cover_1561598

def state_1561613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 123) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 89)))
def hex_1561613 : String := "404442054309054205430A0544424305054306414005060542434140050605054306414044050744060705"
theorem cover_1561613 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561613 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_1561613)
  decide +kernel
#print axioms cover_1561613

def state_1561657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 88)))
def hex_1561657 : String := "424306414044420506420943060906064306414044064206060606"
theorem cover_1561657 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561657 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1561657)
  decide +kernel
#print axioms cover_1561657
end Mub6.Numerical.CircleFullD0.Forest
