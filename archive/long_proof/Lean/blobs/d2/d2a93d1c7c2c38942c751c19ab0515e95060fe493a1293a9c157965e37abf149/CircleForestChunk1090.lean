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
def state_1561909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 53 else (if j.val < 4 then 41 else 88)))
def hex_1561909 : String := "42430941404409424309414009440942080809094406424306414044064243064107060606060640090609"
theorem cover_1561909 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561909 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 43) (hex := hex_1561909)
  decide +kernel
#print axioms cover_1561909

def state_1561953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 106 else (if j.val < 4 then 41 else 89)))
def hex_1561953 : String := "43410706414044424309410840084409080942430708074442430741074044060706070740440942430941400844080705094406424306414007060606"
theorem cover_1561953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561953 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1561953)
  decide +kernel
#print axioms cover_1561953

def state_1562014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 107 else (if j.val < 4 then 41 else 89)))
def hex_1562014 : String := "43094140090709"
theorem cover_1562014 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562014 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1562014)
  decide +kernel
#print axioms cover_1562014

def state_1562021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 53 else (if j.val < 4 then 41 else 44)))
def hex_1562021 : String := "440642430641070606"
theorem cover_1562021 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562021 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1562021)
  decide +kernel
#print axioms cover_1562021

def state_1562032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 45)))
def hex_1562032 : String := "4107400707"
theorem cover_1562032 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562032 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1562032)
  decide +kernel
#print axioms cover_1562032

def state_1562038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 60) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 45)))
def hex_1562038 : String := "40444243074106400607070707"
theorem cover_1562038 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562038 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1562038)
  decide +kernel
#print axioms cover_1562038

def state_1562054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 90)))
def hex_1562054 : String := "434107404442050A0A4442430605070741404442050808444209430709074005440505"
theorem cover_1562054 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562054 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 35) (hex := hex_1562054)
  decide +kernel
#print axioms cover_1562054

def state_1562089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 90)))
def hex_1562089 : String := "4341074007074140444208070707404442430505430A084208074442430705430741070507"
theorem cover_1562089 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562089 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1562089)
  decide +kernel
#print axioms cover_1562089

def state_1562126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 91)))
def hex_1562126 : String := "424307410740050707"
theorem cover_1562126 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562126 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1562126)
  decide +kernel
#print axioms cover_1562126

def state_1562135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 45)))
def hex_1562135 : String := "444243074109404442054307050909430741074044420707070707"
theorem cover_1562135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562135 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1562135)
  decide +kernel
#print axioms cover_1562135
end Mub6.Numerical.CircleFullD0.Forest
