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
def state_2325192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 229) else (if j.val < 3 then 174 else (if j.val < 4 then 250 else 176)))
def hex_2325192 : String := "40440942410509094405420505"
theorem cover_2325192 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325192 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2325192)
  decide +kernel
#print axioms cover_2325192

def state_2325206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 380 else 229) else (if j.val < 3 then 174 else (if j.val < 4 then 251 else 176)))
def hex_2325206 : String := "4442414305060941050942414340060506430940064409084143050609"
theorem cover_2325206 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325206 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_2325206)
  decide +kernel
#print axioms cover_2325206

def state_2325235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 381 else 229) else (if j.val < 3 then 174 else (if j.val < 4 then 251 else 176)))
def hex_2325235 : String := "44424105430540070505424105434044050905404442070542410509410509440505410543054044050505"
theorem cover_2325235 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325235 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_2325235)
  decide +kernel
#print axioms cover_2325235

def state_2325278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 175 else (if j.val < 4 then 125 else 176)))
def hex_2325278 : String := "410543400905404442090542410509094405420505"
theorem cover_2325278 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325278 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_2325278)
  decide +kernel
#print axioms cover_2325278

def state_2325301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 228) else (if j.val < 3 then 174 else (if j.val < 4 then 125 else 177)))
def hex_2325301 : String := "43404405070540440606440507"
theorem cover_2325301 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325301 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 13) (hex := hex_2325301)
  decide +kernel
#print axioms cover_2325301

def state_2325315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 229) else (if j.val < 3 then 174 else (if j.val < 4 then 250 else 177)))
def hex_2325315 : String := "4044424143400805080941070942080744424105430540440508050507"
theorem cover_2325315 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325315 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_2325315)
  decide +kernel
#print axioms cover_2325315

def state_2325344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 229) else (if j.val < 3 then 174 else (if j.val < 4 then 251 else 177)))
def hex_2325344 : String := "404442410808410808084442414305400805434044420805084405420505400844420A0508410543404405070540084405074241080807"
theorem cover_2325344 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325344 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_2325344)
  decide +kernel
#print axioms cover_2325344

def state_2325399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 175 else (if j.val < 4 then 125 else 177)))
def hex_2325399 : String := "41074307404442410608070707"
theorem cover_2325399 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325399 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2325399)
  decide +kernel
#print axioms cover_2325399
end Mub6.Numerical.CircleFullD0.Forest
