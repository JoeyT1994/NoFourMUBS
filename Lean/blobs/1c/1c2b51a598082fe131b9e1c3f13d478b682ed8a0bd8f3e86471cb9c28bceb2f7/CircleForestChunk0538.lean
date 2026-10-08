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
def state_1317816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 102 else 100)))
def hex_1317816 : String := "42410540064408430742070505"
theorem cover_1317816 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317816 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1317816)
  decide +kernel
#print axioms cover_1317816

def state_1317829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 103 else 100)))
def hex_1317829 : String := "4241404409430509444305094305420A05404409434241090909094443420A080943424140440A4305090A0A4105400908420A09410509"
theorem cover_1317829 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317829 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_1317829)
  decide +kernel
#print axioms cover_1317829

def state_1317885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 102 else 101)))
def hex_1317885 : String := "42410540444305420705074443054207050505"
theorem cover_1317885 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317885 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1317885)
  decide +kernel
#print axioms cover_1317885

def state_1317905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 61) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 101)))
def hex_1317905 : String := "414044430542410509050505404443420741050909434207050844434207054241404409080A40090A41050943420705424106074105404409054443050905"
theorem cover_1317905 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317905 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1317905)
  decide +kernel
#print axioms cover_1317905

def state_1317968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 61) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 101)))
def hex_1317968 : String := "05"
theorem cover_1317968 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317968 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1317968)
  decide +kernel
#print axioms cover_1317968

def state_1317969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 50)))
def hex_1317969 : String := "444308424140440843050A080A084342410507054241054044434207050A43420705420605440A0605"
theorem cover_1317969 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317969 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1317969)
  decide +kernel
#print axioms cover_1317969

def state_1318010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 51)))
def hex_1318010 : String := "4207410540430544424105400844430508070505430544424105404443050605060505"
theorem cover_1318010 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318010 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_1318010)
  decide +kernel
#print axioms cover_1318010
end Mub6.Numerical.CircleFullD0.Forest
