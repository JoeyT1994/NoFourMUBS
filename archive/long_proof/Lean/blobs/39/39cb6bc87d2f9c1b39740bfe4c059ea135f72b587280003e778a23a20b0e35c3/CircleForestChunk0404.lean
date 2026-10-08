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
def state_1034411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 62)))
def hex_1034411 : String := "4243440A400A4107070A4344400A064041420A43440A400A410A0A0A0A414206434406404106060606420A434406400A06064406400A06"
theorem cover_1034411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034411 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_1034411)
  decide +kernel
#print axioms cover_1034411

def state_1034466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 103) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 62)))
def hex_1034466 : String := "420A43440A400A41420A0A0A0A"
theorem cover_1034466 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034466 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1034466)
  decide +kernel
#print axioms cover_1034466

def state_1034480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 63)))
def hex_1034480 : String := "4142094344400941090A0905420A43440A400841420905080A"
theorem cover_1034480 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034480 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1034480)
  decide +kernel
#print axioms cover_1034480

def state_1034507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 102 else (if j.val < 4 then 38 else 63)))
def hex_1034507 : String := "434440094109420743440709090909"
theorem cover_1034507 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034507 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1034507)
  decide +kernel
#print axioms cover_1034507

def state_1034525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 102) else (if j.val < 3 then 103 else (if j.val < 4 then 76 else 126)))
def hex_1034525 : String := "41420943444009410942090709054243440A09094344400A410A0A840A"
theorem cover_1034525 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034525 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1034525)
  decide +kernel
#print axioms cover_1034525

def state_1034555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 204) else (if j.val < 3 then 103 else (if j.val < 4 then 76 else 126)))
def hex_1034555 : String := "4243444009060909434440410842434406090643440684064106064041088408440609"
theorem cover_1034555 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034555 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1034555)
  decide +kernel
#print axioms cover_1034555

def state_1034590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 205) else (if j.val < 3 then 103 else (if j.val < 4 then 76 else 126)))
def hex_1034590 : String := "42434440410A0A4106068444060943444041420A4344068406420A0A41060684440684"
theorem cover_1034590 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034590 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1034590)
  decide +kernel
#print axioms cover_1034590

def state_1034625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 103 else (if j.val < 4 then 76 else 127)))
def hex_1034625 : String := "4041098441420943080584"
theorem cover_1034625 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034625 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1034625)
  decide +kernel
#print axioms cover_1034625

def state_1034636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 103 else (if j.val < 4 then 77 else 63)))
def hex_1034636 : String := "44400941060609"
theorem cover_1034636 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034636 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1034636)
  decide +kernel
#print axioms cover_1034636

def state_1034644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 103) else (if j.val < 3 then 102 else (if j.val < 4 then 38 else 63)))
def hex_1034644 : String := "4344400A420741434407840A0A4042098442410707840A"
theorem cover_1034644 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034644 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1034644)
  decide +kernel
#print axioms cover_1034644
end Mub6.Numerical.CircleFullD0.Forest
