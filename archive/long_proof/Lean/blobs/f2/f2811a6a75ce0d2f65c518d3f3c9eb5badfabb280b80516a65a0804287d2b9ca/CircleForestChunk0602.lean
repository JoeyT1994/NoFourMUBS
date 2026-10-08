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
def state_1333236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 63 else (if j.val < 4 then 47 else 50)))
def hex_1333236 : String := "43440940094105064440070A40410807414243050A05424344064041090606440740070A43090A"
theorem cover_1333236 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333236 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_1333236)
  decide +kernel
#print axioms cover_1333236

def state_1333276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 31 else (if j.val < 4 then 47 else 51)))
def hex_1333276 : String := "08"
theorem cover_1333276 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333276 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1333276)
  decide +kernel
#print axioms cover_1333276

def state_1333280 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 37) else (if j.val < 3 then 62 else (if j.val < 4 then 94 else 51)))
def hex_1333280 : String := "444108420543094008444108050A08"
theorem cover_1333280 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333280 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1333280)
  decide +kernel
#print axioms cover_1333280

def state_1333297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 74) else (if j.val < 3 then 62 else (if j.val < 4 then 94 else 102)))
def hex_1333297 : String := "424307444008070743074440080707"
theorem cover_1333297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333297 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1333297)
  decide +kernel
#print axioms cover_1333297

def state_1333312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 75) else (if j.val < 3 then 62 else (if j.val < 4 then 94 else 102)))
def hex_1333312 : String := "424344400506054440054142054306440606050543440607444041424344060844400806084306440908420506064041080507"
theorem cover_1333312 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333312 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1333312)
  decide +kernel
#print axioms cover_1333312

def state_1333363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 37) else (if j.val < 3 then 62 else (if j.val < 4 then 94 else 103)))
def hex_1333363 : String := "07"
theorem cover_1333363 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333363 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1333363)
  decide +kernel
#print axioms cover_1333363

def state_1333365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 37) else (if j.val < 3 then 62 else (if j.val < 4 then 95 else 51)))
def hex_1333365 : String := "444108420543400844410805410805400544070508"
theorem cover_1333365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333365 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_1333365)
  decide +kernel
#print axioms cover_1333365

def state_1333388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 74) else (if j.val < 3 then 62 else (if j.val < 4 then 95 else 102)))
def hex_1333388 : String := "424344400841074209434440080707090844400809084344400841074243070A43070A084440080A08"
theorem cover_1333388 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333388 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_1333388)
  decide +kernel
#print axioms cover_1333388

def state_1333430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 75) else (if j.val < 3 then 124 else (if j.val < 4 then 95 else 102)))
def hex_1333430 : String := "434440054142054344400506054440050905050544400541090505"
theorem cover_1333430 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333430 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1333430)
  decide +kernel
#print axioms cover_1333430
end Mub6.Numerical.CircleFullD0.Forest
