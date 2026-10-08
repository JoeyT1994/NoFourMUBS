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
def state_1591991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 36) else (if j.val < 3 then 50 else (if j.val < 4 then 56 else 51)))
def hex_1591991 : String := "4042444340060906060642444308410840090843080808"
theorem cover_1591991 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591991 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1591991)
  decide +kernel
#print axioms cover_1591991

def state_1592015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 37) else (if j.val < 3 then 50 else (if j.val < 4 then 56 else 51)))
def hex_1592015 : String := "424443414006424409430906094007424441090941070744070741064006420A0643410640064207060644434106070606"
theorem cover_1592015 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592015 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1592015)
  decide +kernel
#print axioms cover_1592015

def state_1592066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 37) else (if j.val < 3 then 100 else (if j.val < 4 then 56 else 102)))
def hex_1592066 : String := "4341404244094305410805080840424441090505440941430808430505054140420A090840420A4409434106400605064205440805"
theorem cover_1592066 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592066 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_1592066)
  decide +kernel
#print axioms cover_1592066

def state_1592119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 37) else (if j.val < 3 then 100 else (if j.val < 4 then 56 else 103)))
def hex_1592119 : String := "4341404205080505414006054042050605"
theorem cover_1592119 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592119 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_1592119)
  decide +kernel
#print axioms cover_1592119

def state_1592136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 37) else (if j.val < 3 then 101 else (if j.val < 4 then 56 else 51)))
def hex_1592136 : String := "444341084009084108400908434108404244080506084106400608"
theorem cover_1592136 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592136 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_1592136)
  decide +kernel
#print axioms cover_1592136

def state_1592163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 50 else (if j.val < 4 then 57 else 51)))
def hex_1592163 : String := "414006424443410640060806060640064244434140060A400A420A440A0A0A43410640060506444341064006080606"
theorem cover_1592163 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592163 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_1592163)
  decide +kernel
#print axioms cover_1592163

def state_1592210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 25)))
def hex_1592210 : String := "444341090941050943414006084006424408080806"
theorem cover_1592210 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592210 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1592210)
  decide +kernel
#print axioms cover_1592210
end Mub6.Numerical.CircleFullD0.Forest
