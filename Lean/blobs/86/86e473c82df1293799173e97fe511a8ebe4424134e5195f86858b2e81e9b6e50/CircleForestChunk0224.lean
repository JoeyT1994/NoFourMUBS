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
def state_75135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 42 else (if j.val < 4 then 49 else 42)))
def hex_75135 : String := "4340414244434005410542050505054405054244080744080741420A0642444340414207060706400806074406430940070640410508410A420A4406430606"
theorem cover_75135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75135 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_75135)
  decide +kernel
#print axioms cover_75135

def state_75198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 42 else (if j.val < 4 then 49 else 43)))
def hex_75198 : String := "434007410A0740070A"
theorem cover_75198 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75198 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_75198)
  decide +kernel
#print axioms cover_75198

def state_75207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 43 else (if j.val < 4 then 49 else 21)))
def hex_75207 : String := "444340410608064008064309400909"
theorem cover_75207 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75207 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_75207)
  decide +kernel
#print axioms cover_75207

def state_75222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 51) else (if j.val < 3 then 21 else (if j.val < 4 then 49 else 21)))
def hex_75222 : String := "424443400741420744080707400741420708070744434008414244060706080807"
theorem cover_75222 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75222 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_75222)
  decide +kernel
#print axioms cover_75222

def state_75256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 50) else (if j.val < 3 then 21 else (if j.val < 4 then 49 else 21)))
def hex_75256 : String := "4244434106404244060A0606410640420A060643410A4044420706070A0A06"
theorem cover_75256 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75256 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_75256)
  decide +kernel
#print axioms cover_75256

def state_75287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 51) else (if j.val < 3 then 21 else (if j.val < 4 then 49 else 21)))
def hex_75287 : String := "4244434041424443400705400706070607410642050540414244430606070607410642070643070744430606434009064041090706"
theorem cover_75287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75287 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_75287)
  decide +kernel
#print axioms cover_75287

def state_75341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 10)))
def hex_75341 : String := "44404143420908080841090940410A070A"
theorem cover_75341 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75341 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_75341)
  decide +kernel
#print axioms cover_75341

def state_75359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 25 else 20)))
def hex_75359 : String := "4008410608"
theorem cover_75359 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75359 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_75359)
  decide +kernel
#print axioms cover_75359
end Mub6.Numerical.CircleFullPrototype.Forest
