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
def state_1459080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 6)))
def hex_1459080 : String := "44424309080942434009410707404144060909414443070643074240410607070744080943094009410708"
theorem cover_1459080 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459080 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 43) (hex := hex_1459080)
  decide +kernel
#print axioms cover_1459080

def state_1459123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 7)))
def hex_1459123 : String := "400A410A42430A444009410A090A0A"
theorem cover_1459123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459123 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1459123)
  decide +kernel
#print axioms cover_1459123

def state_1459140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
def hex_1459140 : String := "4143060606"
theorem cover_1459140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459140 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1459140)
  decide +kernel
#print axioms cover_1459140

def state_1459147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 6)))
def hex_1459147 : String := "4442060642404143060606414344060A4406424006434106064106060643440642400641430606430606064406424006414306060606400641430606430606"
theorem cover_1459147 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459147 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_1459147)
  decide +kernel
#print axioms cover_1459147

def state_1459210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 6)))
def hex_1459210 : String := "440642404306064341440642400643414405090641440509050644064240064306060641440542400743050540064306064405424006430605064006430606"
theorem cover_1459210 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459210 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_1459210)
  decide +kernel
#print axioms cover_1459210

def state_1459273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
def hex_1459273 : String := "434406424041060641434406424006414307060806440642400641060606430844060940064106064406424006414306060606"
theorem cover_1459273 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459273 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 51) (hex := hex_1459273)
  decide +kernel
#print axioms cover_1459273

def state_1459325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
def hex_1459325 : String := "41430A4244430A07070A09"
theorem cover_1459325 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459325 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1459325)
  decide +kernel
#print axioms cover_1459325

def state_1459341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 10 else 14)))
def hex_1459341 : String := "0A"
theorem cover_1459341 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459341 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1459341)
  decide +kernel
#print axioms cover_1459341
end Mub6.Numerical.CircleFullD0.Forest
