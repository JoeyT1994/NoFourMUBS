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
def state_4337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
def hex_4337 : String := "4344420543050A420A43400541074405050A0A"
theorem cover_4337 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4337 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_4337)
  decide +kernel
#print axioms cover_4337

def state_4356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
def hex_4356 : String := "4344434440054107054005410A420505444005410A4205050A434041090541094244050606400A410A4205064444400A410A420A060A0A"
theorem cover_4356 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4356 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 55) (hex := hex_4356)
  decide +kernel
#print axioms cover_4356

def state_4411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_4411 : String := "4243440541420505054441420505050A43444143050505414305050544414405050505"
theorem cover_4411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4411 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 35) (hex := hex_4411)
  decide +kernel
#print axioms cover_4411

def state_4448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
def hex_4448 : String := "4344400A070A444042080A070A"
theorem cover_4448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4448 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_4448)
  decide +kernel
#print axioms cover_4448

def state_4461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
def hex_4461 : String := "43444043440741070744070A074043090A09444044414208430A06424307084344060A060A444142074307064207430706410A420743070A0A"
theorem cover_4461 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4461 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_4461)
  decide +kernel
#print axioms cover_4461

def state_4519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
def hex_4519 : String := "4344400541420507054041420A434405050A420505410A420A0A4440414244050A44070A420505410707400A410A420A07"
theorem cover_4519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4519 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 49) (hex := hex_4519)
  decide +kernel
#print axioms cover_4519
end Mub6.Numerical.CircleFullPrototype.Forest
