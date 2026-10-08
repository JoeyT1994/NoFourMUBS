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
def state_1487016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 38) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 55)))
def hex_1487016 : String := "4043410A4244060A06414244404306410A0543410705050A0A424405400A434109050544060A4341080841424440430705050944070742440509440707"
theorem cover_1487016 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487016 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1487016)
  decide +kernel
#print axioms cover_1487016

def state_1487077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 38) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 27)))
def hex_1487077 : String := "4406400A07"
theorem cover_1487077 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487077 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1487077)
  decide +kernel
#print axioms cover_1487077

def state_1487082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 39) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 27)))
def hex_1487082 : String := "4244054043064142050605430841420508054406400607"
theorem cover_1487082 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487082 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1487082)
  decide +kernel
#print axioms cover_1487082

def state_1487105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 21 else (if j.val < 4 then 25 else 13)))
def hex_1487105 : String := "4408410A400608"
theorem cover_1487105 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487105 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1487105)
  decide +kernel
#print axioms cover_1487105

def state_1487112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 13)))
def hex_1487112 : String := "43084244084140430841420908424408090808404308414244080908080808"
theorem cover_1487112 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487112 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_1487112)
  decide +kernel
#print axioms cover_1487112

def state_1487144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 12)))
def hex_1487144 : String := "41400744074243080707400944084243080A07"
theorem cover_1487144 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487144 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_1487144)
  decide +kernel
#print axioms cover_1487144

def state_1487168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 26)))
def hex_1487168 : String := "414007434407070740434407424107070707434407424107070707"
theorem cover_1487168 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487168 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_1487168)
  decide +kernel
#print axioms cover_1487168

def state_1487196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 16) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 27)))
def hex_1487196 : String := "4005430506"
theorem cover_1487196 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487196 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1487196)
  decide +kernel
#print axioms cover_1487196

def state_1487202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 17) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 27)))
def hex_1487202 : String := "4342444105400A430A0A050542444107400807080A"
theorem cover_1487202 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487202 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1487202)
  decide +kernel
#print axioms cover_1487202

def state_1487223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 17) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 27)))
def hex_1487223 : String := "43424441404305060640434244070A074244070607434244070607074105400A064407054244410640070606440707"
theorem cover_1487223 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487223 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1487223)
  decide +kernel
#print axioms cover_1487223
end Mub6.Numerical.CircleFullD0.Forest
