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
def state_2321095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 112) else (if j.val < 3 then 83 else (if j.val < 4 then 120 else 88)))
def hex_2321095 : String := "40444142050509414243090843050842090944054105420A4305400505"
theorem cover_2321095 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321095 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_2321095)
  decide +kernel
#print axioms cover_2321095

def state_2321124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 112) else (if j.val < 3 then 83 else (if j.val < 4 then 121 else 88)))
def hex_2321124 : String := "40444142060607414206064207084441420505420743050741420A430506420A43404405080540080A"
theorem cover_2321124 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321124 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_2321124)
  decide +kernel
#print axioms cover_2321124

def state_2321165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 113) else (if j.val < 3 then 41 else (if j.val < 4 then 60 else 88)))
def hex_2321165 : String := "42074340094409094007440741420743090707"
theorem cover_2321165 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321165 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_2321165)
  decide +kernel
#print axioms cover_2321165

def state_2321185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 112) else (if j.val < 3 then 41 else (if j.val < 4 then 60 else 89)))
def hex_2321185 : String := "42434044410808080A40080A434044410808084441420A05420A43400805084108084008444142080842080808"
theorem cover_2321185 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321185 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_2321185)
  decide +kernel
#print axioms cover_2321185

def state_2321230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 113) else (if j.val < 3 then 41 else (if j.val < 4 then 60 else 89)))
def hex_2321230 : String := "424340080A40070A43404409084441420909090840084441080808"
theorem cover_2321230 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321230 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_2321230)
  decide +kernel
#print axioms cover_2321230

def state_2321257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 41 else (if j.val < 4 then 61 else 44)))
def hex_2321257 : String := "40440708444142074340440606444106074106420708060741420808420708"
theorem cover_2321257 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321257 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_2321257)
  decide +kernel
#print axioms cover_2321257

def state_2321288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 44)))
def hex_2321288 : String := "4207434044074108054441420709074142074309400744070842070907"
theorem cover_2321288 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321288 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 29) (hex := hex_2321288)
  decide +kernel
#print axioms cover_2321288
end Mub6.Numerical.CircleFullD0.Forest
