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
def state_2299151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 45)))
def hex_2299151 : String := "424344414006424344060606064007420743090641400642430A060A4008424344090805430A0806434441060A0A06"
theorem cover_2299151 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299151 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_2299151)
  decide +kernel
#print axioms cover_2299151

def state_2299198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 45)))
def hex_2299198 : String := "4243440740054108050743444008090808"
theorem cover_2299198 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299198 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_2299198)
  decide +kernel
#print axioms cover_2299198

def state_2299220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 90)))
def hex_2299220 : String := "4142434441054009054140060540430906C44406064344054105400A0506424344094009094407400741C407434409400941C409444006094041060841C409"
theorem cover_2299220 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299220 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 63) (hex := hex_2299220)
  decide +kernel
#print axioms cover_2299220

def state_2299283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 90)))
def hex_2299283 : String := "41C44243444009054041C4094105094440094105094041C40941C442090943440540410509054440410509054041C409410542430509430509"
theorem cover_2299283 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299283 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_2299283)
  decide +kernel
#print axioms cover_2299283

def state_2299342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 91)))
def hex_2299342 : String := "42434441400AC440434244090A0A0AC441400AC440430A0AC44441064006C441064006C44344410A400AC4410A400AC4440606"
theorem cover_2299342 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299342 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_2299342)
  decide +kernel
#print axioms cover_2299342
end Mub6.Numerical.CircleFullD0.Forest
