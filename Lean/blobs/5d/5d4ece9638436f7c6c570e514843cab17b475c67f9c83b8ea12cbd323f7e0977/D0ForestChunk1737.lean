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
def state_2290038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 47)))
def hex_2290038 : String := "414308400A08434042084443084108400508430805084042050A420844410843084005084108430505"
theorem cover_2290038 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290038 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_2290038)
  decide +kernel
#print axioms cover_2290038

def state_2290079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 23)))
def hex_2290079 : String := "08"
theorem cover_2290079 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290079 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2290079)
  decide +kernel
#print axioms cover_2290079

def state_2290081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 11)))
def hex_2290081 : String := "4307444042410543050A050507"
theorem cover_2290081 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290081 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2290081)
  decide +kernel
#print axioms cover_2290081

def state_2290096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 22)))
def hex_2290096 : String := "4042430541054405424043050505050505"
theorem cover_2290096 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290096 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_2290096)
  decide +kernel
#print axioms cover_2290096

def state_2290116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 23)))
def hex_2290116 : String := "4441054208054107420607"
theorem cover_2290116 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290116 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2290116)
  decide +kernel
#print axioms cover_2290116

def state_2290128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 46)))
def hex_2290128 : String := "41074240430844410840420843054405080841084042084408080808404344050744410505410742404443050A07070705"
theorem cover_2290128 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290128 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 49) (hex := hex_2290128)
  decide +kernel
#print axioms cover_2290128

def state_2290177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 47)))
def hex_2290177 : String := "410742404443084108400806080607"
theorem cover_2290177 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290177 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_2290177)
  decide +kernel
#print axioms cover_2290177

def state_2290192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 23)))
def hex_2290192 : String := "07"
theorem cover_2290192 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290192 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2290192)
  decide +kernel
#print axioms cover_2290192

def state_2290193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 23)))
def hex_2290193 : String := "07"
theorem cover_2290193 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290193 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2290193)
  decide +kernel
#print axioms cover_2290193

def state_2290198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 22)))
def hex_2290198 : String := "43440542400A05054405424006080A"
theorem cover_2290198 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290198 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_2290198)
  decide +kernel
#print axioms cover_2290198

def state_2290214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 22)))
def hex_2290214 : String := "44054240434405410540090544410509410A400909084043050A05"
theorem cover_2290214 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290214 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_2290214)
  decide +kernel
#print axioms cover_2290214

def state_2290241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 22)))
def hex_2290241 : String := "4442400A0540090542400A444105430542400905054143050A434208400A0542400A080A400A4405410543050A"
theorem cover_2290241 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290241 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_2290241)
  decide +kernel
#print axioms cover_2290241

def state_2290286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 22)))
def hex_2290286 : String := "4105430544050A"
theorem cover_2290286 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290286 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2290286)
  decide +kernel
#print axioms cover_2290286

def state_2290293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 22)))
def hex_2290293 : String := "42410543050505"
theorem cover_2290293 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290293 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2290293)
  decide +kernel
#print axioms cover_2290293
end Mub6.Numerical.CircleFullD0.Forest
