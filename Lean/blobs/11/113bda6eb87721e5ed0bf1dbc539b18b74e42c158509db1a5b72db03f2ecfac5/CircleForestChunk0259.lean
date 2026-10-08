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
def state_137543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_137543 : String := "4142430944404206090607434440090640094407074440094309090942430744404106060640410707064309440909"
theorem cover_137543 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137543 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 47) (hex := hex_137543)
  decide +kernel
#print axioms cover_137543

def state_137592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_137592 : String := "42434442080A084407420843080643440A400641060A440A06"
theorem cover_137592 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137592 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 25) (hex := hex_137592)
  decide +kernel
#print axioms cover_137592

def state_137617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_137617 : String := "4243440741050544074105074344410A074140060A400A0A440741434006420706064340060706"
theorem cover_137617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137617 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_137617)
  decide +kernel
#print axioms cover_137617

def state_137657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_137657 : String := "42434440420809094008420809444007420707404207084243080743080843440940410942080909440940434106080609"
theorem cover_137657 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137657 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 49) (hex := hex_137657)
  decide +kernel
#print axioms cover_137657

def state_137707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
def hex_137707 : String := "434440410707414244060509424406054406434005050740410505410505444007410707400741420707420507"
theorem cover_137707 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137707 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_137707)
  decide +kernel
#print axioms cover_137707

def state_137752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
def hex_137752 : String := "4344400741070740414243054407050A074142430508094243054407050A440740414342070707074143080707"
theorem cover_137752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137752 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_137752)
  decide +kernel
#print axioms cover_137752
end Mub6.Numerical.CircleFullPrototype.Forest
