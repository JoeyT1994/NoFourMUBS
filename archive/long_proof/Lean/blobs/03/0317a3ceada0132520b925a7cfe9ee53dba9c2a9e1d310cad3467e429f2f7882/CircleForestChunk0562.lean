import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_373747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 46) else (if j.val < 3 then 39 else (if j.val < 4 then 45 else 47)))
def hex_373747 : String := "44414309404205050A43080541430A404244419B05419B4340090A0544090A42440A0A0A43400942080940424405414305050505420505"
theorem cover_373747 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373747 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_373747)
  decide +kernel
#print axioms cover_373747

def state_373802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 47) else (if j.val < 3 then 19 else (if j.val < 4 then 22 else 23)))
def hex_373802 : String := "4443080843400742080940420807420841440543080505"
theorem cover_373802 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373802 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_373802)
  decide +kernel
#print axioms cover_373802

def state_373826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 22)))
def hex_373826 : String := "4006420505"
theorem cover_373826 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373826 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_373826)
  decide +kernel
#print axioms cover_373826

def state_373832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 23)))
def hex_373832 : String := "420A41434406420A06060A"
theorem cover_373832 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373832 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_373832)
  decide +kernel
#print axioms cover_373832

def state_373844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 23) else (if j.val < 3 then 18 else (if j.val < 4 then 23 else 23)))
def hex_373844 : String := "41434408400A080A0A"
theorem cover_373844 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373844 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_373844)
  decide +kernel
#print axioms cover_373844

def state_373856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 46) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 46)))
def hex_373856 : String := "400505"
theorem cover_373856 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373856 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_373856)
  decide +kernel
#print axioms cover_373856

def state_373860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 46) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 47)))
def hex_373860 : String := "424441430505054143400A420A440541439B05050A0A444105054143400642440541439B050544054105050505"
theorem cover_373860 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373860 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_373860)
  decide +kernel
#print axioms cover_373860

def state_373905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 46) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 47)))
def hex_373905 : String := "42444105054143420840440541439B0505440541050505054405414340424405414305050544050542440505050505"
theorem cover_373905 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373905 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_373905)
  decide +kernel
#print axioms cover_373905

def state_373952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 46) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 23)))
def hex_373952 : String := "4405400505"
theorem cover_373952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373952 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_373952)
  decide +kernel
#print axioms cover_373952

def state_373957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 47) else (if j.val < 3 then 19 else (if j.val < 4 then 23 else 23)))
def hex_373957 : String := "43440540050505"
theorem cover_373957 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373957 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_373957)
  decide +kernel
#print axioms cover_373957

def state_373965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
def hex_373965 : String := "44094109424409400943090909"
theorem cover_373965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373965 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_373965)
  decide +kernel
#print axioms cover_373965

def state_373979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
def hex_373979 : String := "4142070909"
theorem cover_373979 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373979 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_373979)
  decide +kernel
#print axioms cover_373979
end Mub6.Numerical.CircleFullPrototype.Forest
