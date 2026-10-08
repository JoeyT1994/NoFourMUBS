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
def state_1578124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 65) else (if j.val < 3 then 193 else (if j.val < 4 then 208 else 206)))
def hex_1578124 : String := "4041D0424409070741D042440943400741D00640410707410942440907074409430707"
theorem cover_1578124 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578124 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 35) (hex := hex_1578124)
  decide +kernel
#print axioms cover_1578124

def state_1578159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 65) else (if j.val < 3 then 193 else (if j.val < 4 then 209 else 206)))
def hex_1578159 : String := "4041D04244094307060941D04244094340410907410942440943070909404106424409060641094244090A0909"
theorem cover_1578159 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578159 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 45) (hex := hex_1578159)
  decide +kernel
#print axioms cover_1578159

def state_1578205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 65) else (if j.val < 3 then 193 else (if j.val < 4 then 208 else 207)))
def hex_1578205 : String := "4041D00741D042444307400741D007430707440707"
theorem cover_1578205 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578205 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1578205)
  decide +kernel
#print axioms cover_1578205

def state_1578226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 65) else (if j.val < 3 then 193 else (if j.val < 4 then 209 else 207)))
def hex_1578226 : String := "400641D0424443400741D0424443070707074006410642444340060A060606434006410607064443070606"
theorem cover_1578226 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578226 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 43) (hex := hex_1578226)
  decide +kernel
#print axioms cover_1578226

def state_1578270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 64) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 103)))
def hex_1578270 : String := "D0"
theorem cover_1578270 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578270 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1578270)
  decide +kernel
#print axioms cover_1578270

def state_1578273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 65) else (if j.val < 3 then 192 else (if j.val < 4 then 104 else 206)))
def hex_1578273 : String := "434041D006064041D0424443060A430505444306400A0A434041D0420544050505400A0A41D04205440605"
theorem cover_1578273 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578273 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 43) (hex := hex_1578273)
  decide +kernel
#print axioms cover_1578273

def state_1578316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 65) else (if j.val < 3 then 192 else (if j.val < 4 then 104 else 207)))
def hex_1578316 : String := "434041D04205440505054041D042440505444305400A0543050541D005"
theorem cover_1578316 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578316 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1578316)
  decide +kernel
#print axioms cover_1578316

def state_1578347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 65) else (if j.val < 3 then 193 else (if j.val < 4 then 208 else 206)))
def hex_1578347 : String := "4041D0424406430640410942060906440943080808"
theorem cover_1578347 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578347 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_1578347)
  decide +kernel
#print axioms cover_1578347
end Mub6.Numerical.CircleFullD0.Forest
