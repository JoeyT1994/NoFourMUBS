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
def state_1017776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 115) else (if j.val < 3 then 174 else (if j.val < 4 then 126 else 177)))
def hex_1017776 : String := "41434044420841080A080808430909"
theorem cover_1017776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017776 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1017776)
  decide +kernel
#print axioms cover_1017776

def state_1017791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 115) else (if j.val < 3 then 175 else (if j.val < 4 then 126 else 177)))
def hex_1017791 : String := "41434044424143404442080607068243058241074305824241070A0744424106430508060682434044050A440542090582"
theorem cover_1017791 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017791 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_1017791)
  decide +kernel
#print axioms cover_1017791

def state_1017840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 127 else 88)))
def hex_1017840 : String := "82"
theorem cover_1017840 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017840 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1017840)
  decide +kernel
#print axioms cover_1017840

def state_1017841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 63 else 89)))
def hex_1017841 : String := "4241050A41434007080543400A444241080941434007068243400A090A42080A400A448208"
theorem cover_1017841 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017841 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_1017841)
  decide +kernel
#print axioms cover_1017841

def state_1017878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 45)))
def hex_1017878 : String := "4241050A4107434007444241080A410643060A07400744420541050A07"
theorem cover_1017878 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017878 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1017878)
  decide +kernel
#print axioms cover_1017878

def state_1017908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 22)))
def hex_1017908 : String := "4044420A050A4442414305400A4407090505420A414305400A44050A05"
theorem cover_1017908 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017908 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1017908)
  decide +kernel
#print axioms cover_1017908

def state_1017937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 22)))
def hex_1017937 : String := "400A44424143400A09090941434044420A050A4442090542094143050905400A44420941434044420605094442070509820942090909420A0A"
theorem cover_1017937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017937 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 57) (hex := hex_1017937)
  decide +kernel
#print axioms cover_1017937

def state_1017994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 23)))
def hex_1017994 : String := "424143400A08050A41434007444241070A07074007444208070743400A44420A0A0A0A"
theorem cover_1017994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017994 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1017994)
  decide +kernel
#print axioms cover_1017994
end Mub6.Numerical.CircleFullD0.Forest
