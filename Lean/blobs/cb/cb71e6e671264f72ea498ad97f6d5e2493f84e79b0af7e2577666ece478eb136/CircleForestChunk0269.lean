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
def state_139956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
def hex_139956 : String := "41074209434440074107090907"
theorem cover_139956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139956 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_139956)
  decide +kernel
#print axioms cover_139956

def state_139970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
def hex_139970 : String := "42054344400741054205070507"
theorem cover_139970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139970 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_139970)
  decide +kernel
#print axioms cover_139970

def state_139984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 7)))
def hex_139984 : String := "4344400942054105090509"
theorem cover_139984 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139984 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_139984)
  decide +kernel
#print axioms cover_139984

def state_139998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 14)))
def hex_139998 : String := "41424344070507074209434440074407074007444107090907"
theorem cover_139998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139998 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_139998)
  decide +kernel
#print axioms cover_139998

def state_140023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 14)))
def hex_140023 : String := "414206434406050742434406054406094344064044414205074209434007060741420507420943400941054205430505074406410542054305054406400706"
theorem cover_140023 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140023 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 63) (hex := hex_140023)
  decide +kernel
#print axioms cover_140023

def state_140086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 15)))
def hex_140086 : String := "40094105420543444009050509"
theorem cover_140086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140086 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_140086)
  decide +kernel
#print axioms cover_140086

def state_140099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 7)))
def hex_140099 : String := "4440094341074209440607410742090709"
theorem cover_140099 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140099 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_140099)
  decide +kernel
#print axioms cover_140099

def state_140118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 6)))
def hex_140118 : String := "4041074407424308070741440742430A0707440942430940410744080A4109094308400709"
theorem cover_140118 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140118 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_140118)
  decide +kernel
#print axioms cover_140118

def state_140155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 7)))
def hex_140155 : String := "40410A420A0A4142430A44400741070A0A0A42430A44400A410A42430A44400A090A0A0A0A"
theorem cover_140155 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140155 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 37) (hex := hex_140155)
  decide +kernel
#print axioms cover_140155

def state_140193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 6)))
def hex_140193 : String := "400741074344074240074106434405420607060707"
theorem cover_140193 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140193 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 21) (hex := hex_140193)
  decide +kernel
#print axioms cover_140193

def state_140215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
def hex_140215 : String := "07"
theorem cover_140215 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140215 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_140215)
  decide +kernel
#print axioms cover_140215

def state_140217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
def hex_140217 : String := "07"
theorem cover_140217 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140217 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_140217)
  decide +kernel
#print axioms cover_140217
end Mub6.Numerical.CircleFullPrototype.Forest
