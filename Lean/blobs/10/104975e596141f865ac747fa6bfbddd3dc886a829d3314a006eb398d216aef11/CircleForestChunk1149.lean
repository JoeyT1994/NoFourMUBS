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
def state_1576184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 51 else 50)))
def hex_1576184 : String := "4041424405430505054208074142440943090909424406430640080609"
theorem cover_1576184 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576184 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_1576184)
  decide +kernel
#print axioms cover_1576184

def state_1576214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 51 else 51)))
def hex_1576214 : String := "414243074405070707"
theorem cover_1576214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576214 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1576214)
  decide +kernel
#print axioms cover_1576214

def state_1576226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 102 else 51)))
def hex_1576226 : String := "44404142430744050707074142430644060A090A40074142430AD00707"
theorem cover_1576226 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576226 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_1576226)
  decide +kernel
#print axioms cover_1576226

def state_1576255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 103 else 51)))
def hex_1576255 : String := "444041424405050542080741424409D009424443060943400706400841D00844094307074041424307440506070741D0424344070744400741D00707430707"
theorem cover_1576255 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576255 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_1576255)
  decide +kernel
#print axioms cover_1576255

def state_1576318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 32) else (if j.val < 3 then 97 else (if j.val < 4 then 51 else 51)))
def hex_1576318 : String := "430A4409400741424307070707"
theorem cover_1576318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576318 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1576318)
  decide +kernel
#print axioms cover_1576318

def state_1576331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 33) else (if j.val < 3 then 48 else (if j.val < 4 then 51 else 51)))
def hex_1576331 : String := "4243444007060744400741424406084407074206074007414243070707074307440707"
theorem cover_1576331 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576331 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1576331)
  decide +kernel
#print axioms cover_1576331

def state_1576366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 25 else 25)))
def hex_1576366 : String := "430A440940070A"
theorem cover_1576366 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576366 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1576366)
  decide +kernel
#print axioms cover_1576366

def state_1576373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 17) else (if j.val < 3 then 24 else (if j.val < 4 then 25 else 25)))
def hex_1576373 : String := "4243440607444008414206440607064007414243070807074307440A07"
theorem cover_1576373 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576373 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1576373)
  decide +kernel
#print axioms cover_1576373

def state_1576405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 50 else 25)))
def hex_1576405 : String := "4406400A06"
theorem cover_1576405 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576405 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1576405)
  decide +kernel
#print axioms cover_1576405

def state_1576411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 51 else 50)))
def hex_1576411 : String := "40414206090606"
theorem cover_1576411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576411 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1576411)
  decide +kernel
#print axioms cover_1576411

def state_1576422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 102 else 51)))
def hex_1576422 : String := "44064041424306D00A0A4142060A06"
theorem cover_1576422 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576422 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1576422)
  decide +kernel
#print axioms cover_1576422
end Mub6.Numerical.CircleFullD0.Forest
