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
def state_1322994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 45 else 22)))
def hex_1322994 : String := "4441054205434044050805050A"
theorem cover_1322994 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322994 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1322994)
  decide +kernel
#print axioms cover_1322994

def state_1323007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 22 else 22)))
def hex_1323007 : String := "434441054205404344050705050A44050A"
theorem cover_1323007 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323007 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1323007)
  decide +kernel
#print axioms cover_1323007

def state_1323024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 23)))
def hex_1323024 : String := "0A"
theorem cover_1323024 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323024 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1323024)
  decide +kernel
#print axioms cover_1323024

def state_1323025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 11)))
def hex_1323025 : String := "4441054205434044050805050A"
theorem cover_1323025 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323025 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1323025)
  decide +kernel
#print axioms cover_1323025

def state_1323038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 11)))
def hex_1323038 : String := "434441054205404344050605050A44050A"
theorem cover_1323038 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323038 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1323038)
  decide +kernel
#print axioms cover_1323038

def state_1323066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 24) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 12)))
def hex_1323066 : String := "42440A05440A4043410542054407050505"
theorem cover_1323066 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323066 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1323066)
  decide +kernel
#print axioms cover_1323066

def state_1323084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 12)))
def hex_1323084 : String := "440A4043420541054406050505"
theorem cover_1323084 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323084 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1323084)
  decide +kernel
#print axioms cover_1323084

def state_1323098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 24)))
def hex_1323098 : String := "0A"
theorem cover_1323098 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323098 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1323098)
  decide +kernel
#print axioms cover_1323098

def state_1323102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 50) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 25)))
def hex_1323102 : String := "42440A05440A4043410542054409050505"
theorem cover_1323102 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323102 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1323102)
  decide +kernel
#print axioms cover_1323102

def state_1323120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 50 else (if j.val < 4 then 16 else 25)))
def hex_1323120 : String := "440A4043420541054406050505"
theorem cover_1323120 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323120 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1323120)
  decide +kernel
#print axioms cover_1323120

def state_1323134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 16 else 50)))
def hex_1323134 : String := "0A"
theorem cover_1323134 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323134 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1323134)
  decide +kernel
#print axioms cover_1323134

def state_1323138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 102) else (if j.val < 3 then 51 else (if j.val < 4 then 32 else 51)))
def hex_1323138 : String := "42444043410542050A0A0A05444043090A0940434105B74105420544070543410542050905"
theorem cover_1323138 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323138 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1323138)
  decide +kernel
#print axioms cover_1323138

def state_1323176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 103) else (if j.val < 3 then 102 else (if j.val < 4 then 32 else 51)))
def hex_1323176 : String := "4440060A40434205B74205410506434205410544080505"
theorem cover_1323176 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323176 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1323176)
  decide +kernel
#print axioms cover_1323176

def state_1323200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 103) else (if j.val < 3 then 103 else (if j.val < 4 then 32 else 102)))
def hex_1323200 : String := "4043440AB70A0A"
theorem cover_1323200 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323200 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1323200)
  decide +kernel
#print axioms cover_1323200

def state_1323207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 103) else (if j.val < 3 then 103 else (if j.val < 4 then 32 else 103)))
def hex_1323207 : String := "4043B74142440A05440A43B70542440643B705440A43B740080A434142440A05440940B70542440A40B705440A40B743070A4142050A420A0A"
theorem cover_1323207 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323207 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 57) (hex := hex_1323207)
  decide +kernel
#print axioms cover_1323207
end Mub6.Numerical.CircleFullD0.Forest
