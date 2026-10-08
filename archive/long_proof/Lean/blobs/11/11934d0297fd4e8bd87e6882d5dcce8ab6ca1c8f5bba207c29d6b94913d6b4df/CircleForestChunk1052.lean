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
def state_1552757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 238) else (if j.val < 3 then 208 else (if j.val < 4 then 82 else 172)))
def hex_1552757 : String := "4340424441060706444143050609894244414340420605050643400742070807894441430505430940074207078940064206440706"
theorem cover_1552757 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552757 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_1552757)
  decide +kernel
#print axioms cover_1552757

def state_1552810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 239) else (if j.val < 3 then 208 else (if j.val < 4 then 82 else 172)))
def hex_1552810 : String := "4340420709424407894441430907078907"
theorem cover_1552810 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552810 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1552810)
  decide +kernel
#print axioms cover_1552810

def state_1552827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 119) else (if j.val < 3 then 208 else (if j.val < 4 then 82 else 173)))
def hex_1552827 : String := "89"
theorem cover_1552827 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552827 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1552827)
  decide +kernel
#print axioms cover_1552827

def state_1552828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 119) else (if j.val < 3 then 209 else (if j.val < 4 then 82 else 86)))
def hex_1552828 : String := "44414340094244410509050540420644410607064244414305060789444105430507894309404207074244078944078989"
theorem cover_1552828 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552828 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_1552828)
  decide +kernel
#print axioms cover_1552828

def state_1552877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 119) else (if j.val < 3 then 104 else (if j.val < 4 then 83 else 86)))
def hex_1552877 : String := "40064244070644434106070689"
theorem cover_1552877 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552877 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_1552877)
  decide +kernel
#print axioms cover_1552877

def state_1552890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 87)))
def hex_1552890 : String := "41064340068906"
theorem cover_1552890 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552890 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1552890)
  decide +kernel
#print axioms cover_1552890

def state_1552899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 118) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 86)))
def hex_1552899 : String := "43404244410509050505400642064443050505"
theorem cover_1552899 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552899 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_1552899)
  decide +kernel
#print axioms cover_1552899

def state_1552919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 119) else (if j.val < 3 then 105 else (if j.val < 4 then 82 else 86)))
def hex_1552919 : String := "4042440909094244414305400942440505050989440905"
theorem cover_1552919 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552919 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_1552919)
  decide +kernel
#print axioms cover_1552919

def state_1552943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 198 else 119) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 86)))
def hex_1552943 : String := "42444341060706064443080606"
theorem cover_1552943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552943 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1552943)
  decide +kernel
#print axioms cover_1552943

def state_1552956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 119) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 86)))
def hex_1552956 : String := "424443414006424407064443050705400742074407890789444341400905094140060A07434105400844090541064006440806"
theorem cover_1552956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552956 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1552956)
  decide +kernel
#print axioms cover_1552956
end Mub6.Numerical.CircleFullD0.Forest
