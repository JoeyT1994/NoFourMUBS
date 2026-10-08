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
def state_7743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 109) else (if j.val < 3 then 54 else (if j.val < 4 then 35 else 34)))
def hex_7743 : String := "4243440640064241430707060644400607404208064243070743060806"
theorem cover_7743 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7743 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_7743)
  decide +kernel
#print axioms cover_7743

def state_7772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 35 else 34)))
def hex_7772 : String := "4142434407404109420743050741070744074009090942434405404207050544074042074341070541070707430544054043064109064305410505"
theorem cover_7772 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7772 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_7772)
  decide +kernel
#print axioms cover_7772

def state_7831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 35 else 35)))
def hex_7831 : String := "9A"
theorem cover_7831 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7831 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_7831)
  decide +kernel
#print axioms cover_7831

def state_7832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 55 else (if j.val < 4 then 17 else 17)))
def hex_7832 : String := "43440640064241440543054007080505444006424109050540429A06429A410A06"
theorem cover_7832 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7832 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_7832)
  decide +kernel
#print axioms cover_7832

def state_7865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 55) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 17)))
def hex_7865 : String := "4243440640064142090505444006414243054405400807050540419A06419A42090606"
theorem cover_7865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7865 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_7865)
  decide +kernel
#print axioms cover_7865

def state_7903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 34 else 17)))
def hex_7903 : String := "4405404142440808084244050905410805"
theorem cover_7903 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7903 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_7903)
  decide +kernel
#print axioms cover_7903

def state_7920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 35 else 17)))
def hex_7920 : String := "444041424307074305094207054142050505409A41420643084440410605050642434405404206050544070643054405404305440541060505"
theorem cover_7920 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7920 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_7920)
  decide +kernel
#print axioms cover_7920

def state_7977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 55 else (if j.val < 4 then 17 else 17)))
def hex_7977 : String := "4305440540429A410A05424143050A0505"
theorem cover_7977 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7977 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_7977)
  decide +kernel
#print axioms cover_7977
end Mub6.Numerical.CircleFullPrototype.Forest
