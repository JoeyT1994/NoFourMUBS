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
def state_1579364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 154 else 132) else (if j.val < 3 then 386 else (if j.val < 4 then 209 else 207)))
def hex_1579364 : String := "44434041420544050505054041424405054443400705400705430506420544070505430540414205060505"
theorem cover_1579364 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579364 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1579364)
  decide +kernel
#print axioms cover_1579364

def state_1579407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 154 else 132) else (if j.val < 3 then 387 else (if j.val < 4 then 209 else 207)))
def hex_1579407 : String := "4443400741080540414244070707074108420508434007054007410805"
theorem cover_1579407 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579407 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_1579407)
  decide +kernel
#print axioms cover_1579407

def state_1579436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 154 else 133) else (if j.val < 3 then 193 else (if j.val < 4 then 209 else 207)))
def hex_1579436 : String := "42444305050544430740070507"
theorem cover_1579436 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579436 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1579436)
  decide +kernel
#print axioms cover_1579436

def state_1579449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 155 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 209 else 207)))
def hex_1579449 : String := "41420544080505"
theorem cover_1579449 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579449 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1579449)
  decide +kernel
#print axioms cover_1579449

def state_1579456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 67) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 103)))
def hex_1579456 : String := "42440605444306404142064406070606430540414205070505"
theorem cover_1579456 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579456 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1579456)
  decide +kernel
#print axioms cover_1579456

def state_1579484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 66) else (if j.val < 3 then 192 else (if j.val < 4 then 105 else 103)))
def hex_1579484 : String := "44434008410A4208440A0A0A434008410A4208440A0A0A"
theorem cover_1579484 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579484 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1579484)
  decide +kernel
#print axioms cover_1579484

def state_1579509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 210 else 206)))
def hex_1579509 : String := "4041424443070506064208074142444309094340410607410A420A4407070644094340060906424443400741094208070A43400741420A07070A440907"
theorem cover_1579509 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579509 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1579509)
  decide +kernel
#print axioms cover_1579509

def state_1579570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 211 else 206)))
def hex_1579570 : String := "40064106420A440906"
theorem cover_1579570 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579570 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1579570)
  decide +kernel
#print axioms cover_1579570

def state_1579579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 105 else 207)))
def hex_1579579 : String := "43400641064244430706060706"
theorem cover_1579579 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579579 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1579579)
  decide +kernel
#print axioms cover_1579579
end Mub6.Numerical.CircleFullD0.Forest
