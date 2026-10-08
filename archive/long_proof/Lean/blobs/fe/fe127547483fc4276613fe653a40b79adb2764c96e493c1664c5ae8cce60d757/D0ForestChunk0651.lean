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
def state_1345196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
def hex_1345196 : String := "4043444207080944424140060640440A070A41054044084308420605084206410540430506064308440806"
theorem cover_1345196 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345196 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1345196)
  decide +kernel
#print axioms cover_1345196

def state_1345241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 25)))
def hex_1345241 : String := "444207084207410940430744080708"
theorem cover_1345241 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345241 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1345241)
  decide +kernel
#print axioms cover_1345241

def state_1345257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 50)))
def hex_1345257 : String := "420A414044084308420A080840440843080A08"
theorem cover_1345257 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345257 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1345257)
  decide +kernel
#print axioms cover_1345257

def state_1345277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 51)))
def hex_1345277 : String := "07"
theorem cover_1345277 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345277 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1345277)
  decide +kernel
#print axioms cover_1345277

def state_1345279 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 51)))
def hex_1345279 : String := "404344420708074442410640440A06064140444305060506404443080A4342060506440806420606430906"
theorem cover_1345279 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345279 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1345279)
  decide +kernel
#print axioms cover_1345279

def state_1345322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 51)))
def hex_1345322 : String := "4043444207084207410940090944420A41404443080A43420708420A410A0A0A40440A800A420741404344420741058007444206060606804309440A09"
theorem cover_1345322 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345322 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_1345322)
  decide +kernel
#print axioms cover_1345322

def state_1345383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
def hex_1345383 : String := "430844084207410609"
theorem cover_1345383 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345383 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1345383)
  decide +kernel
#print axioms cover_1345383

def state_1345393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 30) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 25)))
def hex_1345393 : String := "05"
theorem cover_1345393 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345393 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1345393)
  decide +kernel
#print axioms cover_1345393
end Mub6.Numerical.CircleFullD0.Forest
