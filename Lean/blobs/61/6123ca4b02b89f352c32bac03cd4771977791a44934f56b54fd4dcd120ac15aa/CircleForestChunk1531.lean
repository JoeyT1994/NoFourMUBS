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
def state_2240987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 8 else 8)))
def hex_2240987 : String := "434440414205070541420707420543444041420507054142070742054344E74005074440050705400541070544400541070505400541070544400541070505"
theorem cover_2240987 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240987 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 63) (hex := hex_2240987)
  decide +kernel
#print axioms cover_2240987

def state_2241050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 9)))
def hex_2241050 : String := "4005410705"
theorem cover_2241050 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241050 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2241050)
  decide +kernel
#print axioms cover_2241050

def state_2241055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 9 else 4)))
def hex_2241055 : String := "44400541070505"
theorem cover_2241055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241055 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2241055)
  decide +kernel
#print axioms cover_2241055

def state_2241062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 4)))
def hex_2241062 : String := "434442400A4107434442400A4107434442400A410743440A07070A420707440A070A42400707400707440A070A424041070507400A07440A07"
theorem cover_2241062 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241062 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 18) (count := 57) (hex := hex_2241062)
  decide +kernel
#print axioms cover_2241062

def state_2241120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 4)))
def hex_2241120 : String := "05"
theorem cover_2241120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241120 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2241120)
  decide +kernel
#print axioms cover_2241120

def state_2241126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 8)))
def hex_2241126 : String := "05"
theorem cover_2241126 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241126 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2241126)
  decide +kernel
#print axioms cover_2241126

def state_2241130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 44) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 16)))
def hex_2241130 : String := "4240054344414240054344E7414205060544410A0505400943440942410606080A42050941420540054443060706054441420509050540094344090809"
theorem cover_2241130 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241130 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_2241130)
  decide +kernel
#print axioms cover_2241130

def state_2241191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 45) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 16)))
def hex_2241191 : String := "420509"
theorem cover_2241191 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241191 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2241191)
  decide +kernel
#print axioms cover_2241191

def state_2241194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 17)))
def hex_2241194 : String := "41420540054443064205070605"
theorem cover_2241194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241194 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2241194)
  decide +kernel
#print axioms cover_2241194

def state_2241207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 8)))
def hex_2241207 : String := "44414205090505"
theorem cover_2241207 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241207 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2241207)
  decide +kernel
#print axioms cover_2241207

def state_2241214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 8 else 8)))
def hex_2241214 : String := "40094344090809"
theorem cover_2241214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241214 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2241214)
  decide +kernel
#print axioms cover_2241214

def state_2241221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 8)))
def hex_2241221 : String := "420509"
theorem cover_2241221 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241221 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2241221)
  decide +kernel
#print axioms cover_2241221

def state_2241224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 9)))
def hex_2241224 : String := "414205400544080605"
theorem cover_2241224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241224 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2241224)
  decide +kernel
#print axioms cover_2241224

def state_2241233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 4)))
def hex_2241233 : String := "44414205090505"
theorem cover_2241233 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241233 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2241233)
  decide +kernel
#print axioms cover_2241233
end Mub6.Numerical.CircleFullD0.Forest
