import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1511795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 177) else (if j.val < 3 then 83 else (if j.val < 4 then 211 else 122)))
def hex_1511795 : String := "4206444041434206444005410505054206444041060906064342440A06444009414305090905420A4440090A4009064106434206440A060640410643050606"
theorem cover_1511795 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511795 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_1511795)
  decide +kernel
#print axioms cover_1511795

def state_1511858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 123)))
def hex_1511858 : String := "404105430542050506"
theorem cover_1511858 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511858 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1511858)
  decide +kernel
#print axioms cover_1511858

def state_1511870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 82 else (if j.val < 4 then 104 else 122)))
def hex_1511870 : String := "4041434244070505420744400741430A070A054342074440050A054207440A07414342440A0644404143050A0A0A054206440A06430A0A"
theorem cover_1511870 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511870 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1511870)
  decide +kernel
#print axioms cover_1511870

def state_1511925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 82 else (if j.val < 4 then 104 else 123)))
def hex_1511925 : String := "40410543050741064342050506"
theorem cover_1511925 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511925 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1511925)
  decide +kernel
#print axioms cover_1511925

def state_1511938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 83 else (if j.val < 4 then 104 else 61)))
def hex_1511938 : String := "44404143054244400541054305090505430542440905054143420505424440414305420A0543050A4143080A0805440805430842440A40050A0805"
theorem cover_1511938 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511938 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 59) (hex := hex_1511938)
  decide +kernel
#print axioms cover_1511938

def state_1511998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 82 else (if j.val < 4 then 105 else 61)))
def hex_1511998 : String := "444041434207440A07070A0A4041070706"
theorem cover_1511998 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511998 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1511998)
  decide +kernel
#print axioms cover_1511998
end Mub6.Numerical.CircleFullD0.Forest
