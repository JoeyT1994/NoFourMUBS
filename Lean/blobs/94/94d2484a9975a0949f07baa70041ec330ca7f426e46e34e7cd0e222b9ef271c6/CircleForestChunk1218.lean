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
def state_1592693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 38) else (if j.val < 3 then 100 else (if j.val < 4 then 56 else 51)))
def hex_1592693 : String := "44414340420544410905050540420A444341094007050A430505054305404205444143050505050505"
theorem cover_1592693 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592693 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_1592693)
  decide +kernel
#print axioms cover_1592693

def state_1592734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 38) else (if j.val < 3 then 101 else (if j.val < 4 then 56 else 51)))
def hex_1592734 : String := "4441434042440907094205084042440907094244430509050843404244070507054042440707074205444109050541434007054006054305400705"
theorem cover_1592734 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592734 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_1592734)
  decide +kernel
#print axioms cover_1592734

def state_1592794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 57 else 51)))
def hex_1592794 : String := "42440A0606"
theorem cover_1592794 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592794 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1592794)
  decide +kernel
#print axioms cover_1592794

def state_1592800 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 38) else (if j.val < 3 then 100 else (if j.val < 4 then 57 else 51)))
def hex_1592800 : String := "444143400A4205440A050A43400A050A4143050605"
theorem cover_1592800 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592800 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1592800)
  decide +kernel
#print axioms cover_1592800

def state_1592822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 38) else (if j.val < 3 then 101 else (if j.val < 4 then 57 else 102)))
def hex_1592822 : String := "414340064244430909430505440808064340420706424441430505050544410943070741430505054006420A44410643070606"
theorem cover_1592822 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592822 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_1592822)
  decide +kernel
#print axioms cover_1592822

def state_1592873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 38) else (if j.val < 3 then 101 else (if j.val < 4 then 57 else 103)))
def hex_1592873 : String := "41434006420506064340060506"
theorem cover_1592873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592873 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1592873)
  decide +kernel
#print axioms cover_1592873

def state_1592887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 39) else (if j.val < 3 then 50 else (if j.val < 4 then 56 else 51)))
def hex_1592887 : String := "4042444107070707420544414340070540070543050505"
theorem cover_1592887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592887 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1592887)
  decide +kernel
#print axioms cover_1592887
end Mub6.Numerical.CircleFullD0.Forest
