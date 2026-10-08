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
def state_1002027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 110) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 177)))
def hex_1002027 : String := "434142400A444341420A070A0A4341070A0A4007444342410605054241070A0707420A400A4443050543410A050A41420A400A440A0A0A"
theorem cover_1002027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002027 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1002027)
  decide +kernel
#print axioms cover_1002027

def state_1002082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 110) else (if j.val < 3 then 73 else (if j.val < 4 then 105 else 88)))
def hex_1002082 : String := "40440543050A4443054241050505434241070505424140074443050A070505"
theorem cover_1002082 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002082 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_1002082)
  decide +kernel
#print axioms cover_1002082

def state_1002113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 111) else (if j.val < 3 then 36 else (if j.val < 4 then 105 else 88)))
def hex_1002113 : String := "4240064443050643410A050A05"
theorem cover_1002113 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002113 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_1002113)
  decide +kernel
#print axioms cover_1002113

def state_1002127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 104 else 89)))
def hex_1002127 : String := "414240074443410742400744080707410742400744434107080A070707074240440843070A4443084142400844080A08084341070841420A070A400508"
theorem cover_1002127 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002127 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_1002127)
  decide +kernel
#print axioms cover_1002127

def state_1002188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 105 else 89)))
def hex_1002188 : String := "414240440A0744434107420A40074443070A07410A0A43070A40074443074241070A070742400A44430A0A0A400A4443050A434107050A"
theorem cover_1002188 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002188 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_1002188)
  decide +kernel
#print axioms cover_1002188

def state_1002243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 44)))
def hex_1002243 : String := "414007444306070640440507444305054342410505054241070505"
theorem cover_1002243 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002243 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_1002243)
  decide +kernel
#print axioms cover_1002243

def state_1002273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 44)))
def hex_1002273 : String := "44434241070A070A07"
theorem cover_1002273 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002273 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1002273)
  decide +kernel
#print axioms cover_1002273
end Mub6.Numerical.CircleFullD0.Forest
