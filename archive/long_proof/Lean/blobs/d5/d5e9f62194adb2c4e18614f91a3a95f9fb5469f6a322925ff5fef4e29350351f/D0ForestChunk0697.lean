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
def state_1468142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 22)))
def hex_1468142 : String := "44410643400A42440A07074006424406060A410608"
theorem cover_1468142 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468142 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1468142)
  decide +kernel
#print axioms cover_1468142

def state_1468163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 22)))
def hex_1468163 : String := "400642440606440606"
theorem cover_1468163 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468163 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1468163)
  decide +kernel
#print axioms cover_1468163

def state_1468174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 22)))
def hex_1468174 : String := "4244410805050A"
theorem cover_1468174 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468174 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1468174)
  decide +kernel
#print axioms cover_1468174

def state_1468186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 58) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 44)))
def hex_1468186 : String := "424441434005420505050505440A08"
theorem cover_1468186 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468186 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1468186)
  decide +kernel
#print axioms cover_1468186

def state_1468202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 58) else (if j.val < 3 then 88 else (if j.val < 4 then 32 else 44)))
def hex_1468202 : String := "4441438340420505420744074143830505434005420544050505414340054483080805"
theorem cover_1468202 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468202 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1468202)
  decide +kernel
#print axioms cover_1468202

def state_1468238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 58) else (if j.val < 3 then 89 else (if j.val < 4 then 32 else 88)))
def hex_1468238 : String := "4143400A42830A4042440A050A4244414383400642074406064383054143830805440A0A434009424409050940054205440505"
theorem cover_1468238 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468238 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 51) (hex := hex_1468238)
  decide +kernel
#print axioms cover_1468238

def state_1468289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 58) else (if j.val < 3 then 89 else (if j.val < 4 then 32 else 89)))
def hex_1468289 : String := "414340084208080843400542050805"
theorem cover_1468289 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468289 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1468289)
  decide +kernel
#print axioms cover_1468289

def state_1468304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 58) else (if j.val < 3 then 44 else (if j.val < 4 then 33 else 44)))
def hex_1468304 : String := "40420508424441434005420544050505050544414340420506424407054441060541060540054205060508"
theorem cover_1468304 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468304 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1468304)
  decide +kernel
#print axioms cover_1468304

def state_1468347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 59) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 44)))
def hex_1468347 : String := "434005420544050505"
theorem cover_1468347 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468347 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1468347)
  decide +kernel
#print axioms cover_1468347

def state_1468356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 45)))
def hex_1468356 : String := "410805"
theorem cover_1468356 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468356 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1468356)
  decide +kernel
#print axioms cover_1468356

def state_1468359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 22)))
def hex_1468359 : String := "444143400A42440A0A0A400A424441430A4006420606430A05080A4340094244090909400A42050A410808"
theorem cover_1468359 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468359 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 43) (hex := hex_1468359)
  decide +kernel
#print axioms cover_1468359
end Mub6.Numerical.CircleFullD0.Forest
