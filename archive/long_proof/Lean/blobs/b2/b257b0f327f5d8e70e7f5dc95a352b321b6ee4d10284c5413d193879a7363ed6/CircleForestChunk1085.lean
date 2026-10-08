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
def state_1560771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 89)))
def hex_1560771 : String := "4341074044424307410740444205080744420707070707074140060940444243410640050906434108400844420807070842060844420943070909"
theorem cover_1560771 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560771 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_1560771)
  decide +kernel
#print axioms cover_1560771

def state_1560830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 89)))
def hex_1560830 : String := "430741404408060740444243410740080708430708420807444243074107404442090707070707"
theorem cover_1560830 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560830 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_1560830)
  decide +kernel
#print axioms cover_1560830

def state_1560869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 60) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 44)))
def hex_1560869 : String := "4442434140070740448942070706410940448909094341050641404442890507074044428943064140440607060642430709074406074243070907"
theorem cover_1560869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560869 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_1560869)
  decide +kernel
#print axioms cover_1560869

def state_1560932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 104 else (if j.val < 4 then 82 else 88)))
def hex_1560932 : String := "4140444243050543064140050605424341400A44060A0505430A414044050A4442050642050A054406424306414005060506400506"
theorem cover_1560932 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560932 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_1560932)
  decide +kernel
#print axioms cover_1560932

def state_1560985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 104 else (if j.val < 4 then 83 else 88)))
def hex_1560985 : String := "4140440505444205434140050605054205434140440542054305054406420506050505"
theorem cover_1560985 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560985 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_1560985)
  decide +kernel
#print axioms cover_1560985
end Mub6.Numerical.CircleFullD0.Forest
