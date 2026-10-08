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
def state_1543964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 20)))
def hex_1543964 : String := "4207414344074006420741430906070707"
theorem cover_1543964 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543964 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1543964)
  decide +kernel
#print axioms cover_1543964

def state_1543982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 50 else (if j.val < 4 then 20 else 20)))
def hex_1543982 : String := "4143440740420707424143080707414344070807070707"
theorem cover_1543982 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543982 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_1543982)
  decide +kernel
#print axioms cover_1543982

def state_1544008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 40)))
def hex_1544008 : String := "400742074143080707"
theorem cover_1544008 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544008 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1544008)
  decide +kernel
#print axioms cover_1544008

def state_1544018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 58) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 41)))
def hex_1544018 : String := "4241434407400642064106440706070741434440074207094009424105440709094407064344070907"
theorem cover_1544018 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544018 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1544018)
  decide +kernel
#print axioms cover_1544018

def state_1544060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 58) else (if j.val < 3 then 102 else (if j.val < 4 then 40 else 41)))
def hex_1544060 : String := "414344084042414408060841440805440808084407404206410607424106074144080608430807"
theorem cover_1544060 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544060 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1544060)
  decide +kernel
#print axioms cover_1544060

def state_1544100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 116) else (if j.val < 3 then 103 else (if j.val < 4 then 40 else 41)))
def hex_1544100 : String := "434440420808084042410544080505054440070840424106074144430505054407430506424144080544074305074105440805"
theorem cover_1544100 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544100 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 51) (hex := hex_1544100)
  decide +kernel
#print axioms cover_1544100

def state_1544151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 117) else (if j.val < 3 then 103 else (if j.val < 4 then 40 else 41)))
def hex_1544151 : String := "4344084042080908440740420707420844074143050707"
theorem cover_1544151 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544151 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1544151)
  decide +kernel
#print axioms cover_1544151

def state_1544174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 20)))
def hex_1544174 : String := "44074007420741434407400642074106070707"
theorem cover_1544174 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544174 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 19) (hex := hex_1544174)
  decide +kernel
#print axioms cover_1544174

def state_1544193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 20)))
def hex_1544193 : String := "4344074007420743080707"
theorem cover_1544193 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544193 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1544193)
  decide +kernel
#print axioms cover_1544193

def state_1544205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 21)))
def hex_1544205 : String := "400642064441064340064206050606"
theorem cover_1544205 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544205 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1544205)
  decide +kernel
#print axioms cover_1544205
end Mub6.Numerical.CircleFullD0.Forest
