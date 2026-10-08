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
def state_940883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
def hex_940883 : String := "4344414440060A07440A07074441434440420A440A0A0A40090A44400A0A094344400A0A0A440A0A4109430709"
theorem cover_940883 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940883 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_940883)
  decide +kernel
#print axioms cover_940883

def state_940936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 12)))
def hex_940936 : String := "43420544084005054205440805"
theorem cover_940936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940936 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_940936)
  decide +kernel
#print axioms cover_940936

def state_940950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 12)))
def hex_940950 : String := "4244400808400941054342440A0544084005410543420506050544400808404106430606414306054342440840064105064408064244080508"
theorem cover_940950 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940950 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_940950)
  decide +kernel
#print axioms cover_940950

def state_941007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 12)))
def hex_941007 : String := "42440A054408400941054342050805"
theorem cover_941007 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941007 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_941007)
  decide +kernel
#print axioms cover_941007

def state_941022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 13)))
def hex_941022 : String := "410543420940064441054306050505"
theorem cover_941022 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941022 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_941022)
  decide +kernel
#print axioms cover_941022

def state_941038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 12)))
def hex_941038 : String := "414306440840060843444006420808400642410643064408060644400808404241060806424108430808410808"
theorem cover_941038 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941038 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_941038)
  decide +kernel
#print axioms cover_941038

def state_941083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 13)))
def hex_941083 : String := "4106430640064244410543400542050605054441060606"
theorem cover_941083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941083 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 23) (hex := hex_941083)
  decide +kernel
#print axioms cover_941083

def state_941109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 12)))
def hex_941109 : String := "43404205440805420544070505"
theorem cover_941109 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941109 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_941109)
  decide +kernel
#print axioms cover_941109

def state_941126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 24)))
def hex_941126 : String := "414342070805434244074008070807"
theorem cover_941126 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941126 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_941126)
  decide +kernel
#print axioms cover_941126

def state_941142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 25)))
def hex_941142 : String := "430505"
theorem cover_941142 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941142 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_941142)
  decide +kernel
#print axioms cover_941142
end Mub6.Numerical.CircleFullD0.Forest
