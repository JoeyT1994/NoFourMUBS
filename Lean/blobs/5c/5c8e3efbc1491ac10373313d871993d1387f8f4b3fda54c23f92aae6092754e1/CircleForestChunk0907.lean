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
def state_1518222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 46) else (if j.val < 3 then 44 else (if j.val < 4 then 27 else 31)))
def hex_1518222 : String := "4344414006080941400542430544070505400542430509054441400942090709414009424344094140050709440941400907090740094243090909"
theorem cover_1518222 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518222 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_1518222)
  decide +kernel
#print axioms cover_1518222

def state_1518281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 46) else (if j.val < 3 then 45 else (if j.val < 4 then 27 else 31)))
def hex_1518281 : String := "43084407410709"
theorem cover_1518281 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518281 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1518281)
  decide +kernel
#print axioms cover_1518281

def state_1518288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 46) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 31)))
def hex_1518288 : String := "424308444140070740420A070741404243070707074042434407410708440741070A070807"
theorem cover_1518288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518288 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_1518288)
  decide +kernel
#print axioms cover_1518288

def state_1518325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 47) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 31)))
def hex_1518325 : String := "40424309090942430844084140420A07080808"
theorem cover_1518325 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518325 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_1518325)
  decide +kernel
#print axioms cover_1518325

def state_1518344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 13 else 15)))
def hex_1518344 : String := "08"
theorem cover_1518344 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518344 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1518344)
  decide +kernel
#print axioms cover_1518344

def state_1518348 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 7)))
def hex_1518348 : String := "444308404142090842440843084041080808080843404109080840410942090809"
theorem cover_1518348 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518348 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_1518348)
  decide +kernel
#print axioms cover_1518348

def state_1518384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 14)))
def hex_1518384 : String := "4243444043440509440506090606434408404206080644404244410605060742060706"
theorem cover_1518384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518384 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1518384)
  decide +kernel
#print axioms cover_1518384

def state_1518419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 21) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 14)))
def hex_1518419 : String := "424344054041060506054344084041080808444005054041420607420507410605"
theorem cover_1518419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518419 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_1518419)
  decide +kernel
#print axioms cover_1518419

def state_1518452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 14)))
def hex_1518452 : String := "414206430806424305054308440506"
theorem cover_1518452 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518452 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1518452)
  decide +kernel
#print axioms cover_1518452
end Mub6.Numerical.CircleFullD0.Forest
