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
def state_2329255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 53) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 48)))
def hex_2329255 : String := "4042430608084206430608"
theorem cover_2329255 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329255 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2329255)
  decide +kernel
#print axioms cover_2329255

def state_2329266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 49)))
def hex_2329266 : String := "414042434441400506050505434441404243444107050505070740084206064109054441400507050542064344070644070740420543060506"
theorem cover_2329266 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329266 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 57) (hex := hex_2329266)
  decide +kernel
#print axioms cover_2329266

def state_2329324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 49 else 48)))
def hex_2329324 : String := "4140424443414005420508050505084244434142404443410705050506074206400806410A05434142050705054443070743070740084244080508"
theorem cover_2329324 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329324 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 59) (hex := hex_2329324)
  decide +kernel
#print axioms cover_2329324

def state_2329383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 49 else 49)))
def hex_2329383 : String := "41400542054344070744070505"
theorem cover_2329383 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329383 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_2329383)
  decide +kernel
#print axioms cover_2329383

def state_2329396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 24)))
def hex_2329396 : String := "400742064306440805"
theorem cover_2329396 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329396 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2329396)
  decide +kernel
#print axioms cover_2329396

def state_2329405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 25)))
def hex_2329405 : String := "414005420543444140050605050505"
theorem cover_2329405 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329405 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_2329405)
  decide +kernel
#print axioms cover_2329405

def state_2329420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 12)))
def hex_2329420 : String := "44414005420544434140050A0505050505"
theorem cover_2329420 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329420 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_2329420)
  decide +kernel
#print axioms cover_2329420

def state_2329437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
def hex_2329437 : String := "05"
theorem cover_2329437 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329437 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2329437)
  decide +kernel
#print axioms cover_2329437

def state_2329438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 6)))
def hex_2329438 : String := "05"
theorem cover_2329438 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329438 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2329438)
  decide +kernel
#print axioms cover_2329438

def state_2329439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
def hex_2329439 : String := "41434005080505"
theorem cover_2329439 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329439 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2329439)
  decide +kernel
#print axioms cover_2329439

def state_2329446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 3)))
def hex_2329446 : String := "4441444005420506050505"
theorem cover_2329446 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329446 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2329446)
  decide +kernel
#print axioms cover_2329446

def state_2329464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 12)))
def hex_2329464 : String := "410643440642404341064406050643414406094442050605410605064406420606"
theorem cover_2329464 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329464 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 33) (hex := hex_2329464)
  decide +kernel
#print axioms cover_2329464
end Mub6.Numerical.CircleFullD0.Forest
