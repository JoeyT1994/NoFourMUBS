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
def state_388891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 23)))
def hex_388891 : String := "43400A4208440843080A0A"
theorem cover_388891 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388891 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_388891)
  decide +kernel
#print axioms cover_388891

def state_388903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 22)))
def hex_388903 : String := "414340060906430906"
theorem cover_388903 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388903 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_388903)
  decide +kernel
#print axioms cover_388903

def state_388915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 23)))
def hex_388915 : String := "4406424106434006440907064106430906"
theorem cover_388915 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388915 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_388915)
  decide +kernel
#print axioms cover_388915

def state_388933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 46)))
def hex_388933 : String := "424143090643090609"
theorem cover_388933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388933 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_388933)
  decide +kernel
#print axioms cover_388933

def state_388946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 56) else (if j.val < 3 then 50 else (if j.val < 4 then 56 else 94)))
def hex_388946 : String := "40424106090642414309064309440640060909"
theorem cover_388946 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388946 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_388946)
  decide +kernel
#print axioms cover_388946

def state_388966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 56) else (if j.val < 3 then 50 else (if j.val < 4 then 56 else 95)))
def hex_388966 : String := "424143440640050A06434409400509064143090609"
theorem cover_388966 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388966 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_388966)
  decide +kernel
#print axioms cover_388966

def state_388987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 56) else (if j.val < 3 then 50 else (if j.val < 4 then 56 else 95)))
def hex_388987 : String := "4241430A4440060A40060A43440940090A4440420606B5404241434406050643440905064106430906B5410A43094409400909"
theorem cover_388987 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388987 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_388987)
  decide +kernel
#print axioms cover_388987

def state_389038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 56) else (if j.val < 3 then 50 else (if j.val < 4 then 57 else 47)))
def hex_389038 : String := "440640064243060606"
theorem cover_389038 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389038 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_389038)
  decide +kernel
#print axioms cover_389038

def state_389048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 57) else (if j.val < 3 then 50 else (if j.val < 4 then 56 else 47)))
def hex_389048 : String := "440940424143074406070709424143094440090940424143074406050709B54308440940070909"
theorem cover_389048 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389048 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 39) (hex := hex_389048)
  decide +kernel
#print axioms cover_389048

def state_389087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 57) else (if j.val < 3 then 50 else (if j.val < 4 then 57 else 47)))
def hex_389087 : String := "4440064241064309064106094006424143444006B54006B5064344400AB5400AB50A414344064006B506430906"
theorem cover_389087 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389087 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_389087)
  decide +kernel
#print axioms cover_389087

def state_389132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 47)))
def hex_389132 : String := "41434409400909064309440940064241080908"
theorem cover_389132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389132 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_389132)
  decide +kernel
#print axioms cover_389132

def state_389151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 23)))
def hex_389151 : String := "06"
theorem cover_389151 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389151 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_389151)
  decide +kernel
#print axioms cover_389151
end Mub6.Numerical.CircleFullPrototype.Forest
