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
def state_979164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 22 else 29)))
def hex_979164 : String := "4344420540410943070941434442058505094344424007410508400741850707440A05054442054009434105090505"
theorem cover_979164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979164 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_979164)
  decide +kernel
#print axioms cover_979164

def state_979211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 31 else (if j.val < 4 then 22 else 29)))
def hex_979211 : String := "434442400A41050640074143070A0708440A05"
theorem cover_979211 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979211 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_979211)
  decide +kernel
#print axioms cover_979211

def state_979230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 14)))
def hex_979230 : String := "440A42050A"
theorem cover_979230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979230 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_979230)
  decide +kernel
#print axioms cover_979230

def state_979235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 14)))
def hex_979235 : String := "43440A4240054105060A0A"
theorem cover_979235 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979235 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_979235)
  decide +kernel
#print axioms cover_979235

def state_979246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 15)))
def hex_979246 : String := "404109430505414305054342050505"
theorem cover_979246 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979246 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_979246)
  decide +kernel
#print axioms cover_979246

def state_979263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_979263 : String := "41424344420A050A0A434405430705054243440741420A0A4207430707444105420A05410A42440A0A0A43440741430705430707440505"
theorem cover_979263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979263 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 55) (hex := hex_979263)
  decide +kernel
#print axioms cover_979263

def state_979318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_979318 : String := "4142434440420A05424341444007420A070A070A430705400A420A43070A440A0A430744050542434440074107074007070A4344070707"
theorem cover_979318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979318 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_979318)
  decide +kernel
#print axioms cover_979318

def state_979374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_979374 : String := "414243440A094442440A090A0943440A09440A400941070942430A44410A42440A080A0843440A0A0A"
theorem cover_979374 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979374 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_979374)
  decide +kernel
#print axioms cover_979374
end Mub6.Numerical.CircleFullD0.Forest
