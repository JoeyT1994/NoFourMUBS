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
def state_2314264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 10)))
def hex_2314264 : String := "424443054006054340410544054305060540064105440543050644054305400605"
theorem cover_2314264 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314264 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_2314264)
  decide +kernel
#print axioms cover_2314264

def state_2314299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 20)))
def hex_2314299 : String := "4340430909430541050940430707434105074142070507"
theorem cover_2314299 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314299 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 23) (hex := hex_2314299)
  decide +kernel
#print axioms cover_2314299

def state_2314323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 21)))
def hex_2314323 : String := "4044430941420505094341420905094142400644054305060A094443054105094341054209054142050542400944050909"
theorem cover_2314323 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314323 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_2314323)
  decide +kernel
#print axioms cover_2314323

def state_2314373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 21)))
def hex_2314373 : String := "4443414206060741060743414206064207094106420606"
theorem cover_2314373 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314373 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 23) (hex := hex_2314373)
  decide +kernel
#print axioms cover_2314373

def state_2314397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 42)))
def hex_2314397 : String := "43410542070941420605420740074405410507"
theorem cover_2314397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314397 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_2314397)
  decide +kernel
#print axioms cover_2314397

def state_2314417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 58 else 43)))
def hex_2314417 : String := "4142404405060540050542404407094443050743094142070507400944054305410509"
theorem cover_2314417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314417 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_2314417)
  decide +kernel
#print axioms cover_2314417

def state_2314452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 59 else 43)))
def hex_2314452 : String := "414206064240074407414207060740440606444106094143420505064309420606"
theorem cover_2314452 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314452 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_2314452)
  decide +kernel
#print axioms cover_2314452
end Mub6.Numerical.CircleFullD0.Forest
