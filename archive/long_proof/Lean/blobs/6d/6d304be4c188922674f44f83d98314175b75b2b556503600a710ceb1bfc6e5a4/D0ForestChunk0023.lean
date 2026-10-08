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
def state_942999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 41) else (if j.val < 3 then 99 else (if j.val < 4 then 32 else 52)))
def hex_942999 : String := "40444143054207404407410707070541434240444106050644050740064405064209404441060906440707430542400907404405090544410705410705"
theorem cover_942999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942999 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_942999)
  decide +kernel
#print axioms cover_942999

def state_943060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 41) else (if j.val < 3 then 49 else (if j.val < 4 then 33 else 52)))
def hex_943060 : String := "4240440709074044410707410943420740090707440707"
theorem cover_943060 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943060 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_943060)
  decide +kernel
#print axioms cover_943060

def state_943083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 49 else (if j.val < 4 then 16 else 53)))
def hex_943083 : String := "4143420940090A0943424009444107070840444143060943420906090944410A4305070842094009440709"
theorem cover_943083 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943083 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_943083)
  decide +kernel
#print axioms cover_943083

def state_943126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 24 else (if j.val < 4 then 17 else 26)))
def hex_943126 : String := "42094044410509094441434207070543420740440707070709"
theorem cover_943126 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943126 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_943126)
  decide +kernel
#print axioms cover_943126

def state_943151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 27)))
def hex_943151 : String := "434209400941090909"
theorem cover_943151 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943151 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_943151)
  decide +kernel
#print axioms cover_943151

def state_943163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 48 else (if j.val < 4 then 16 else 26)))
def hex_943163 : String := "4041440A090A414443050743420940090709440543050A"
theorem cover_943163 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943163 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_943163)
  decide +kernel
#print axioms cover_943163

def state_943187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 49 else (if j.val < 4 then 16 else 26)))
def hex_943187 : String := "41440A43424006094006410644050642094009090A"
theorem cover_943187 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943187 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_943187)
  decide +kernel
#print axioms cover_943187
end Mub6.Numerical.CircleFullD0.Forest
