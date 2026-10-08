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
def state_981884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 10)))
def hex_981884 : String := "404143440808084344424041084344060806084041094309094108434409090842054009410543440805054408054108434442084041084344080808080808"
theorem cover_981884 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981884 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_981884)
  decide +kernel
#print axioms cover_981884

def state_981948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 10)))
def hex_981948 : String := "4143090943444240094109430909094240074107430709074442400909094240070807"
theorem cover_981948 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981948 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_981948)
  decide +kernel
#print axioms cover_981948

def state_981983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 10)))
def hex_981983 : String := "414344090608434442404109430A090A0A424041064306080606444208094208400906"
theorem cover_981983 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981983 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_981983)
  decide +kernel
#print axioms cover_981983

def state_982018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
def hex_982018 : String := "4205400741064443060806"
theorem cover_982018 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982018 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_982018)
  decide +kernel
#print axioms cover_982018

def state_982038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 48 else 20)))
def hex_982038 : String := "404144080808414442430840080A0842430A40410A080A0A08"
theorem cover_982038 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982038 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_982038)
  decide +kernel
#print axioms cover_982038

def state_982066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 16 else (if j.val < 4 then 49 else 40)))
def hex_982066 : String := "424308400641444206084206430840064109060608"
theorem cover_982066 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982066 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 21) (hex := hex_982066)
  decide +kernel
#print axioms cover_982066

def state_982087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 16 else (if j.val < 4 then 49 else 41)))
def hex_982087 : String := "424340084144424307400741050807070840410706414442434006410506064307400609074442060842064308400641070643084007410708"
theorem cover_982087 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982087 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_982087)
  decide +kernel
#print axioms cover_982087
end Mub6.Numerical.CircleFullD0.Forest
