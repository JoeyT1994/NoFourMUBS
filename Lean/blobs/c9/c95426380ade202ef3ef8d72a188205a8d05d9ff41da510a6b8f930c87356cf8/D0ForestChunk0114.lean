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
def state_964877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 54)))
def hex_964877 : String := "42430944064041420609060609"
theorem cover_964877 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964877 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_964877)
  decide +kernel
#print axioms cover_964877

def state_964890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 44) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 54)))
def hex_964890 : String := "410909"
theorem cover_964890 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964890 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_964890)
  decide +kernel
#print axioms cover_964890

def state_964898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 106 else (if j.val < 4 then 72 else 110)))
def hex_964898 : String := "40414244434007094041420707074142430944090A0909430740070A440907424443094007094307400741070709414244090A094244094309404109090909"
theorem cover_964898 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964898 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_964898)
  decide +kernel
#print axioms cover_964898

def state_964964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 176) else (if j.val < 3 then 212 else (if j.val < 4 then 73 else 110)))
def hex_964964 : String := "43444041420543070542434407050507414243440605054344090A440505420643090640410507410542054307054440050605"
theorem cover_964964 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964964 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 51) (hex := hex_964964)
  decide +kernel
#print axioms cover_964964

def state_965015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 176) else (if j.val < 3 then 213 else (if j.val < 4 then 73 else 110)))
def hex_965015 : String := "434440070940074107074440410542050741420543090542060905"
theorem cover_965015 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965015 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_965015)
  decide +kernel
#print axioms cover_965015

def state_965042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 177) else (if j.val < 3 then 106 else (if j.val < 4 then 73 else 110)))
def hex_965042 : String := "4243444041424307060742430706074142060906400741424344070505074243070607440640054105064344090744404107070640074142050707"
theorem cover_965042 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965042 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_965042)
  decide +kernel
#print axioms cover_965042
end Mub6.Numerical.CircleFullD0.Forest
