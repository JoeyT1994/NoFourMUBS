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
def state_1555174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 119) else (if j.val < 3 then 211 else (if j.val < 4 then 83 else 86)))
def hex_1555174 : String := "44434105404244098909424443050A0505410A400A0A4305410540440A0A0A"
theorem cover_1555174 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555174 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1555174)
  decide +kernel
#print axioms cover_1555174

def state_1555205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 119) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 86)))
def hex_1555205 : String := "424443410540420A0A060A8944434105060A43050A"
theorem cover_1555205 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555205 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1555205)
  decide +kernel
#print axioms cover_1555205

def state_1555226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 87)))
def hex_1555226 : String := "41054305404442894305410540080542890544428905428905"
theorem cover_1555226 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555226 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_1555226)
  decide +kernel
#print axioms cover_1555226

def state_1555251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 59) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 43)))
def hex_1555251 : String := "42444143050943404244088944060506098944410543054042440A894443050A05420905410543054044050505"
theorem cover_1555251 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555251 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1555251)
  decide +kernel
#print axioms cover_1555251

def state_1555298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 58) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 42)))
def hex_1555298 : String := "430540424405050505"
theorem cover_1555298 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555298 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1555298)
  decide +kernel
#print axioms cover_1555298

def state_1555308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 59) else (if j.val < 3 then 53 else (if j.val < 4 then 40 else 42)))
def hex_1555308 : String := "4042060505"
theorem cover_1555308 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555308 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1555308)
  decide +kernel
#print axioms cover_1555308

def state_1555315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 106 else (if j.val < 4 then 41 else 42)))
def hex_1555315 : String := "4441430540424443060743050A4409054244060A06430640420606064143054042440505050543064042444306074309410A40070A44090942440643050A06"
theorem cover_1555315 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555315 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_1555315)
  decide +kernel
#print axioms cover_1555315

def state_1555378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 107 else (if j.val < 4 then 41 else 42)))
def hex_1555378 : String := "4441050641054305400905"
theorem cover_1555378 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555378 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1555378)
  decide +kernel
#print axioms cover_1555378

def state_1555389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 59) else (if j.val < 3 then 53 else (if j.val < 4 then 41 else 42)))
def hex_1555389 : String := "42440641050606"
theorem cover_1555389 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555389 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1555389)
  decide +kernel
#print axioms cover_1555389

def state_1555396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 43)))
def hex_1555396 : String := "4105430540444241054305404442430541054044090A0A05054405050505440505"
theorem cover_1555396 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555396 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 33) (hex := hex_1555396)
  decide +kernel
#print axioms cover_1555396
end Mub6.Numerical.CircleFullD0.Forest
