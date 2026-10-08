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
def state_1544221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 21)))
def hex_1544221 : String := "424441060706444106434006424407064407090606"
theorem cover_1544221 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544221 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_1544221)
  decide +kernel
#print axioms cover_1544221

def state_1544245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 50 else (if j.val < 4 then 20 else 42)))
def hex_1544245 : String := "434006424441064340060806064441434006420644080606434042440706440741060708400609410643400642094408060606"
theorem cover_1544245 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544245 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_1544245)
  decide +kernel
#print axioms cover_1544245

def state_1544296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 50 else (if j.val < 4 then 20 else 42)))
def hex_1544296 : String := "4340420744074341060706424407434140070807074443080743414042440706444308074341064006080642080840070841400642074407060707"
theorem cover_1544296 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544296 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 59) (hex := hex_1544296)
  decide +kernel
#print axioms cover_1544296

def state_1544356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 50 else (if j.val < 4 then 20 else 43)))
def hex_1544356 : String := "06"
theorem cover_1544356 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544356 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1544356)
  decide +kernel
#print axioms cover_1544356

def state_1544359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 59) else (if j.val < 3 then 50 else (if j.val < 4 then 40 else 43)))
def hex_1544359 : String := "420644434106400642064407060606"
theorem cover_1544359 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544359 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1544359)
  decide +kernel
#print axioms cover_1544359

def state_1544375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 100 else (if j.val < 4 then 40 else 43)))
def hex_1544375 : String := "44434140060940420544050642094408090943410640060906"
theorem cover_1544375 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544375 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1544375)
  decide +kernel
#print axioms cover_1544375

def state_1544403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 118) else (if j.val < 3 then 101 else (if j.val < 4 then 80 else 86)))
def hex_1544403 : String := "400642440906444341400608080943410640060806"
theorem cover_1544403 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544403 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1544403)
  decide +kernel
#print axioms cover_1544403

def state_1544424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 119) else (if j.val < 3 then 101 else (if j.val < 4 then 80 else 86)))
def hex_1544424 : String := "4042444341400608050543410605064443414006080A074341060A0642440843080944084341404208080808414006084042050808"
theorem cover_1544424 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544424 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_1544424)
  decide +kernel
#print axioms cover_1544424
end Mub6.Numerical.CircleFullD0.Forest
