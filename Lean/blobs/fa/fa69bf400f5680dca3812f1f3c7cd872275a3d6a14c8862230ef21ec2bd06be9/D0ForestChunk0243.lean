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
def state_995727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 42)))
def hex_995727 : String := "424140430505430544054241404305054305440541424009430907050505050505"
theorem cover_995727 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995727 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 33) (hex := hex_995727)
  decide +kernel
#print axioms cover_995727

def state_995763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 43)))
def hex_995763 : String := "4344424140054305050505C644424140430506434405C64441090509050542410740064443050643C60A410705"
theorem cover_995763 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995763 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_995763)
  decide +kernel
#print axioms cover_995763

def state_995809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 104 else 43)))
def hex_995809 : String := "44424140434405C64405C6434405C644414240050A0505C60505C6"
theorem cover_995809 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995809 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 27) (hex := hex_995809)
  decide +kernel
#print axioms cover_995809

def state_995840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 108) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 86)))
def hex_995840 : String := "4344410905C6444109420605410942400644090905"
theorem cover_995840 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995840 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_995840)
  decide +kernel
#print axioms cover_995840

def state_995862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 72 else (if j.val < 4 then 210 else 86)))
def hex_995862 : String := "44414240094309090505C6"
theorem cover_995862 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995862 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_995862)
  decide +kernel
#print axioms cover_995862

def state_995873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 72 else (if j.val < 4 then 211 else 86)))
def hex_995873 : String := "44414240090909424043054405410905434405C607054142090942404443C6094309094443C60843C6084044050944430505430909"
theorem cover_995873 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995873 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_995873)
  decide +kernel
#print axioms cover_995873

def state_995926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 86)))
def hex_995926 : String := "4043054405420605434405C64405424140440543C606440743C6420741400507050505"
theorem cover_995926 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995926 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 35) (hex := hex_995926)
  decide +kernel
#print axioms cover_995926

def state_995961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 73 else (if j.val < 4 then 105 else 86)))
def hex_995961 : String := "4140054305440541090505"
theorem cover_995961 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995961 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_995961)
  decide +kernel
#print axioms cover_995961
end Mub6.Numerical.CircleFullD0.Forest
