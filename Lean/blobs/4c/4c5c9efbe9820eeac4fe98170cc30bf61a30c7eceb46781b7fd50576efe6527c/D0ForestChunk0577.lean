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
def state_1327364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_1327364 : String := "4041420A434440050740420A07070A424344400541060540080A064344054005410A054406400806410A420A4344074107420A0706"
theorem cover_1327364 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327364 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_1327364)
  decide +kernel
#print axioms cover_1327364

def state_1327417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_1327417 : String := "4041420A434440080A08084243444041070606060A43444005410A05054440090A4005410805410A420A4344410A0641420605050A"
theorem cover_1327417 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327417 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_1327417)
  decide +kernel
#print axioms cover_1327417

def state_1327477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
def hex_1327477 : String := "40424143064405400506060606"
theorem cover_1327477 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327477 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1327477)
  decide +kernel
#print axioms cover_1327477

def state_1327492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 5)))
def hex_1327492 : String := "444143064042440543060544064306414005060506430640050641430640424443414005060505430505444306414005420506050A06430606"
theorem cover_1327492 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327492 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_1327492)
  decide +kernel
#print axioms cover_1327492

def state_1327549 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 5)))
def hex_1327549 : String := "444106064143064044090A0606"
theorem cover_1327549 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327549 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_1327549)
  decide +kernel
#print axioms cover_1327549

def state_1327562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 5)))
def hex_1327562 : String := "42444106060606"
theorem cover_1327562 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327562 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1327562)
  decide +kernel
#print axioms cover_1327562

def state_1327570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
def hex_1327570 : String := "4005420506"
theorem cover_1327570 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327570 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1327570)
  decide +kernel
#print axioms cover_1327570

def state_1327577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 5)))
def hex_1327577 : String := "43440541400542054443414005060505434144400506400542050605050505"
theorem cover_1327577 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327577 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 31) (hex := hex_1327577)
  decide +kernel
#print axioms cover_1327577
end Mub6.Numerical.CircleFullD0.Forest
