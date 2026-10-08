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
def state_2587941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 74) else (if j.val < 3 then 194 else (if j.val < 4 then 190 else 77)))
def hex_2587941 : String := "40444143080543080541434240050A050543080544410643090641434240440A074406074044060706420A06434240440907090942400707400506"
theorem cover_2587941 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587941 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 59) (hex := hex_2587941)
  decide +kernel
#print axioms cover_2587941

def state_2588000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 74) else (if j.val < 3 then 195 else (if j.val < 4 then 190 else 77)))
def hex_2588000 : String := "40054406410609"
theorem cover_2588000 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588000 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2588000)
  decide +kernel
#print axioms cover_2588000

def state_2588007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 74) else (if j.val < 3 then 97 else (if j.val < 4 then 191 else 77)))
def hex_2588007 : String := "42400544064106434207050505"
theorem cover_2588007 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588007 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2588007)
  decide +kernel
#print axioms cover_2588007

def state_2588021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 75) else (if j.val < 3 then 97 else (if j.val < 4 then 190 else 77)))
def hex_2588021 : String := "42404408410808444109094143094240070909094005440909"
theorem cover_2588021 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588021 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_2588021)
  decide +kernel
#print axioms cover_2588021

def state_2588046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 75) else (if j.val < 3 then 97 else (if j.val < 4 then 191 else 77)))
def hex_2588046 : String := "424044050544414342400506050543424005090505414342070505434240050705054005440505"
theorem cover_2588046 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588046 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_2588046)
  decide +kernel
#print axioms cover_2588046

def state_2588087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 96 else (if j.val < 4 then 47 else 39)))
def hex_2588087 : String := "434044410A42064306070744410A424340060507434044410A060644410A4205430507074007070740074441070707"
theorem cover_2588087 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588087 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 47) (hex := hex_2588087)
  decide +kernel
#print axioms cover_2588087

def state_2588136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 36) else (if j.val < 3 then 97 else (if j.val < 4 then 94 else 39)))
def hex_2588136 : String := "4441424340080A0A4308054243084005070807"
theorem cover_2588136 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588136 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_2588136)
  decide +kernel
#print axioms cover_2588136

def state_2588157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 72) else (if j.val < 3 then 97 else (if j.val < 4 then 94 else 78)))
def hex_2588157 : String := "4243400A0A0A434044410A0807444106420A0907400A0A"
theorem cover_2588157 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588157 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2588157)
  decide +kernel
#print axioms cover_2588157
end Mub6.Numerical.CircleFullD0.Forest
