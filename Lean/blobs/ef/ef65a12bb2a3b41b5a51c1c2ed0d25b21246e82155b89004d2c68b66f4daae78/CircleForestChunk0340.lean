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
def state_1018982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 25)))
def hex_1018982 : String := "414205400905420540434441050505444105420540090508430505"
theorem cover_1018982 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018982 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1018982)
  decide +kernel
#print axioms cover_1018982

def state_1019010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
def hex_1019010 : String := "43074441074244400743074107420A07070707"
theorem cover_1019010 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019010 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_1019010)
  decide +kernel
#print axioms cover_1019010

def state_1019030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 12)))
def hex_1019030 : String := "444107424043074408070A0741074240070A07"
theorem cover_1019030 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019030 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1019030)
  decide +kernel
#print axioms cover_1019030

def state_1019051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 24)))
def hex_1019051 : String := "4240444307070744060606"
theorem cover_1019051 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019051 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1019051)
  decide +kernel
#print axioms cover_1019051

def state_1019066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 48)))
def hex_1019066 : String := "4142440707074244084007430741070808"
theorem cover_1019066 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019066 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1019066)
  decide +kernel
#print axioms cover_1019066

def state_1019084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 58) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 48)))
def hex_1019084 : String := "424440430707434107424440070505074142050742444043070A0540070544400743070907400743070707"
theorem cover_1019084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019084 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_1019084)
  decide +kernel
#print axioms cover_1019084

def state_1019129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 59) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 96)))
def hex_1019129 : String := "4043080A4341424408400805080841424409400A094409400709420908"
theorem cover_1019129 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019129 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_1019129)
  decide +kernel
#print axioms cover_1019129

def state_1019158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 59) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 97)))
def hex_1019158 : String := "4043070A4341424440070505074244400809404305070508414244400A0505444007430707074244400A09400A43050544400A09400743070A"
theorem cover_1019158 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019158 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_1019158)
  decide +kernel
#print axioms cover_1019158

def state_1019215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 59) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 48)))
def hex_1019215 : String := "444008084007430742410744080707"
theorem cover_1019215 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019215 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1019215)
  decide +kernel
#print axioms cover_1019215
end Mub6.Numerical.CircleFullD0.Forest
