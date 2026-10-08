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
def state_289890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
def hex_289890 : String := "414243054440420A05420A4105050A0542434440050A05444041420A0542070741420A43050742070707430544400541050505"
theorem cover_289890 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289890 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_289890)
  decide +kernel
#print axioms cover_289890

def state_289946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 4)))
def hex_289946 : String := "444241064043054406420705060642414043054405084344050808404344050544424105090509434406420805084105400506"
theorem cover_289946 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289946 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_289946)
  decide +kernel
#print axioms cover_289946

def state_289997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 4)))
def hex_289997 : String := "44424107080642410840090841400906400908"
theorem cover_289997 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289997 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 19) (hex := hex_289997)
  decide +kernel
#print axioms cover_289997

def state_290016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 4)))
def hex_290016 : String := "4344064241064306080608"
theorem cover_290016 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290016 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_290016)
  decide +kernel
#print axioms cover_290016

def state_290027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 4)))
def hex_290027 : String := "06"
theorem cover_290027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290027 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_290027)
  decide +kernel
#print axioms cover_290027

def state_290037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 16)))
def hex_290037 : String := "42410640434406424105400506050A0606"
theorem cover_290037 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290037 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_290037)
  decide +kernel
#print axioms cover_290037

def state_290056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 17)))
def hex_290056 : String := "400506"
theorem cover_290056 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290056 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_290056)
  decide +kernel
#print axioms cover_290056

def state_290060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 45) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 17)))
def hex_290060 : String := "4344424105400543054442080542410508050542A9054442414305070A0A42A94105430509"
theorem cover_290060 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290060 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_290060)
  decide +kernel
#print axioms cover_290060

def state_290097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 45) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 17)))
def hex_290097 : String := "43444241064043064406420906060642A941054005064442410640434406424106400A06060A060642A9410640434405050A06"
theorem cover_290097 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290097 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_290097)
  decide +kernel
#print axioms cover_290097

def state_290148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 22) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 17)))
def hex_290148 : String := "4105400506"
theorem cover_290148 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290148 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_290148)
  decide +kernel
#print axioms cover_290148
end Mub6.Numerical.CircleFullPrototype.Forest
