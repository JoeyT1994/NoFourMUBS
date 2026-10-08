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
def state_2275972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 55) else (if j.val < 3 then 93 else (if j.val < 4 then 89 else 60)))
def hex_2275972 : String := "41404442080508440708404442434144060606064309094206094442434041050641050606430507420643404105060806"
theorem cover_2275972 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275972 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_2275972)
  decide +kernel
#print axioms cover_2275972

def state_2276021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 55) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 61)))
def hex_2276021 : String := "420843410840080841084044060608"
theorem cover_2276021 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276021 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_2276021)
  decide +kernel
#print axioms cover_2276021

def state_2276036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 45 else 30)))
def hex_2276036 : String := "4041444243080643400A080608444206434009410606060641444208070844420643414006064006060606"
theorem cover_2276036 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276036 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_2276036)
  decide +kernel
#print axioms cover_2276036

def state_2276081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 27) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 30)))
def hex_2276081 : String := "414442430505050A440909"
theorem cover_2276081 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276081 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2276081)
  decide +kernel
#print axioms cover_2276081

def state_2276093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 54) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 30)))
def hex_2276093 : String := "44050A"
theorem cover_2276093 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276093 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2276093)
  decide +kernel
#print axioms cover_2276093

def state_2276096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 55) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 30)))
def hex_2276096 : String := "444243410540050541400505400944054243054009050543050542434140050540094442430505054208054140090840094442434008050609420809430909"
theorem cover_2276096 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276096 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_2276096)
  decide +kernel
#print axioms cover_2276096

def state_2276159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 47 else (if j.val < 4 then 45 else 30)))
def hex_2276159 : String := "40410A4409094107444243410740090707074243410A400606060A"
theorem cover_2276159 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276159 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_2276159)
  decide +kernel
#print axioms cover_2276159

def state_2276186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 31)))
def hex_2276186 : String := "4243404108444207430708070840060843404109094108444243410809410809090A400A0A"
theorem cover_2276186 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276186 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_2276186)
  decide +kernel
#print axioms cover_2276186

def state_2276224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 15)))
def hex_2276224 : String := "440708"
theorem cover_2276224 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276224 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2276224)
  decide +kernel
#print axioms cover_2276224
end Mub6.Numerical.CircleFullD0.Forest
