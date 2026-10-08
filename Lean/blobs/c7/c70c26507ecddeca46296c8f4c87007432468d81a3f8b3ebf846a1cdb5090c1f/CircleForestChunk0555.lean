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
def state_1322031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 63) else (if j.val < 3 then 62 else (if j.val < 4 then 43 else 44)))
def hex_1322031 : String := "444006434206410A074206410A060A"
theorem cover_1322031 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322031 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1322031)
  decide +kernel
#print axioms cover_1322031

def state_1322046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 63) else (if j.val < 3 then 63 else (if j.val < 4 then 43 else 44)))
def hex_1322046 : String := "44404305414206050543410905414244400A430A0A0A444043054107E143094109E140050942444006434206E14206E140050AE140054305410A05"
theorem cover_1322046 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322046 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_1322046)
  decide +kernel
#print axioms cover_1322046

def state_1322105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 45)))
def hex_1322105 : String := "400543050A"
theorem cover_1322105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322105 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1322105)
  decide +kernel
#print axioms cover_1322105

def state_1322110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 23)))
def hex_1322110 : String := "4043050A430A0A"
theorem cover_1322110 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322110 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_1322110)
  decide +kernel
#print axioms cover_1322110

def state_1322119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 10)))
def hex_1322119 : String := "42434044050A05054340074405410542050707"
theorem cover_1322119 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322119 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1322119)
  decide +kernel
#print axioms cover_1322119

def state_1322139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 10)))
def hex_1322139 : String := "434044420507064405420541054306054044050605"
theorem cover_1322139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322139 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1322139)
  decide +kernel
#print axioms cover_1322139

def state_1322162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 10)))
def hex_1322162 : String := "07"
theorem cover_1322162 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322162 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1322162)
  decide +kernel
#print axioms cover_1322162

def state_1322164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 20)))
def hex_1322164 : String := "07"
theorem cover_1322164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322164 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1322164)
  decide +kernel
#print axioms cover_1322164

def state_1322166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 30) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 21)))
def hex_1322166 : String := "42434044050A050507"
theorem cover_1322166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322166 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1322166)
  decide +kernel
#print axioms cover_1322166

def state_1322176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 31) else (if j.val < 3 then 30 else (if j.val < 4 then 22 else 21)))
def hex_1322176 : String := "4340440606440542054105430605400705"
theorem cover_1322176 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322176 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1322176)
  decide +kernel
#print axioms cover_1322176

def state_1322193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 22 else 21)))
def hex_1322193 : String := "43400744074142434007050507424340064405420641434006050506400605434007440741424340074405410542050707074243400644074206E107E10707"
theorem cover_1322193 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322193 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 16) (count := 63) (hex := hex_1322193)
  decide +kernel
#print axioms cover_1322193

def state_1322256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 10)))
def hex_1322256 : String := "400744054105420507"
theorem cover_1322256 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322256 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1322256)
  decide +kernel
#print axioms cover_1322256

def state_1322266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 11)))
def hex_1322266 : String := "420A430A08"
theorem cover_1322266 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322266 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1322266)
  decide +kernel
#print axioms cover_1322266

def state_1322272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 11)))
def hex_1322272 : String := "430A0A"
theorem cover_1322272 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322272 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1322272)
  decide +kernel
#print axioms cover_1322272

def state_1322278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 22)))
def hex_1322278 : String := "4108420608"
theorem cover_1322278 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322278 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1322278)
  decide +kernel
#print axioms cover_1322278

def state_1322284 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 30) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 22)))
def hex_1322284 : String := "420A434440070A0808"
theorem cover_1322284 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322284 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1322284)
  decide +kernel
#print axioms cover_1322284
end Mub6.Numerical.CircleFullD0.Forest
