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
def state_1633997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 25 else 8)))
def hex_1633997 : String := "404142440943414207094207090944094341404209060940060941090642440943424007074006094207060641420909420909"
theorem cover_1633997 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633997 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1633997)
  decide +kernel
#print axioms cover_1633997

def state_1634052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 9)))
def hex_1634052 : String := "4443054142054440430541050505050505"
theorem cover_1634052 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634052 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1634052)
  decide +kernel
#print axioms cover_1634052

def state_1634071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 18)))
def hex_1634071 : String := "414440420505050505"
theorem cover_1634071 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634071 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1634071)
  decide +kernel
#print axioms cover_1634071

def state_1634081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 52) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 18)))
def hex_1634081 : String := "4440424305414044420543050642050505054341404205050505414042440606064205440605400605420505404205430541444042050505050505"
theorem cover_1634081 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634081 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_1634081)
  decide +kernel
#print axioms cover_1634081

def state_1634140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 53) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 18)))
def hex_1634140 : String := "44404205060505"
theorem cover_1634140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634140 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1634140)
  decide +kernel
#print axioms cover_1634140

def state_1634147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 19)))
def hex_1634147 : String := "4305410505"
theorem cover_1634147 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634147 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1634147)
  decide +kernel
#print axioms cover_1634147

def state_1634152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 9)))
def hex_1634152 : String := "4205444305444006050505"
theorem cover_1634152 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634152 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1634152)
  decide +kernel
#print axioms cover_1634152

def state_1634163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 9)))
def hex_1634163 : String := "4142050505"
theorem cover_1634163 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634163 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1634163)
  decide +kernel
#print axioms cover_1634163

def state_1634171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 25 else 9)))
def hex_1634171 : String := "444341420744404341070707074043050705420544404305070505410707434142050505410707"
theorem cover_1634171 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634171 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1634171)
  decide +kernel
#print axioms cover_1634171

def state_1634214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 52) else (if j.val < 3 then 27 else (if j.val < 4 then 50 else 36)))
def hex_1634214 : String := "4042434140444209060A4409420505400A09410909434140064209060606420909"
theorem cover_1634214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634214 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1634214)
  decide +kernel
#print axioms cover_1634214
end Mub6.Numerical.CircleFullD0.Forest
