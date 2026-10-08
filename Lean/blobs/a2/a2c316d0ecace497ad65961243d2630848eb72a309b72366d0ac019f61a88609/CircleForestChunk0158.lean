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
def state_59254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 27 else (if j.val < 4 then 47 else 17)))
def hex_59254 : String := "424443400605404142080608414205050543400641420906054041920A4192420A4405094406430640064142920606"
theorem cover_59254 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59254 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_59254)
  decide +kernel
#print axioms cover_59254

def state_59303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 38) else (if j.val < 3 then 54 else (if j.val < 4 then 47 else 17)))
def hex_59303 : String := "4443414042050505054140420744054340410705050A074042050505434108404209090541409242070A409242440509440509"
theorem cover_59303 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59303 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_59303)
  decide +kernel
#print axioms cover_59303

def state_59354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 38) else (if j.val < 3 then 55 else (if j.val < 4 then 47 else 17)))
def hex_59354 : String := "444305410A0543084108404292080A"
theorem cover_59354 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59354 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_59354)
  decide +kernel
#print axioms cover_59354

def state_59369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 27 else (if j.val < 4 then 47 else 17)))
def hex_59369 : String := "424405430540419205054405430540414205050505"
theorem cover_59369 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59369 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_59369)
  decide +kernel
#print axioms cover_59369

def state_59391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 22 else 9)))
def hex_59391 : String := "42404108090908"
theorem cover_59391 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59391 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_59391)
  decide +kernel
#print axioms cover_59391

def state_59400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 26 else (if j.val < 4 then 23 else 9)))
def hex_59400 : String := "414443420A08050544430A420A0A09"
theorem cover_59400 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59400 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_59400)
  decide +kernel
#print axioms cover_59400

def state_59416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 26 else (if j.val < 4 then 23 else 9)))
def hex_59416 : String := "4443424041080908084240410544430A050506404105444308420505054108444308060808"
theorem cover_59416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59416 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_59416)
  decide +kernel
#print axioms cover_59416

def state_59453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 26 else (if j.val < 4 then 23 else 9)))
def hex_59453 : String := "44430942400A094041444309420A4041050A4144430906050909090909"
theorem cover_59453 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59453 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 29) (hex := hex_59453)
  decide +kernel
#print axioms cover_59453
end Mub6.Numerical.CircleFullPrototype.Forest
