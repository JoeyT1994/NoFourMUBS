import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_278508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 19)))
def hex_278508 : String := "4041094442070907414442430A08090944420543070507"
theorem cover_278508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278508 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 23) (hex := hex_278508)
  decide +kernel
#print axioms cover_278508

def state_278531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 19 else (if j.val < 4 then 14 else 9)))
def hex_278531 : String := "4344404142430609060806400906444041094243440809440A09094142430644060606424306050609"
theorem cover_278531 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278531 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_278531)
  decide +kernel
#print axioms cover_278531

def state_278573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 8)))
def hex_278573 : String := "40410A0A41424344074041074207070707434407400707074243440A400A050A0A"
theorem cover_278573 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278573 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_278573)
  decide +kernel
#print axioms cover_278573

def state_278607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 9)))
def hex_278607 : String := "4142444309090505424443414009420A090A0A0909"
theorem cover_278607 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278607 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_278607)
  decide +kernel
#print axioms cover_278607

def state_278629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 9)))
def hex_278629 : String := "42444340410842080908080809"
theorem cover_278629 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278629 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_278629)
  decide +kernel
#print axioms cover_278629

def state_278643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 18 else (if j.val < 4 then 15 else 9)))
def hex_278643 : String := "44434041424443400A080808440A094244054305050A414208444305050805404142080A0A41080543404109444243090809094108440508400908"
theorem cover_278643 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278643 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_278643)
  decide +kernel
#print axioms cover_278643

def state_278702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 19 else (if j.val < 4 then 15 else 9)))
def hex_278702 : String := "44434041090A4142444309090909420509400941090A09"
theorem cover_278702 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278702 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_278702)
  decide +kernel
#print axioms cover_278702

def state_278726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
def hex_278726 : String := "4105444243410540054443050505050905"
theorem cover_278726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278726 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_278726)
  decide +kernel
#print axioms cover_278726
end Mub6.Numerical.CircleFullPrototype.Forest
