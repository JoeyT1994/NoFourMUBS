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
def state_1575016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 10)))
def hex_1575016 : String := "414344050A05434442410540050A41054005430A054241404309050A4043440A084405420A050A414005084043080508440542410540050705"
theorem cover_1575016 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575016 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_1575016)
  decide +kernel
#print axioms cover_1575016

def state_1575073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 10)))
def hex_1575073 : String := "410A43440A0807"
theorem cover_1575073 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575073 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1575073)
  decide +kernel
#print axioms cover_1575073

def state_1575081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 11)))
def hex_1575081 : String := "404144430A0A0A4443064206414044050A0A40444207430A05424306074306410544050A44060643064206410A44404206080608410A06"
theorem cover_1575081 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575081 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 55) (hex := hex_1575081)
  decide +kernel
#print axioms cover_1575081

def state_1575136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 11)))
def hex_1575136 : String := "404144430808084443084241400508404405430805440708410840440508080808"
theorem cover_1575136 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575136 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 33) (hex := hex_1575136)
  decide +kernel
#print axioms cover_1575136

def state_1575170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 4)))
def hex_1575170 : String := "40054105420705"
theorem cover_1575170 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575170 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1575170)
  decide +kernel
#print axioms cover_1575170

def state_1575179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
def hex_1575179 : String := "05"
theorem cover_1575179 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575179 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1575179)
  decide +kernel
#print axioms cover_1575179

def state_1575181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 10)))
def hex_1575181 : String := "05"
theorem cover_1575181 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575181 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1575181)
  decide +kernel
#print axioms cover_1575181

def state_1575185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
def hex_1575185 : String := "440540054243440541054005420A050505"
theorem cover_1575185 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575185 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1575185)
  decide +kernel
#print axioms cover_1575185

def state_1575203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 22)))
def hex_1575203 : String := "400542434105440540054207050505"
theorem cover_1575203 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575203 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1575203)
  decide +kernel
#print axioms cover_1575203

def state_1575219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 23)))
def hex_1575219 : String := "424341440509080606"
theorem cover_1575219 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575219 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1575219)
  decide +kernel
#print axioms cover_1575219

def state_1575232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 46)))
def hex_1575232 : String := "40054243414405064406060505"
theorem cover_1575232 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575232 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_1575232)
  decide +kernel
#print axioms cover_1575232
end Mub6.Numerical.CircleFullD0.Forest
