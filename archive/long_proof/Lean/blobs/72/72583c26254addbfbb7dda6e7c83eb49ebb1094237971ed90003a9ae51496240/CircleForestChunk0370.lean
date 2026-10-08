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
def state_1026162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 24)))
def hex_1026162 : String := "400A4409434241400A0907414044094342090A0A09400A090A"
theorem cover_1026162 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026162 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 25) (hex := hex_1026162)
  decide +kernel
#print axioms cover_1026162

def state_1026189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 24)))
def hex_1026189 : String := "444342414405400543050505050A43424140074443070A07400544050A050A"
theorem cover_1026189 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026189 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1026189)
  decide +kernel
#print axioms cover_1026189

def state_1026221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 48)))
def hex_1026221 : String := "434241404408430842090506094105054241400A090905"
theorem cover_1026221 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026221 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1026221)
  decide +kernel
#print axioms cover_1026221

def state_1026245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 19 else (if j.val < 4 then 52 else 49)))
def hex_1026245 : String := "4241404443424106400806064241060A0643074241060A06064044430805434241404405070608050A4409434209064209064106400506"
theorem cover_1026245 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026245 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1026245)
  decide +kernel
#print axioms cover_1026245

def state_1026300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 19 else (if j.val < 4 then 53 else 49)))
def hex_1026300 : String := "4241400A44430606430606400A4409434209060A4106400506"
theorem cover_1026300 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026300 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1026300)
  decide +kernel
#print axioms cover_1026300

def state_1026325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 24)))
def hex_1026325 : String := "404405430505444305054342414044054305050940050905420A05"
theorem cover_1026325 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026325 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1026325)
  decide +kernel
#print axioms cover_1026325

def state_1026352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 24)))
def hex_1026352 : String := "420A41400A44420A0A420A0A0A"
theorem cover_1026352 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026352 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_1026352)
  decide +kernel
#print axioms cover_1026352

def state_1026369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 25)))
def hex_1026369 : String := "44434241400A440A080A4140074443070A070A0A4342410840090841074007440A0708"
theorem cover_1026369 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026369 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1026369)
  decide +kernel
#print axioms cover_1026369
end Mub6.Numerical.CircleFullD0.Forest
