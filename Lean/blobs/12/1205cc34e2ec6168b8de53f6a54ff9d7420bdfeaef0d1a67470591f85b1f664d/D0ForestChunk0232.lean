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
def state_993085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 71 else (if j.val < 4 then 104 else 85)))
def hex_993085 : String := "404344410905410942090544410942090509434441090A410942404309090A0A444109424043090907054109424009430A08400909"
theorem cover_993085 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993085 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_993085)
  decide +kernel
#print axioms cover_993085

def state_993139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 106) else (if j.val < 3 then 35 else (if j.val < 4 then 105 else 42)))
def hex_993139 : String := "444240080809420809"
theorem cover_993139 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993139 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_993139)
  decide +kernel
#print axioms cover_993139

def state_993149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 35 else (if j.val < 4 then 105 else 84)))
def hex_993149 : String := "42400607404341094405420605410906434144070907410907"
theorem cover_993149 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993149 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_993149)
  decide +kernel
#print axioms cover_993149

def state_993174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 35 else (if j.val < 4 then 105 else 85)))
def hex_993174 : String := "4240434441080641080606084043440909440909434441094207400907410842080944410842070908"
theorem cover_993174 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993174 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_993174)
  decide +kernel
#print axioms cover_993174

def state_993216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 52 else 43)))
def hex_993216 : String := "4043444105420540064344060505050543444105420540430505050505"
theorem cover_993216 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993216 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_993216)
  decide +kernel
#print axioms cover_993216

def state_993246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 43)))
def hex_993246 : String := "43444107424043070643440907440909400743070907444109424006430906094107420907"
theorem cover_993246 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993246 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_993246)
  decide +kernel
#print axioms cover_993246

def state_993286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 106) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 86)))
def hex_993286 : String := "4240080509"
theorem cover_993286 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993286 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_993286)
  decide +kernel
#print axioms cover_993286

def state_993292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 70 else (if j.val < 4 then 104 else 86)))
def hex_993292 : String := "4043444109424009430908094107C644410842080909434441084240434408050505404344090909430A084105C608"
theorem cover_993292 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993292 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_993292)
  decide +kernel
#print axioms cover_993292
end Mub6.Numerical.CircleFullD0.Forest
