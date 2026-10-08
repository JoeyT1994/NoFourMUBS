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
def state_995974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 87)))
def hex_995974 : String := "404443C64107420909074443C64109424044090808400944090943C64107420809"
theorem cover_995974 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995974 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_995974)
  decide +kernel
#print axioms cover_995974

def state_996008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 87)))
def hex_996008 : String := "4443C64241400644060A0641400544054305050543C642410A0641400744430707070A"
theorem cover_996008 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996008 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_996008)
  decide +kernel
#print axioms cover_996008

def state_996045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 210 else 174)))
def hex_996045 : String := "C6"
theorem cover_996045 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996045 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_996045)
  decide +kernel
#print axioms cover_996045

def state_996047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 109) else (if j.val < 3 then 144 else (if j.val < 4 then 211 else 174)))
def hex_996047 : String := "41404443C6420641090543C6420A41080A4443C64208410840050743C6084006440743C642064140060705"
theorem cover_996047 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996047 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_996047)
  decide +kernel
#print axioms cover_996047

def state_996090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 109) else (if j.val < 3 then 145 else (if j.val < 4 then 211 else 174)))
def hex_996090 : String := "41404405430542410905054443054241400508050543C6424108400544050841050505"
theorem cover_996090 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996090 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_996090)
  decide +kernel
#print axioms cover_996090

def state_996126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 210 else 175)))
def hex_996126 : String := "C6"
theorem cover_996126 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996126 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_996126)
  decide +kernel
#print axioms cover_996126

def state_996128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 109) else (if j.val < 3 then 144 else (if j.val < 4 then 211 else 175)))
def hex_996128 : String := "41404443C60A43C6084443C6080840440A0A4443C6420A410A0A43C60A"
theorem cover_996128 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996128 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_996128)
  decide +kernel
#print axioms cover_996128

def state_996158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 218) else (if j.val < 3 then 145 else (if j.val < 4 then 211 else 175)))
def hex_996158 : String := "404443C64209094307074443C64241084008084108400544050643C6420809"
theorem cover_996158 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996158 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_996158)
  decide +kernel
#print axioms cover_996158

def state_996189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 219) else (if j.val < 3 then 145 else (if j.val < 4 then 211 else 175)))
def hex_996189 : String := "404443050543C60A4443054241400A44050A050543C64241400A080A414005440543050805"
theorem cover_996189 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996189 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_996189)
  decide +kernel
#print axioms cover_996189
end Mub6.Numerical.CircleFullD0.Forest
