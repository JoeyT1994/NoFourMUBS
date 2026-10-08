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
def state_1473010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 17 else (if j.val < 4 then 44 else 29)))
def hex_1473010 : String := "410A4442400A430A410944080A0A0A"
theorem cover_1473010 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473010 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1473010)
  decide +kernel
#print axioms cover_1473010

def state_1473026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 42) else (if j.val < 3 then 17 else (if j.val < 4 then 45 else 29)))
def hex_1473026 : String := "4442400A090A0A"
theorem cover_1473026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473026 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1473026)
  decide +kernel
#print axioms cover_1473026

def state_1473037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 43) else (if j.val < 3 then 34 else (if j.val < 4 then 90 else 58)))
def hex_1473037 : String := "410A444240430A41060643410A44060A414409094406424043060609400608400643084106060A"
theorem cover_1473037 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473037 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_1473037)
  decide +kernel
#print axioms cover_1473037

def state_1473077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 86) else (if j.val < 3 then 34 else (if j.val < 4 then 91 else 58)))
def hex_1473077 : String := "44424007094006090A"
theorem cover_1473077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473077 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1473077)
  decide +kernel
#print axioms cover_1473077

def state_1473086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 87) else (if j.val < 3 then 34 else (if j.val < 4 then 91 else 58)))
def hex_1473086 : String := "444240434106060743414409094406420740064306060740064341060641060642400743410944420740074309074207050740430507430A410A440705"
theorem cover_1473086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473086 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1473086)
  decide +kernel
#print axioms cover_1473086

def state_1473148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 43) else (if j.val < 3 then 34 else (if j.val < 4 then 90 else 58)))
def hex_1473148 : String := "41094442404341080841094408090908424043090909400A09"
theorem cover_1473148 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473148 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1473148)
  decide +kernel
#print axioms cover_1473148

def state_1473173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 43) else (if j.val < 3 then 34 else (if j.val < 4 then 91 else 58)))
def hex_1473173 : String := "41094442404341094408090909404341080841094406420908094209404341094442090809410944420940430807080909"
theorem cover_1473173 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473173 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_1473173)
  decide +kernel
#print axioms cover_1473173

def state_1473222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 35 else (if j.val < 4 then 45 else 58)))
def hex_1473222 : String := "40430A410A44060A43410A44080A41444209080944084240430A41094408050908"
theorem cover_1473222 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473222 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_1473222)
  decide +kernel
#print axioms cover_1473222
end Mub6.Numerical.CircleFullD0.Forest
