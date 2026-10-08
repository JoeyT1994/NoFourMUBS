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
def state_2282881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 173 else 114) else (if j.val < 3 then 189 else (if j.val < 4 then 177 else 124)))
def hex_2282881 : String := "414442430A0643400505074206434041050641050606440A4206430A06"
theorem cover_2282881 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282881 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_2282881)
  decide +kernel
#print axioms cover_2282881

def state_2282911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 114) else (if j.val < 3 then 188 else (if j.val < 4 then 88 else 125)))
def hex_2282911 : String := "43400741080706"
theorem cover_2282911 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282911 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2282911)
  decide +kernel
#print axioms cover_2282911

def state_2282919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 114) else (if j.val < 3 then 189 else (if j.val < 4 then 176 else 125)))
def hex_2282919 : String := "40414442074307400708070741444208434008054008080844420A430A400A0A420743074007410606"
theorem cover_2282919 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282919 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_2282919)
  decide +kernel
#print axioms cover_2282919

def state_2282960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 114) else (if j.val < 3 then 189 else (if j.val < 4 then 177 else 125)))
def hex_2282960 : String := "40414442064340060606064406064144420643080606444206434006060606"
theorem cover_2282960 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282960 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_2282960)
  decide +kernel
#print axioms cover_2282960

def state_2282991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 115) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 62)))
def hex_2282991 : String := "44420A430A400A0A4207430740074144060606"
theorem cover_2282991 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282991 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_2282991)
  decide +kernel
#print axioms cover_2282991

def state_2283012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 114) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 124)))
def hex_2283012 : String := "4243090943404144054209050A0940414407420607440A0A09"
theorem cover_2283012 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283012 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2283012)
  decide +kernel
#print axioms cover_2283012

def state_2283037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 114) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 125)))
def hex_2283037 : String := "42434008080643404144420843050808440A4208430A400808410909404144420643080606444206434006060606410909"
theorem cover_2283037 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283037 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_2283037)
  decide +kernel
#print axioms cover_2283037

def state_2283086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 115) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 62)))
def hex_2283086 : String := "440A420A430A4041440A060A0A"
theorem cover_2283086 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283086 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2283086)
  decide +kernel
#print axioms cover_2283086
end Mub6.Numerical.CircleFullD0.Forest
