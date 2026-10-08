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
def state_1048255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 103) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 63)))
def hex_1048255 : String := "4243054407404207840543440540414205050505444041424305440584090941050584"
theorem cover_1048255 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048255 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1048255)
  decide +kernel
#print axioms cover_1048255

def state_1048290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 63)))
def hex_1048290 : String := "414207084205430544054041050505"
theorem cover_1048290 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048290 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1048290)
  decide +kernel
#print axioms cover_1048290

def state_1048305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 31)))
def hex_1048305 : String := "41084205430507"
theorem cover_1048305 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048305 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1048305)
  decide +kernel
#print axioms cover_1048305

def state_1048313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 30)))
def hex_1048313 : String := "404142060642060606"
theorem cover_1048313 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048313 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1048313)
  decide +kernel
#print axioms cover_1048313

def state_1048324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 50) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 31)))
def hex_1048324 : String := "424307064344404108420606064041084208080806"
theorem cover_1048324 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048324 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1048324)
  decide +kernel
#print axioms cover_1048324

def state_1048346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 51) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 31)))
def hex_1048346 : String := "430706"
theorem cover_1048346 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048346 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1048346)
  decide +kernel
#print axioms cover_1048346

def state_1048351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 62)))
def hex_1048351 : String := "404142060642060606"
theorem cover_1048351 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048351 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1048351)
  decide +kernel
#print axioms cover_1048351

def state_1048362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 102) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 63)))
def hex_1048362 : String := "424344074009070943444041420608424344068406434406840606404108840844064041060606"
theorem cover_1048362 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048362 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1048362)
  decide +kernel
#print axioms cover_1048362

def state_1048401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 103) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 63)))
def hex_1048401 : String := "424344074042078407440640420606064344404142434406840643440684064243440584064309060684440684"
theorem cover_1048401 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048401 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1048401)
  decide +kernel
#print axioms cover_1048401

def state_1048446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 63)))
def hex_1048446 : String := "41420606420606"
theorem cover_1048446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048446 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_1048446)
  decide +kernel
#print axioms cover_1048446

def state_1048453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 39 else 31)))
def hex_1048453 : String := "44064041060606"
theorem cover_1048453 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048453 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1048453)
  decide +kernel
#print axioms cover_1048453

def state_1048460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 31)))
def hex_1048460 : String := "4106420606"
theorem cover_1048460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048460 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1048460)
  decide +kernel
#print axioms cover_1048460

def state_1048465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 15)))
def hex_1048465 : String := "410707"
theorem cover_1048465 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048465 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1048465)
  decide +kernel
#print axioms cover_1048465

def state_1048469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 7)))
def hex_1048469 : String := "44094041424308444041080908080942430944094041420A09090909410809"
theorem cover_1048469 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048469 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_1048469)
  decide +kernel
#print axioms cover_1048469
end Mub6.Numerical.CircleFullD0.Forest
