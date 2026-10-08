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
def state_949464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 173) else (if j.val < 3 then 206 else (if j.val < 4 then 70 else 216)))
def hex_949464 : String := "4340420A4144084306090A42414407090A414443400A050A434042090642410705C74009420707440A43050A400A420A414407090A"
theorem cover_949464 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949464 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_949464)
  decide +kernel
#print axioms cover_949464

def state_949517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 173) else (if j.val < 3 then 206 else (if j.val < 4 then 70 else 217)))
def hex_949517 : String := "4340094209410944434006420905090909"
theorem cover_949517 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949517 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_949517)
  decide +kernel
#print axioms cover_949517

def state_949537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 172) else (if j.val < 3 then 207 else (if j.val < 4 then 140 else 216)))
def hex_949537 : String := "40424106C706424144434006424106070640424106070642070743064006420706C7414443064006424106080606C7"
theorem cover_949537 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949537 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_949537)
  decide +kernel
#print axioms cover_949537

def state_949584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 172) else (if j.val < 3 then 207 else (if j.val < 4 then 141 else 216)))
def hex_949584 : String := "40424109C741440806C7424144434008070709C74144434008080843400642090605C7"
theorem cover_949584 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949584 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_949584)
  decide +kernel
#print axioms cover_949584

def state_949619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 172) else (if j.val < 3 then 207 else (if j.val < 4 then 70 else 217)))
def hex_949619 : String := "4306400942094106C7"
theorem cover_949619 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949619 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_949619)
  decide +kernel
#print axioms cover_949619

def state_949628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 173) else (if j.val < 3 then 207 else (if j.val < 4 then 70 else 108)))
def hex_949628 : String := "C7"
theorem cover_949628 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949628 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_949628)
  decide +kernel
#print axioms cover_949628

def state_949631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 172) else (if j.val < 3 then 206 else (if j.val < 4 then 70 else 108)))
def hex_949631 : String := "4443404207410744070707074340420941094443400907070942070A400907"
theorem cover_949631 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949631 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_949631)
  decide +kernel
#print axioms cover_949631

def state_949663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 173) else (if j.val < 3 then 206 else (if j.val < 4 then 70 else 216)))
def hex_949663 : String := "43404207414407074405430507074042070706"
theorem cover_949663 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949663 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_949663)
  decide +kernel
#print axioms cover_949663
end Mub6.Numerical.CircleFullD0.Forest
