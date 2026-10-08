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
def state_2300131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 90)))
def hex_2300131 : String := "4041420943090909414243094409400909434405094409400941050909"
theorem cover_2300131 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300131 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_2300131)
  decide +kernel
#print axioms cover_2300131

def state_2300161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 91)))
def hex_2300161 : String := "414243440908084344090808420808"
theorem cover_2300161 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300161 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_2300161)
  decide +kernel
#print axioms cover_2300161

def state_2300178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 106) else (if j.val < 3 then 74 else (if j.val < 4 then 54 else 91)))
def hex_2300178 : String := "43444009414305090640414309080841430642060706444041080841424309084309080940084142080808"
theorem cover_2300178 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300178 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 43) (hex := hex_2300178)
  decide +kernel
#print axioms cover_2300178

def state_2300221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 106) else (if j.val < 3 then 75 else (if j.val < 4 then 54 else 91)))
def hex_2300221 : String := "43444009410509404107084107420606444008414243070807094008410708"
theorem cover_2300221 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300221 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_2300221)
  decide +kernel
#print axioms cover_2300221

def state_2300252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 107) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 91)))
def hex_2300252 : String := "42430609430908"
theorem cover_2300252 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300252 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_2300252)
  decide +kernel
#print axioms cover_2300252

def state_2300259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 55 else 45)))
def hex_2300259 : String := "444041420806084142434409400841420808080843444009094008410808084209430908400841424308080808"
theorem cover_2300259 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300259 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_2300259)
  decide +kernel
#print axioms cover_2300259

def state_2300305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 44)))
def hex_2300305 : String := "4041420606424309060A414243054405060542434409400941050944400941050940410609414243050643050609434405400905444006054006410509"
theorem cover_2300305 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300305 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_2300305)
  decide +kernel
#print axioms cover_2300305

def state_2300367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 45)))
def hex_2300367 : String := "410A4243440A08080A"
theorem cover_2300367 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300367 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2300367)
  decide +kernel
#print axioms cover_2300367
end Mub6.Numerical.CircleFullD0.Forest
