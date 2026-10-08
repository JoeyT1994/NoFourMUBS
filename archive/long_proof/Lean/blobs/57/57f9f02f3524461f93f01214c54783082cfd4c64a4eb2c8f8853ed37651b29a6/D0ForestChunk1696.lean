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
def state_2280188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 15)))
def hex_2280188 : String := "44424307414005050543414007440807074140084408090842074307410905"
theorem cover_2280188 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280188 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_2280188)
  decide +kernel
#print axioms cover_2280188

def state_2280227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 92 else (if j.val < 4 then 44 else 60)))
def hex_2280227 : String := "43404144420A430A0A42064308060A41090A40410606410606"
theorem cover_2280227 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280227 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2280227)
  decide +kernel
#print axioms cover_2280227

def state_2280255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 112) else (if j.val < 3 then 93 else (if j.val < 4 then 88 else 60)))
def hex_2280255 : String := "4442434005054041050A0A43050542434041050A41050A404106064106064340050540410544420A05420643050541054405420605"
theorem cover_2280255 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280255 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_2280255)
  decide +kernel
#print axioms cover_2280255

def state_2280308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 113) else (if j.val < 3 then 93 else (if j.val < 4 then 88 else 60)))
def hex_2280308 : String := "440A420A430A4041440A0A0A0A"
theorem cover_2280308 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280308 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2280308)
  decide +kernel
#print axioms cover_2280308

def state_2280321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 56) else (if j.val < 3 then 93 else (if j.val < 4 then 88 else 60)))
def hex_2280321 : String := "414442430505054243400505400808430505440A420A430A0A"
theorem cover_2280321 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280321 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 25) (hex := hex_2280321)
  decide +kernel
#print axioms cover_2280321

def state_2280347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 56) else (if j.val < 3 then 93 else (if j.val < 4 then 89 else 60)))
def hex_2280347 : String := "414442434006060643404105440506050742064340410606410606064442430A0643400A0A0642064340060606"
theorem cover_2280347 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280347 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 45) (hex := hex_2280347)
  decide +kernel
#print axioms cover_2280347

def state_2280392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 56) else (if j.val < 3 then 93 else (if j.val < 4 then 89 else 60)))
def hex_2280392 : String := "414407420607444206430A0642064340060606"
theorem cover_2280392 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280392 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_2280392)
  decide +kernel
#print axioms cover_2280392

def state_2280412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 92 else (if j.val < 4 then 44 else 61)))
def hex_2280412 : String := "43404108440606410844060606"
theorem cover_2280412 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280412 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2280412)
  decide +kernel
#print axioms cover_2280412
end Mub6.Numerical.CircleFullD0.Forest
