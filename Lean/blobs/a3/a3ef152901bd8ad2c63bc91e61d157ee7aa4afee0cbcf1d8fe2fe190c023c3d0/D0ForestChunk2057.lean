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
def state_2574126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 46 else (if j.val < 4 then 23 else 18)))
def hex_2574126 : String := "4340414442050706060540410A444342064006410A06420940094109090641440A0A444305420540410A440743050A054305420540410A444305090605"
theorem cover_2574126 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574126 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_2574126)
  decide +kernel
#print axioms cover_2574126

def state_2574188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 47 else (if j.val < 4 then 46 else 18)))
def hex_2574188 : String := "4041440742430640064407064308400844070844070641440742054305404407410A420507054407420543054041440742050744070605"
theorem cover_2574188 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574188 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_2574188)
  decide +kernel
#print axioms cover_2574188

def state_2574244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 18) else (if j.val < 3 then 47 else (if j.val < 4 then 47 else 18)))
def hex_2574244 : String := "4144420A07424340090A0943400844070A0A4442434007074009410707074243064006410944090643400641080840084144420907094408420608"
theorem cover_2574244 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574244 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_2574244)
  decide +kernel
#print axioms cover_2574244

def state_2574304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 47 else (if j.val < 4 then 47 else 18)))
def hex_2574304 : String := "4442434007050A074243400A050A43404407410A420A434007070A4407410A420543050A400A0A"
theorem cover_2574304 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574304 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_2574304)
  decide +kernel
#print axioms cover_2574304

def state_2574344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 47 else (if j.val < 4 then 47 else 36)))
def hex_2574344 : String := "42434007054041074407430742400707074107440743054205074307400707"
theorem cover_2574344 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574344 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_2574344)
  decide +kernel
#print axioms cover_2574344
end Mub6.Numerical.CircleFullD0.Forest
