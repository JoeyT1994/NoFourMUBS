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
def state_2588181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 73) else (if j.val < 3 then 194 else (if j.val < 4 then 94 else 78)))
def hex_2588181 : String := "43404441420A08080744414243090A43090A090740444107070744410A4207434007070707"
theorem cover_2588181 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588181 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_2588181)
  decide +kernel
#print axioms cover_2588181

def state_2588218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 73) else (if j.val < 3 then 195 else (if j.val < 4 then 94 else 78)))
def hex_2588218 : String := "434044080744094107074044414305050807444143420A0606430942070607"
theorem cover_2588218 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588218 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_2588218)
  decide +kernel
#print axioms cover_2588218

def state_2588249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 36) else (if j.val < 3 then 97 else (if j.val < 4 then 94 else 79)))
def hex_2588249 : String := "07"
theorem cover_2588249 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588249 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2588249)
  decide +kernel
#print axioms cover_2588249

def state_2588250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 97 else (if j.val < 4 then 95 else 39)))
def hex_2588250 : String := "4044050544410A4342400707400544060742070507"
theorem cover_2588250 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588250 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_2588250)
  decide +kernel
#print axioms cover_2588250

def state_2588272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 96 else (if j.val < 4 then 47 else 39)))
def hex_2588272 : String := "434006444142430640060743400644414205090606400744410707070606404441070606444107DC07"
theorem cover_2588272 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588272 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 41) (hex := hex_2588272)
  decide +kernel
#print axioms cover_2588272

def state_2588315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 37) else (if j.val < 3 then 97 else (if j.val < 4 then 94 else 39)))
def hex_2588315 : String := "44414208080606"
theorem cover_2588315 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588315 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2588315)
  decide +kernel
#print axioms cover_2588315

def state_2588322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 37) else (if j.val < 3 then 97 else (if j.val < 4 then 94 else 39)))
def hex_2588322 : String := "444142434044080644094107064044410708074441420743090742070907434008094044080744090742430640064409064308400809410706"
theorem cover_2588322 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588322 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_2588322)
  decide +kernel
#print axioms cover_2588322

def state_2588379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 97 else (if j.val < 4 then 95 else 39)))
def hex_2588379 : String := "4044410505074441434240070740054441074309050742070543424007444107070740054441090907424005070507"
theorem cover_2588379 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588379 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_2588379)
  decide +kernel
#print axioms cover_2588379

def state_2588428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 19)))
def hex_2588428 : String := "440808"
theorem cover_2588428 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588428 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2588428)
  decide +kernel
#print axioms cover_2588428
end Mub6.Numerical.CircleFullD0.Forest
