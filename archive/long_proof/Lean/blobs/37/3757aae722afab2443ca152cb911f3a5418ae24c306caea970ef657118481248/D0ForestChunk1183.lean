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
def state_1584418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 24)))
def hex_1584418 : String := "4340410909410944094243064009060940410509410944094240410908410943090809"
theorem cover_1584418 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584418 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1584418)
  decide +kernel
#print axioms cover_1584418

def state_1584454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 26 else 25)))
def hex_1584454 : String := "4041424407070707414244430A40094109094307400741424407070707440907424443074007414206070607440707"
theorem cover_1584454 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584454 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_1584454)
  decide +kernel
#print axioms cover_1584454

def state_1584502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 27 else 25)))
def hex_1584502 : String := "4142444005410507070707"
theorem cover_1584502 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584502 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1584502)
  decide +kernel
#print axioms cover_1584502

def state_1584515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 50 else (if j.val < 4 then 27 else 25)))
def hex_1584515 : String := "44404109430707414309094342440940070909424409400709094041430706074143424440074109070744070742444006090606434207074244070707"
theorem cover_1584515 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584515 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1584515)
  decide +kernel
#print axioms cover_1584515

def state_1584576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 51 else (if j.val < 4 then 27 else 25)))
def hex_1584576 : String := "440940074143070607"
theorem cover_1584576 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584576 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1584576)
  decide +kernel
#print axioms cover_1584576

def state_1584585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 27 else 25)))
def hex_1584585 : String := "42444041070741434244090707424409070743074207074007414307070744400741090707"
theorem cover_1584585 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584585 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1584585)
  decide +kernel
#print axioms cover_1584585

def state_1584623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 13)))
def hex_1584623 : String := "41424344400641064207060606064243440707440806430706"
theorem cover_1584623 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584623 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1584623)
  decide +kernel
#print axioms cover_1584623
end Mub6.Numerical.CircleFullD0.Forest
