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
def state_1620876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 50) else (if j.val < 3 then 26 else (if j.val < 4 then 48 else 16)))
def hex_1620876 : String := "42404405430905444341054208050543410842400844080840054408080840054405434105424005070505"
theorem cover_1620876 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620876 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1620876)
  decide +kernel
#print axioms cover_1620876

def state_1620921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 16)))
def hex_1620921 : String := "44434105060543090A"
theorem cover_1620921 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620921 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1620921)
  decide +kernel
#print axioms cover_1620921

def state_1620933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 102) else (if j.val < 3 then 52 else (if j.val < 4 then 96 else 32)))
def hex_1620933 : String := "4240440543050544434105D305434142080542400944D309400544D3094105420505400544054341050705"
theorem cover_1620933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620933 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1620933)
  decide +kernel
#print axioms cover_1620933

def state_1620976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 103) else (if j.val < 3 then 52 else (if j.val < 4 then 96 else 32)))
def hex_1620976 : String := "4240440643090644D3434142400944D309400644D30942400644D3090641420A06420A0606"
theorem cover_1620976 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620976 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_1620976)
  decide +kernel
#print axioms cover_1620976

def state_1621013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 97 else 32)))
def hex_1621013 : String := "414205054240054406434105060505"
theorem cover_1621013 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621013 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1621013)
  decide +kernel
#print axioms cover_1621013

def state_1621029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 96 else 33)))
def hex_1621029 : String := "4142400944434109094108420A0A0940094443094105420505094240094443410909410A0A0940094443090609"
theorem cover_1621029 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621029 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_1621029)
  decide +kernel
#print axioms cover_1621029

def state_1621074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 97 else 33)))
def hex_1621074 : String := "4142400544080A40054405430A05420A400644060A"
theorem cover_1621074 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621074 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_1621074)
  decide +kernel
#print axioms cover_1621074

def state_1621095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 48 else 16)))
def hex_1621095 : String := "4006440643414240070706064142050506"
theorem cover_1621095 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621095 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1621095)
  decide +kernel
#print axioms cover_1621095

def state_1621112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 49 else 16)))
def hex_1621112 : String := "41084240054443410505054341080A0806"
theorem cover_1621112 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621112 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1621112)
  decide +kernel
#print axioms cover_1621112
end Mub6.Numerical.CircleFullD0.Forest
