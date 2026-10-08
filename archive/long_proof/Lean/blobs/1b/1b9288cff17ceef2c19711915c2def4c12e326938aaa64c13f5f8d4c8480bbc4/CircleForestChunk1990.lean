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
def state_2558227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 114 else (if j.val < 4 then 116 else 192)))
def hex_2558227 : String := "4140420505054042434405410540090544054105094344054105400A0544054105400605420505"
theorem cover_2558227 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558227 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_2558227)
  decide +kernel
#print axioms cover_2558227

def state_2558266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 114 else (if j.val < 4 then 116 else 193)))
def hex_2558266 : String := "4140420A0A054042430A44410A400A090A430A0A4243070707"
theorem cover_2558266 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558266 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_2558266)
  decide +kernel
#print axioms cover_2558266

def state_2558292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 114 else (if j.val < 4 then 117 else 192)))
def hex_2558292 : String := "41054042434405410509060605"
theorem cover_2558292 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558292 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2558292)
  decide +kernel
#print axioms cover_2558292

def state_2558306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 188) else (if j.val < 3 then 114 else (if j.val < 4 then 117 else 193)))
def hex_2558306 : String := "4042430A060605"
theorem cover_2558306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558306 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2558306)
  decide +kernel
#print axioms cover_2558306

def state_2558313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 189) else (if j.val < 3 then 114 else (if j.val < 4 then 117 else 193)))
def hex_2558313 : String := "4042434441400605400909410A400A42090A44410608414006420906404208064208084344060A0642434405074405410540080543440507440507"
theorem cover_2558313 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558313 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_2558313)
  decide +kernel
#print axioms cover_2558313

def state_2558372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 115 else (if j.val < 4 then 58 else 96)))
def hex_2558372 : String := "43444140060540424344050A060642050541400A0740420A0A074406410640064243070606"
theorem cover_2558372 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558372 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_2558372)
  decide +kernel
#print axioms cover_2558372

def state_2558409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 94) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 96)))
def hex_2558409 : String := "42430505430705"
theorem cover_2558409 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558409 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_2558409)
  decide +kernel
#print axioms cover_2558409

def state_2558417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 97)))
def hex_2558417 : String := "42434144400A070744400A070A4144400A0707444042430A410A44400A42090A0A0A4243070707400A0743410744400A070741444006070744400A070A"
theorem cover_2558417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558417 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_2558417)
  decide +kernel
#print axioms cover_2558417
end Mub6.Numerical.CircleFullD0.Forest
