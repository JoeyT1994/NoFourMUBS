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
def state_2272070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 6)))
def hex_2272070 : String := "43440840074142430A440840070A4308080844084008414243440840084142430A0A080844084008080808"
theorem cover_2272070 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272070 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 43) (hex := hex_2272070)
  decide +kernel
#print axioms cover_2272070

def state_2272114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 7)))
def hex_2272114 : String := "430740054144434205400541444307050505050505"
theorem cover_2272114 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272114 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 21) (hex := hex_2272114)
  decide +kernel
#print axioms cover_2272114

def state_2272136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 7)))
def hex_2272136 : String := "4007414442430740074144420743070A07074307400741444243074007080842074307094407070707"
theorem cover_2272136 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272136 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 41) (hex := hex_2272136)
  decide +kernel
#print axioms cover_2272136

def state_2272178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 7)))
def hex_2272178 : String := "414442430705090707"
theorem cover_2272178 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272178 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2272178)
  decide +kernel
#print axioms cover_2272178

def state_2272191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 14)))
def hex_2272191 : String := "404144070707414442430A4005414406050543400A4144080A0840414408420508084144084206430806084207430740054144060505440A07"
theorem cover_2272191 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272191 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_2272191)
  decide +kernel
#print axioms cover_2272191

def state_2272248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 14)))
def hex_2272248 : String := "4005414443420540054144060505050505"
theorem cover_2272248 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272248 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_2272248)
  decide +kernel
#print axioms cover_2272248

def state_2272265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 11 else 14)))
def hex_2272265 : String := "434041090841444243400808080842434007414442430709090707400941440909090944084207084008414408424340054144060505050808"
theorem cover_2272265 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272265 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 57) (hex := hex_2272265)
  decide +kernel
#print axioms cover_2272265
end Mub6.Numerical.CircleFullD0.Forest
