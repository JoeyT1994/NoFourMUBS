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
def state_9972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 27 else (if j.val < 4 then 36 else 36)))
def hex_9972 : String := "42400543444142050542054043449A050543449A41050944410508050505404243070507424344410707070A07"
theorem cover_9972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9972 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 45) (hex := hex_9972)
  decide +kernel
#print axioms cover_9972

def state_10017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 55) else (if j.val < 3 then 27 else (if j.val < 4 then 36 else 36)))
def hex_10017 : String := "424041434408050508414344420808094408050840410706414243444006410706070807420806"
theorem cover_10017 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10017 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_10017)
  decide +kernel
#print axioms cover_10017

def state_10056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 36 else 37)))
def hex_10056 : String := "41420507420907"
theorem cover_10056 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10056 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_10056)
  decide +kernel
#print axioms cover_10056

def state_10063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 37 else 18)))
def hex_10063 : String := "444142050A4208084105420507"
theorem cover_10063 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10063 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 13) (hex := hex_10063)
  decide +kernel
#print axioms cover_10063

def state_10082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 72 else 36)))
def hex_10082 : String := "44410642064043449A4142050709444142050A42080A4105420540050943449A41060944410642060A0641064205404443090505440606"
theorem cover_10082 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10082 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_10082)
  decide +kernel
#print axioms cover_10082

def state_10137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 73 else 36)))
def hex_10137 : String := "44410642054043440A050543060606"
theorem cover_10137 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10137 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_10137)
  decide +kernel
#print axioms cover_10137

def state_10152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 36 else 36)))
def hex_10152 : String := "434441064206404344060606060606"
theorem cover_10152 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10152 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_10152)
  decide +kernel
#print axioms cover_10152

def state_10167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 55 else (if j.val < 4 then 36 else 36)))
def hex_10167 : String := "40424344410A400A0A41074007444243070707070A0A4243440A410640444243060607420607440A060A0A"
theorem cover_10167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10167 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_10167)
  decide +kernel
#print axioms cover_10167
end Mub6.Numerical.CircleFullPrototype.Forest
