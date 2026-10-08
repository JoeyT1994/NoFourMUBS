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
def state_373038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 45) else (if j.val < 3 then 36 else (if j.val < 4 then 45 else 47)))
def hex_373038 : String := "4407410708"
theorem cover_373038 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373038 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_373038)
  decide +kernel
#print axioms cover_373038

def state_373043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 45) else (if j.val < 3 then 37 else (if j.val < 4 then 45 else 47)))
def hex_373043 : String := "4441074308084143404207440705074042074407434105070707434042084408414305400A42050543080842074408410606400A42074407410708"
theorem cover_373043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373043 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_373043)
  decide +kernel
#print axioms cover_373043

def state_373102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 45) else (if j.val < 3 then 18 else (if j.val < 4 then 45 else 47)))
def hex_373102 : String := "07"
theorem cover_373102 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373102 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_373102)
  decide +kernel
#print axioms cover_373102

def state_373104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 22 else 46)))
def hex_373104 : String := "4143070743094042444106084107430840060709420744070A"
theorem cover_373104 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373104 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_373104)
  decide +kernel
#print axioms cover_373104

def state_373130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 44) else (if j.val < 3 then 19 else (if j.val < 4 then 22 else 47)))
def hex_373130 : String := "430A4042440743410540420505074107404207440708070A07"
theorem cover_373130 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373130 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 25) (hex := hex_373130)
  decide +kernel
#print axioms cover_373130

def state_373156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 45) else (if j.val < 3 then 19 else (if j.val < 4 then 44 else 47)))
def hex_373156 : String := "4042440941430540090A430940094244090609090A"
theorem cover_373156 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373156 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_373156)
  decide +kernel
#print axioms cover_373156

def state_373178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 45) else (if j.val < 3 then 19 else (if j.val < 4 then 45 else 47)))
def hex_373178 : String := "424441434009074042070607434009420809404244064143400607060806420844410606414307064308069B440941430940429B060A43094009429B09"
theorem cover_373178 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373178 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_373178)
  decide +kernel
#print axioms cover_373178

def state_373239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 45) else (if j.val < 3 then 19 else (if j.val < 4 then 45 else 47)))
def hex_373239 : String := "42440741074342409B060A4207409B07440A0A"
theorem cover_373239 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373239 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_373239)
  decide +kernel
#print axioms cover_373239

def state_373259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 22)))
def hex_373259 : String := "400642074341060606"
theorem cover_373259 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373259 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_373259)
  decide +kernel
#print axioms cover_373259
end Mub6.Numerical.CircleFullPrototype.Forest
