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
def state_1045370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 23)))
def hex_1045370 : String := "420841434044420806060608434044424108094106064208060640444208090808"
theorem cover_1045370 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045370 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1045370)
  decide +kernel
#print axioms cover_1045370

def state_1045403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 11)))
def hex_1045403 : String := "44420741080708"
theorem cover_1045403 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045403 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1045403)
  decide +kernel
#print axioms cover_1045403

def state_1045410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 11)))
def hex_1045410 : String := "4340444207054243090943050944070940440942090909"
theorem cover_1045410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045410 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 23) (hex := hex_1045410)
  decide +kernel
#print axioms cover_1045410

def state_1045434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 10)))
def hex_1045434 : String := "414340420505054042440A41430A404244094109430A4042440941094340420A050A82090A090A430540424405414305404207050505054205050A0A05"
theorem cover_1045434 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045434 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 20) (count := 61) (hex := hex_1045434)
  decide +kernel
#print axioms cover_1045434

def state_1045497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 11)))
def hex_1045497 : String := "404244410605060506"
theorem cover_1045497 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045497 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1045497)
  decide +kernel
#print axioms cover_1045497

def state_1045511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 30 else 22)))
def hex_1045511 : String := "06"
theorem cover_1045511 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045511 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1045511)
  decide +kernel
#print axioms cover_1045511

def state_1045516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 56) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 44)))
def hex_1045516 : String := "09"
theorem cover_1045516 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045516 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1045516)
  decide +kernel
#print axioms cover_1045516

def state_1045518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 62 else 44)))
def hex_1045518 : String := "404244410605060606"
theorem cover_1045518 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045518 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1045518)
  decide +kernel
#print axioms cover_1045518

def state_1045527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 63 else 44)))
def hex_1045527 : String := "40424441430609434042444143058205410643050644410605060682410643064044820606444106430640428206060642444106060606"
theorem cover_1045527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045527 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_1045527)
  decide +kernel
#print axioms cover_1045527

def state_1045582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 45)))
def hex_1045582 : String := "410606"
theorem cover_1045582 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045582 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1045582)
  decide +kernel
#print axioms cover_1045582

def state_1045585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 45 else (if j.val < 4 then 31 else 22)))
def hex_1045585 : String := "4441060606"
theorem cover_1045585 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045585 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1045585)
  decide +kernel
#print axioms cover_1045585

def state_1045590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 22)))
def hex_1045590 : String := "06"
theorem cover_1045590 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045590 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1045590)
  decide +kernel
#print axioms cover_1045590

def state_1045592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 30 else 22)))
def hex_1045592 : String := "05"
theorem cover_1045592 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045592 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1045592)
  decide +kernel
#print axioms cover_1045592
end Mub6.Numerical.CircleFullD0.Forest
