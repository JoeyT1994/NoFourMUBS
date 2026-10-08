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
def state_1620404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 102) else (if j.val < 3 then 51 else (if j.val < 4 then 96 else 32)))
def hex_1620404 : String := "42064044434106D308430641064206084443060806"
theorem cover_1620404 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620404 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1620404)
  decide +kernel
#print axioms cover_1620404

def state_1620426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 103) else (if j.val < 3 then 102 else (if j.val < 4 then 96 else 32)))
def hex_1620426 : String := "4044434206D307074443060706"
theorem cover_1620426 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620426 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1620426)
  decide +kernel
#print axioms cover_1620426

def state_1620441 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 103) else (if j.val < 3 then 103 else (if j.val < 4 then 96 else 64)))
def hex_1620441 : String := "D3"
theorem cover_1620441 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620441 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1620441)
  decide +kernel
#print axioms cover_1620441

def state_1620443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 103) else (if j.val < 3 then 103 else (if j.val < 4 then 192 else 65)))
def hex_1620443 : String := "4142064044D3434106094142060A0A44D306424044D30744D3054044D3434109090A44D34305414205400A05420505"
theorem cover_1620443 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620443 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1620443)
  decide +kernel
#print axioms cover_1620443

def state_1620490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 103) else (if j.val < 3 then 103 else (if j.val < 4 then 193 else 65)))
def hex_1620490 : String := "4142074044D30A44D3074207400A44D307"
theorem cover_1620490 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620490 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_1620490)
  decide +kernel
#print axioms cover_1620490

def state_1620507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 103 else (if j.val < 4 then 96 else 32)))
def hex_1620507 : String := "44D343410642054044D305054142064044D3060642074044D30709"
theorem cover_1620507 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620507 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_1620507)
  decide +kernel
#print axioms cover_1620507

def state_1620534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 97 else 32)))
def hex_1620534 : String := "4142070842074044434107070707440907"
theorem cover_1620534 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620534 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1620534)
  decide +kernel
#print axioms cover_1620534

def state_1620552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 96 else 33)))
def hex_1620552 : String := "41064206404443414206404443060A060642400705400A444305410505054142064007070A4341060A0A4443064106420540070506"
theorem cover_1620552 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620552 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 53) (hex := hex_1620552)
  decide +kernel
#print axioms cover_1620552

def state_1620605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 97 else 33)))
def hex_1620605 : String := "4142064007064207400707"
theorem cover_1620605 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620605 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1620605)
  decide +kernel
#print axioms cover_1620605

def state_1620616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 48 else 16)))
def hex_1620616 : String := "4443410642064044090605410909430641064206400705"
theorem cover_1620616 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620616 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1620616)
  decide +kernel
#print axioms cover_1620616

def state_1620639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 49 else 16)))
def hex_1620639 : String := "414207084207400707"
theorem cover_1620639 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620639 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1620639)
  decide +kernel
#print axioms cover_1620639
end Mub6.Numerical.CircleFullD0.Forest
