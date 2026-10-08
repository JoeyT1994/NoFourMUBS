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
def state_176154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 38 else (if j.val < 4 then 30 else 48)))
def hex_176154 : String := "4344410540054205434441059505444105950505444105400542054344410506050505"
theorem cover_176154 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176154 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_176154)
  decide +kernel
#print axioms cover_176154

def state_176189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 39 else (if j.val < 4 then 30 else 48)))
def hex_176189 : String := "43444108400842430844410895080808444140050A4042434409050909424344410A40090A4105054409050A05"
theorem cover_176189 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176189 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_176189)
  decide +kernel
#print axioms cover_176189

def state_176234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 49) else (if j.val < 3 then 19 else (if j.val < 4 then 30 else 48)))
def hex_176234 : String := "4243444142050A4206404344410795084441069506430706410542054005060643444108404243080A080A08440A41054042050806"
theorem cover_176234 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176234 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_176234)
  decide +kernel
#print axioms cover_176234

def state_176287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 49) else (if j.val < 3 then 19 else (if j.val < 4 then 30 else 49)))
def hex_176287 : String := "4005420508"
theorem cover_176287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176287 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_176287)
  decide +kernel
#print axioms cover_176287

def state_176292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 19 else (if j.val < 4 then 31 else 24)))
def hex_176292 : String := "410544404205434441050905440905420643440A060605"
theorem cover_176292 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176292 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_176292)
  decide +kernel
#print axioms cover_176292

def state_176315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 25)))
def hex_176315 : String := "05"
theorem cover_176315 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176315 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_176315)
  decide +kernel
#print axioms cover_176315

def state_176318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 24)))
def hex_176318 : String := "42430A0A43444142400A43444142054007430A070A0A4407074007434441424007430607060741080707420707414205400543080707440707"
theorem cover_176318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176318 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 57) (hex := hex_176318)
  decide +kernel
#print axioms cover_176318

def state_176376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 15 else 24)))
def hex_176376 : String := "43444140420643444140050608060606400A060606"
theorem cover_176376 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176376 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 21) (hex := hex_176376)
  decide +kernel
#print axioms cover_176376
end Mub6.Numerical.CircleFullPrototype.Forest
