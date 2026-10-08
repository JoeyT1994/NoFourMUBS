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
def state_1582225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 68) else (if j.val < 3 then 195 else (if j.val < 4 then 106 else 207)))
def hex_1582225 : String := "43404142444307084305050707410805404106424443070606064108420508"
theorem cover_1582225 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582225 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_1582225)
  decide +kernel
#print axioms cover_1582225

def state_1582256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 69) else (if j.val < 3 then 97 else (if j.val < 4 then 106 else 103)))
def hex_1582256 : String := "4244430540414205444305050505050544434041420707070540414244090707074142054409050543400705400705"
theorem cover_1582256 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582256 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1582256)
  decide +kernel
#print axioms cover_1582256

def state_1582303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 106 else 103)))
def hex_1582303 : String := "41424405054408084205440505"
theorem cover_1582303 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582303 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 13) (hex := hex_1582303)
  decide +kernel
#print axioms cover_1582303

def state_1582318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 68) else (if j.val < 3 then 97 else (if j.val < 4 then 107 else 103)))
def hex_1582318 : String := "42440A0A4443404106420A064108420A080A4340064106420A0606"
theorem cover_1582318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582318 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_1582318)
  decide +kernel
#print axioms cover_1582318

def state_1582345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 69) else (if j.val < 3 then 97 else (if j.val < 4 then 107 else 103)))
def hex_1582345 : String := "424443400A050A43400A050A44434041420A094244070707414244090544094305094205440905400A0A434041060741420544430505050540060A"
theorem cover_1582345 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582345 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_1582345)
  decide +kernel
#print axioms cover_1582345

def state_1582404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 107 else 103)))
def hex_1582404 : String := "41424443050A0544430808430808420544434041420505050540410A0505430505"
theorem cover_1582404 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582404 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1582404)
  decide +kernel
#print axioms cover_1582404

def state_1582438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 35) else (if j.val < 3 then 96 else (if j.val < 4 then 53 else 51)))
def hex_1582438 : String := "44430640410A0805430505"
theorem cover_1582438 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582438 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1582438)
  decide +kernel
#print axioms cover_1582438

def state_1582451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 35) else (if j.val < 3 then 97 else (if j.val < 4 then 106 else 102)))
def hex_1582451 : String := "404142064406430640410706060606"
theorem cover_1582451 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582451 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1582451)
  decide +kernel
#print axioms cover_1582451
end Mub6.Numerical.CircleFullD0.Forest
