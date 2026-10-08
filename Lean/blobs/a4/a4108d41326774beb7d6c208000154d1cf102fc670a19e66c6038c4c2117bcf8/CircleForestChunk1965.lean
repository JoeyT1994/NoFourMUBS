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
def state_2552095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 94) else (if j.val < 3 then 57 else (if j.val < 4 then 56 else 47)))
def hex_2552095 : String := "444042430841084440060808430806420808400808"
theorem cover_2552095 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552095 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_2552095)
  decide +kernel
#print axioms cover_2552095

def state_2552116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 95) else (if j.val < 3 then 57 else (if j.val < 4 then 56 else 47)))
def hex_2552116 : String := "44404243080743084144060807424308414440080508440940070843084144400805084440070840080840424308410844070808420808"
theorem cover_2552116 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552116 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 55) (hex := hex_2552116)
  decide +kernel
#print axioms cover_2552116

def state_2552173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 94) else (if j.val < 3 then 57 else (if j.val < 4 then 57 else 94)))
def hex_2552173 : String := "400642434105440540420505050606"
theorem cover_2552173 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552173 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_2552173)
  decide +kernel
#print axioms cover_2552173

def state_2552188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 94) else (if j.val < 3 then 57 else (if j.val < 4 then 57 else 95)))
def hex_2552188 : String := "4042430A0606424344414008054042080842050541084008084441064006420505414006420505400A424344050844050A430A064344410640064305050A06"
theorem cover_2552188 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552188 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_2552188)
  decide +kernel
#print axioms cover_2552188

def state_2552252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 95) else (if j.val < 3 then 57 else (if j.val < 4 then 57 else 94)))
def hex_2552252 : String := "40420706424341444007054042070742050544074007094144064006420505074341440640064305054440064305054007434241050741050742070606"
theorem cover_2552252 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552252 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_2552252)
  decide +kernel
#print axioms cover_2552252

def state_2552313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 95) else (if j.val < 3 then 57 else (if j.val < 4 then 57 else 95)))
def hex_2552313 : String := "404243410A0707430A06E2"
theorem cover_2552313 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552313 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_2552313)
  decide +kernel
#print axioms cover_2552313

def state_2552325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 23)))
def hex_2552325 : String := "44064006424344410540060541400605400642094305050606"
theorem cover_2552325 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552325 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 25) (hex := hex_2552325)
  decide +kernel
#print axioms cover_2552325
end Mub6.Numerical.CircleFullD0.Forest
