import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1653963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 20)))
def hex_1653963 : String := "4043424441060706444140430A0706404344094206410609070941404306420644060606404342064406064207440741060706420744070743420644060607"
theorem cover_1653963 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653963 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_1653963)
  decide +kernel
#print axioms cover_1653963

def state_1654026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 21)))
def hex_1654026 : String := "42064140430644070606404344420641064043064406060606444207414007074043440707070742064140444306070606404443060743064206080606"
theorem cover_1654026 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654026 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 61) (hex := hex_1654026)
  decide +kernel
#print axioms cover_1654026

def state_1654087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 10)))
def hex_1654087 : String := "4407420741074044070707"
theorem cover_1654087 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654087 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1654087)
  decide +kernel
#print axioms cover_1654087

def state_1654101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 28 else (if j.val < 4 then 26 else 20)))
def hex_1654101 : String := "40414342064406060743050709"
theorem cover_1654101 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654101 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_1654101)
  decide +kernel
#print axioms cover_1654101

def state_1654116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 20)))
def hex_1654116 : String := "43424409410605444109094140434206444140A00640A00506424407074407414007064043050707430507404305420944090505420709"
theorem cover_1654116 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654116 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 55) (hex := hex_1654116)
  decide +kernel
#print axioms cover_1654116

def state_1654171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 20)))
def hex_1654171 : String := "434244050544090509"
theorem cover_1654171 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654171 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1654171)
  decide +kernel
#print axioms cover_1654171

def state_1654180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 25) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 20)))
def hex_1654180 : String := "41434206090709"
theorem cover_1654180 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654180 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1654180)
  decide +kernel
#print axioms cover_1654180

def state_1654188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 28 else (if j.val < 4 then 26 else 21)))
def hex_1654188 : String := "404143054406050505"
theorem cover_1654188 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654188 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1654188)
  decide +kernel
#print axioms cover_1654188

def state_1654200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 52 else 21)))
def hex_1654200 : String := "444205414043054442064140430507060505050505"
theorem cover_1654200 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654200 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 21) (hex := hex_1654200)
  decide +kernel
#print axioms cover_1654200
end Mub6.Numerical.CircleFullD0.Forest
