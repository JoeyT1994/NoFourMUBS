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
def state_2277604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 57) else (if j.val < 3 then 47 else (if j.val < 4 then 43 else 61)))
def hex_2277604 : String := "42430740074144420A430A0A4207430740074144050707074340074106064041090741444243050505424340050540094105440507094408420708"
theorem cover_2277604 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277604 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_2277604)
  decide +kernel
#print axioms cover_2277604

def state_2277664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 42 else 30)))
def hex_2277664 : String := "414405424005050544420A054240060606"
theorem cover_2277664 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277664 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_2277664)
  decide +kernel
#print axioms cover_2277664

def state_2277682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 56) else (if j.val < 3 then 47 else (if j.val < 4 then 43 else 30)))
def hex_2277682 : String := "44424005050542404305410544054243054041050A0505430505400505"
theorem cover_2277682 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277682 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 29) (hex := hex_2277682)
  decide +kernel
#print axioms cover_2277682

def state_2277711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 47 else (if j.val < 4 then 43 else 30)))
def hex_2277711 : String := "4442400A0A40430505054240430A41440A420A430A400A0A0A430A0A404306414405424305400505054408420A08430641050A"
theorem cover_2277711 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277711 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_2277711)
  decide +kernel
#print axioms cover_2277711

def state_2277763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 21 else 31)))
def hex_2277763 : String := "40430741444207430740070807074341444207400743070807074144420840430808430808084442400709400743070A07"
theorem cover_2277763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277763 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 49) (hex := hex_2277763)
  decide +kernel
#print axioms cover_2277763

def state_2277814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 42 else 31)))
def hex_2277814 : String := "414442074006060707"
theorem cover_2277814 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277814 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2277814)
  decide +kernel
#print axioms cover_2277814
end Mub6.Numerical.CircleFullD0.Forest
