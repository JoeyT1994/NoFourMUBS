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
def state_1302750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 21) else (if j.val < 3 then 23 else (if j.val < 4 then 29 else 22)))
def hex_1302750 : String := "40420A4441084340420A4441084340B80808410A0A420808400A08410A0A420844084108434042080A0808"
theorem cover_1302750 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302750 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 43) (hex := hex_1302750)
  decide +kernel
#print axioms cover_1302750

def state_1302793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 10) else (if j.val < 3 then 23 else (if j.val < 4 then 14 else 23)))
def hex_1302793 : String := "410A43060A"
theorem cover_1302793 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302793 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1302793)
  decide +kernel
#print axioms cover_1302793

def state_1302798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 11)))
def hex_1302798 : String := "420A444108400A080A"
theorem cover_1302798 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302798 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1302798)
  decide +kernel
#print axioms cover_1302798

def state_1302807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 11)))
def hex_1302807 : String := "434244080A444108404305080541084043050A430508420808"
theorem cover_1302807 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302807 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1302807)
  decide +kernel
#print axioms cover_1302807

def state_1302833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 5)))
def hex_1302833 : String := "44400707404309410A0743410909410606"
theorem cover_1302833 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302833 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_1302833)
  decide +kernel
#print axioms cover_1302833

def state_1302855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 14 else 10)))
def hex_1302855 : String := "44074340070507"
theorem cover_1302855 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302855 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1302855)
  decide +kernel
#print axioms cover_1302855

def state_1302863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 14 else 20)))
def hex_1302863 : String := "430507"
theorem cover_1302863 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302863 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1302863)
  decide +kernel
#print axioms cover_1302863

def state_1302867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 28 else 21)))
def hex_1302867 : String := "4042414405430507054144054305404241440543050705414405430540B80505050505"
theorem cover_1302867 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302867 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 35) (hex := hex_1302867)
  decide +kernel
#print axioms cover_1302867

def state_1302902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 29 else 21)))
def hex_1302902 : String := "404207414406434042074144064340B806060642070806074207410805"
theorem cover_1302902 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302902 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 29) (hex := hex_1302902)
  decide +kernel
#print axioms cover_1302902

def state_1302931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 23) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 10)))
def hex_1302931 : String := "42074405430507"
theorem cover_1302931 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302931 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1302931)
  decide +kernel
#print axioms cover_1302931

def state_1302938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 10)))
def hex_1302938 : String := "4142070607"
theorem cover_1302938 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302938 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1302938)
  decide +kernel
#print axioms cover_1302938

def state_1302943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 10)))
def hex_1302943 : String := "434142080505410606"
theorem cover_1302943 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302943 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1302943)
  decide +kernel
#print axioms cover_1302943

def state_1302956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 14 else 11)))
def hex_1302956 : String := "44430940090909"
theorem cover_1302956 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302956 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1302956)
  decide +kernel
#print axioms cover_1302956

def state_1302967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 22) else (if j.val < 3 then 46 else (if j.val < 4 then 28 else 22)))
def hex_1302967 : String := "09"
theorem cover_1302967 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302967 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1302967)
  decide +kernel
#print axioms cover_1302967
end Mub6.Numerical.CircleFullD0.Forest
