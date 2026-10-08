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
def state_2289329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 49 else 95)))
def hex_2289329 : String := "434140424443060505444341400A0606410A05434140050605054206060641400542054443410A06050505"
theorem cover_2289329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289329 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_2289329)
  decide +kernel
#print axioms cover_2289329

def state_2289372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 47)))
def hex_2289372 : String := "40074206440906"
theorem cover_2289372 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289372 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2289372)
  decide +kernel
#print axioms cover_2289372

def state_2289381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 46)))
def hex_2289381 : String := "09"
theorem cover_2289381 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289381 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2289381)
  decide +kernel
#print axioms cover_2289381

def state_2289384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 47)))
def hex_2289384 : String := "4243440941CF094409414008424409434140424408434105050508424443064107060607084140080A08080808"
theorem cover_2289384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289384 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 45) (hex := hex_2289384)
  decide +kernel
#print axioms cover_2289384

def state_2289429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 47)))
def hex_2289429 : String := "4243444142400905050941420607064441424009070709414240444341070641070943064107060607420640080607"
theorem cover_2289429 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289429 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_2289429)
  decide +kernel
#print axioms cover_2289429

def state_2289476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 53) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 47)))
def hex_2289476 : String := "09"
theorem cover_2289476 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289476 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2289476)
  decide +kernel
#print axioms cover_2289476

def state_2289477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 49 else 23)))
def hex_2289477 : String := "44094140424408434140080808080842444341424009070709410A084341424044434107080A4341074005060A07074240080608410A0844080808"
theorem cover_2289477 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289477 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 59) (hex := hex_2289477)
  decide +kernel
#print axioms cover_2289477

def state_2289536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 23)))
def hex_2289536 : String := "09"
theorem cover_2289536 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289536 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2289536)
  decide +kernel
#print axioms cover_2289536

def state_2289538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 22)))
def hex_2289538 : String := "41400942090909"
theorem cover_2289538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289538 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2289538)
  decide +kernel
#print axioms cover_2289538
end Mub6.Numerical.CircleFullD0.Forest
