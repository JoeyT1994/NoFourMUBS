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
def state_945874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 84) else (if j.val < 3 then 102 else (if j.val < 4 then 69 else 106)))
def hex_945874 : String := "4042440809084244084109434008070844084143080508"
theorem cover_945874 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945874 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_945874)
  decide +kernel
#print axioms cover_945874

def state_945897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 84) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 107)))
def hex_945897 : String := "43400642410606064009420941094443060906"
theorem cover_945897 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945897 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_945897)
  decide +kernel
#print axioms cover_945897

def state_945917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 85) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 106)))
def hex_945917 : String := "4340420A0842414408434006054008080A414405430508054008420A08"
theorem cover_945917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945917 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_945917)
  decide +kernel
#print axioms cover_945917

def state_945947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 85) else (if j.val < 3 then 102 else (if j.val < 4 then 68 else 107)))
def hex_945947 : String := "400642414443064006420941060606444305400A420A414405060506410644430540060506"
theorem cover_945947 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945947 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_945947)
  decide +kernel
#print axioms cover_945947

def state_945984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 85) else (if j.val < 3 then 102 else (if j.val < 4 then 69 else 107)))
def hex_945984 : String := "4042094106440806424109440A094144434006424109080640084208084306094443400842080808430609"
theorem cover_945984 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945984 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_945984)
  decide +kernel
#print axioms cover_945984

def state_946028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 84) else (if j.val < 3 then 103 else (if j.val < 4 then 34 else 53)))
def hex_946028 : String := "444340064244080606400842440841080808430640064241060606"
theorem cover_946028 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946028 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_946028)
  decide +kernel
#print axioms cover_946028

def state_946055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 85) else (if j.val < 3 then 103 else (if j.val < 4 then 34 else 53)))
def hex_946055 : String := "44434042080642410805054008420808430640064241444306080644430808064106440806"
theorem cover_946055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946055 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_946055)
  decide +kernel
#print axioms cover_946055
end Mub6.Numerical.CircleFullD0.Forest
