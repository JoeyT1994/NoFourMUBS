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
def state_957117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 27)))
def hex_957117 : String := "4440410A42434440410A420A0A0A0A4440410542054443080505410A42070A05430A4440410A4244080A090A0A0A0A"
theorem cover_957117 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957117 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 47) (hex := hex_957117)
  decide +kernel
#print axioms cover_957117

def state_957164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 27)))
def hex_957164 : String := "4440410542054344404105420505410542050A050541054207430A0505"
theorem cover_957164 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957164 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 29) (hex := hex_957164)
  decide +kernel
#print axioms cover_957164

def state_957199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 86) else (if j.val < 3 then 104 else (if j.val < 4 then 36 else 54)))
def hex_957199 : String := "43444042064144060506064042054105C74207410507440605"
theorem cover_957199 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957199 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_957199)
  decide +kernel
#print axioms cover_957199

def state_957227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 86) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 108)))
def hex_957227 : String := "41424443404206070606434042050A0705444309400806430A40050A42C7440943404142C70909094041420544080542060906"
theorem cover_957227 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957227 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_957227)
  decide +kernel
#print axioms cover_957227

def state_957278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 185 else 86) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 108)))
def hex_957278 : String := "41420644060742064406430906"
theorem cover_957278 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957278 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_957278)
  decide +kernel
#print axioms cover_957278

def state_957291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 86) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 109)))
def hex_957291 : String := "404142050A42C7430A444041054205050A05410A420A0A"
theorem cover_957291 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957291 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_957291)
  decide +kernel
#print axioms cover_957291

def state_957314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 86) else (if j.val < 3 then 105 else (if j.val < 4 then 73 else 54)))
def hex_957314 : String := "44404142054405050606400541054205430A05"
theorem cover_957314 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957314 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_957314)
  decide +kernel
#print axioms cover_957314

def state_957334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 104 else (if j.val < 4 then 36 else 54)))
def hex_957334 : String := "43440640C70606"
theorem cover_957334 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957334 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_957334)
  decide +kernel
#print axioms cover_957334

def state_957343 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 108)))
def hex_957343 : String := "404142C7440643090642060906"
theorem cover_957343 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957343 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_957343)
  decide +kernel
#print axioms cover_957343
end Mub6.Numerical.CircleFullD0.Forest
