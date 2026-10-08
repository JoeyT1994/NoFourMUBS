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
def state_1558877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 22)))
def hex_1558877 : String := "4105404442410743074044424143050643404489070740060941054305404442060505054207074442410543050905074105430505074442070507"
theorem cover_1558877 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558877 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 59) (hex := hex_1558877)
  decide +kernel
#print axioms cover_1558877

def state_1558936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 22)))
def hex_1558936 : String := "4140060540444243410640444206434105060606090643410540444243050605420605444243050905054106400609420943070644420943050909"
theorem cover_1558936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558936 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_1558936)
  decide +kernel
#print axioms cover_1558936

def state_1558995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 27 else (if j.val < 4 then 10 else 22)))
def hex_1558995 : String := "4305410540444305410542400805050505"
theorem cover_1558995 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558995 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1558995)
  decide +kernel
#print axioms cover_1558995

def state_1559012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 23)))
def hex_1559012 : String := "424307410644090707"
theorem cover_1559012 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559012 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1559012)
  decide +kernel
#print axioms cover_1559012

def state_1559027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 22)))
def hex_1559027 : String := "4442430941064006440908094243080608"
theorem cover_1559027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559027 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1559027)
  decide +kernel
#print axioms cover_1559027

def state_1559047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 44)))
def hex_1559047 : String := "414044420A090A4442430A4140440A084489074009440A0A0942430741070A07400944090A"
theorem cover_1559047 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559047 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_1559047)
  decide +kernel
#print axioms cover_1559047

def state_1559086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 60) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 44)))
def hex_1559086 : String := "444243080643080608"
theorem cover_1559086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559086 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1559086)
  decide +kernel
#print axioms cover_1559086
end Mub6.Numerical.CircleFullD0.Forest
