import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_51467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 10)))
def hex_51467 : String := "420A4344404209414305054342094005440905090A40420A050A440A0A"
theorem cover_51467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51467 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 29) (hex := hex_51467)
  decide +kernel
#print axioms cover_51467

def state_51497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 10)))
def hex_51497 : String := "4344090609"
theorem cover_51497 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51497 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_51497)
  decide +kernel
#print axioms cover_51497

def state_51504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 20)))
def hex_51504 : String := "4041420943420940410909410944090909420643414206400644090606094142094340420941094409090A094205434041420544050A050509"
theorem cover_51504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51504 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_51504)
  decide +kernel
#print axioms cover_51504

def state_51561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 21)))
def hex_51561 : String := "4041420A43444240060A4005410507070742060741420A43440A080A4206434440410A060A40060A0A"
theorem cover_51561 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51561 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_51561)
  decide +kernel
#print axioms cover_51561

def state_51602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 10)))
def hex_51602 : String := "44404109070940070A"
theorem cover_51602 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51602 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_51602)
  decide +kernel
#print axioms cover_51602

def state_51611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
def hex_51611 : String := "404142434440050805070542070741420A434440050808440A0A420A434440414207050741420843080A4206434407070740074142080807440707"
theorem cover_51611 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51611 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_51611)
  decide +kernel
#print axioms cover_51611

def state_51670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 5)))
def hex_51670 : String := "444007410A0A40070A"
theorem cover_51670 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51670 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_51670)
  decide +kernel
#print axioms cover_51670

def state_51679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
def hex_51679 : String := "444041420706074106420508440707"
theorem cover_51679 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51679 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_51679)
  decide +kernel
#print axioms cover_51679
end Mub6.Numerical.CircleFullPrototype.Forest
