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
def state_1497934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 175) else (if j.val < 3 then 81 else (if j.val < 4 then 206 else 119)))
def hex_1497934 : String := "420A44084043060A08"
theorem cover_1497934 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497934 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1497934)
  decide +kernel
#print axioms cover_1497934

def state_1497943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 207 else 119)))
def hex_1497943 : String := "88"
theorem cover_1497943 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497943 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1497943)
  decide +kernel
#print axioms cover_1497943

def state_1497944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 119)))
def hex_1497944 : String := "43414209080A88"
theorem cover_1497944 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497944 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1497944)
  decide +kernel
#print axioms cover_1497944

def state_1497951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 59)))
def hex_1497951 : String := "4341420908420A08414209440509420544054043080508"
theorem cover_1497951 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497951 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1497951)
  decide +kernel
#print axioms cover_1497951

def state_1497976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 102 else 59)))
def hex_1497976 : String := "410808"
theorem cover_1497976 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497976 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1497976)
  decide +kernel
#print axioms cover_1497976

def state_1497981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 41 else (if j.val < 4 then 103 else 118)))
def hex_1497981 : String := "4240430841440842404308414405420506050808080808"
theorem cover_1497981 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497981 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 23) (hex := hex_1497981)
  decide +kernel
#print axioms cover_1497981

def state_1498007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 86) else (if j.val < 3 then 82 else (if j.val < 4 then 206 else 119)))
def hex_1498007 : String := "41440842400A08084408424043084108080808"
theorem cover_1498007 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498007 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1498007)
  decide +kernel
#print axioms cover_1498007

def state_1498026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 86) else (if j.val < 3 then 82 else (if j.val < 4 then 207 else 119)))
def hex_1498026 : String := "4144424043414408098841444209400A08098843084109094043084107060842404341098841098809400A43080A88"
theorem cover_1498026 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498026 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_1498026)
  decide +kernel
#print axioms cover_1498026

def state_1498073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 86) else (if j.val < 3 then 82 else (if j.val < 4 then 103 else 119)))
def hex_1498073 : String := "43084144080988"
theorem cover_1498073 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498073 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1498073)
  decide +kernel
#print axioms cover_1498073

def state_1498080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 83 else (if j.val < 4 then 103 else 119)))
def hex_1498080 : String := "08"
theorem cover_1498080 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498080 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1498080)
  decide +kernel
#print axioms cover_1498080

def state_1498081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 41 else (if j.val < 4 then 103 else 59)))
def hex_1498081 : String := "440842404308880808"
theorem cover_1498081 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498081 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1498081)
  decide +kernel
#print axioms cover_1498081

def state_1498090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 59)))
def hex_1498090 : String := "4308410808"
theorem cover_1498090 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498090 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1498090)
  decide +kernel
#print axioms cover_1498090

def state_1498095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 29)))
def hex_1498095 : String := "4341080841444209084206084408424043084106050608"
theorem cover_1498095 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498095 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1498095)
  decide +kernel
#print axioms cover_1498095

def state_1498118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 25 else 14)))
def hex_1498118 : String := "4408404308414244084043070A07070808"
theorem cover_1498118 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498118 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1498118)
  decide +kernel
#print axioms cover_1498118

def state_1498137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 15)))
def hex_1498137 : String := "410542444005430541054205050505"
theorem cover_1498137 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498137 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1498137)
  decide +kernel
#print axioms cover_1498137

def state_1498153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 15)))
def hex_1498153 : String := "0A"
theorem cover_1498153 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498153 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1498153)
  decide +kernel
#print axioms cover_1498153

def state_1498157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 30)))
def hex_1498157 : String := "4341054244400543054105050505410A4244400843410A42070508050A"
theorem cover_1498157 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498157 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_1498157)
  decide +kernel
#print axioms cover_1498157

def state_1498188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 20 else (if j.val < 4 then 50 else 30)))
def hex_1498188 : String := "0A"
theorem cover_1498188 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498188 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1498188)
  decide +kernel
#print axioms cover_1498188
end Mub6.Numerical.CircleFullD0.Forest
