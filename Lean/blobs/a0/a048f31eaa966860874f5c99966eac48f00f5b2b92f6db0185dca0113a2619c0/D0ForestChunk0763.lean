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
def state_1483947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 13)))
def hex_1483947 : String := "430944420941404308440809084043084408090809"
theorem cover_1483947 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483947 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1483947)
  decide +kernel
#print axioms cover_1483947

def state_1483969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 13)))
def hex_1483969 : String := "40434405410942054043090505440541420540070505430905"
theorem cover_1483969 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483969 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1483969)
  decide +kernel
#print axioms cover_1483969

def state_1483997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 26)))
def hex_1483997 : String := "414240434405094405410905430805404306440642060608420506"
theorem cover_1483997 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483997 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_1483997)
  decide +kernel
#print axioms cover_1483997

def state_1484024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 27)))
def hex_1484024 : String := "41420940430A42410944400609090A0942404341094205064142054405094205050940434106064142440640060906064308414209084244050908"
theorem cover_1484024 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484024 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1484024)
  decide +kernel
#print axioms cover_1484024

def state_1484086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 18) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 26)))
def hex_1484086 : String := "05"
theorem cover_1484086 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484086 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1484086)
  decide +kernel
#print axioms cover_1484086

def state_1484088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 18) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 26)))
def hex_1484088 : String := "4344064241400643440509440509050644054205414043064405420506434406424140064306050506440542054140064306070505"
theorem cover_1484088 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484088 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 53) (hex := hex_1484088)
  decide +kernel
#print axioms cover_1484088

def state_1484141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 18) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 26)))
def hex_1484141 : String := "43440842410905084442050842054140434408424108050844054205414043070707050805"
theorem cover_1484141 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484141 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 37) (hex := hex_1484141)
  decide +kernel
#print axioms cover_1484141

def state_1484178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 19) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 26)))
def hex_1484178 : String := "05"
theorem cover_1484178 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484178 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1484178)
  decide +kernel
#print axioms cover_1484178

def state_1484181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 18) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 27)))
def hex_1484181 : String := "404341094205440507414207440507420544050709"
theorem cover_1484181 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484181 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 21) (hex := hex_1484181)
  decide +kernel
#print axioms cover_1484181
end Mub6.Numerical.CircleFullD0.Forest
