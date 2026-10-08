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
def state_1304424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 21) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 22)))
def hex_1304424 : String := "07"
theorem cover_1304424 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304424 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1304424)
  decide +kernel
#print axioms cover_1304424

def state_1304425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 21) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 22)))
def hex_1304425 : String := "424441060541064305400605444107430540070507"
theorem cover_1304425 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304425 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_1304425)
  decide +kernel
#print axioms cover_1304425

def state_1304450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 42) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 44)))
def hex_1304450 : String := "09"
theorem cover_1304450 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304450 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1304450)
  decide +kernel
#print axioms cover_1304450

def state_1304453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 43) else (if j.val < 3 then 48 else (if j.val < 4 then 58 else 44)))
def hex_1304453 : String := "4244410943400942440841084340B8080809094143070543404244B805074244410A4340B842084407070A0A4409070509"
theorem cover_1304453 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304453 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 49) (hex := hex_1304453)
  decide +kernel
#print axioms cover_1304453

def state_1304503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 43) else (if j.val < 3 then 96 else (if j.val < 4 then 58 else 44)))
def hex_1304503 : String := "4441084340420809080841434042080708084340424408410843060A44410743400742080709074208440841074305084042080908"
theorem cover_1304503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304503 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_1304503)
  decide +kernel
#print axioms cover_1304503

def state_1304556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 43) else (if j.val < 3 then 97 else (if j.val < 4 then 58 else 44)))
def hex_1304556 : String := "44094107434007424409070709"
theorem cover_1304556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304556 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1304556)
  decide +kernel
#print axioms cover_1304556

def state_1304569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 43) else (if j.val < 3 then 48 else (if j.val < 4 then 59 else 44)))
def hex_1304569 : String := "09"
theorem cover_1304569 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304569 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1304569)
  decide +kernel
#print axioms cover_1304569

def state_1304570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 21) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 45)))
def hex_1304570 : String := "4143060543404244410743070507074244410A4340420A07420A070A0A444107430740074244090707074005420A440905"
theorem cover_1304570 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304570 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_1304570)
  decide +kernel
#print axioms cover_1304570

def state_1304619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 21) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 22)))
def hex_1304619 : String := "44094107430705"
theorem cover_1304619 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304619 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1304619)
  decide +kernel
#print axioms cover_1304619

def state_1304628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 21) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 44)))
def hex_1304628 : String := "4108434042084409410943404244054107050705090808"
theorem cover_1304628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304628 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 23) (hex := hex_1304628)
  decide +kernel
#print axioms cover_1304628

def state_1304652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 42) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 45)))
def hex_1304652 : String := "4340060808"
theorem cover_1304652 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304652 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1304652)
  decide +kernel
#print axioms cover_1304652
end Mub6.Numerical.CircleFullD0.Forest
