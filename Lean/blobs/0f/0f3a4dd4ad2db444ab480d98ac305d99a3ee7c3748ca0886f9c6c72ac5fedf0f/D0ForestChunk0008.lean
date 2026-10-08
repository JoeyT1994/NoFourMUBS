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
def state_1578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_1578 : String := "404142054344054005410505054243440540050905430844050541424344050A0543444105090A44050542430944050543440840050509"
theorem cover_1578 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1578 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 55) (hex := hex_1578)
  decide +kernel
#print axioms cover_1578

def state_1634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_1634 : String := "40414205430509424305444005060543440A050A4142430544410542050505434441050A05440905424306440605430A4440050505"
theorem cover_1634 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1634 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_1634)
  decide +kernel
#print axioms cover_1634

def state_1687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_1687 : String := "404142054305054243050543050541424305054305054243050505"
theorem cover_1687 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1687 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 27) (hex := hex_1687)
  decide +kernel
#print axioms cover_1687

def state_939529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_939529 : String := "4142434440080609094344080A444209080A42434407410A07074344080A44074142070A42070A"
theorem cover_939529 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939529 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 39) (hex := hex_939529)
  decide +kernel
#print axioms cover_939529

def state_939570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
def hex_939570 : String := "4344060A4440094306090A"
theorem cover_939570 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939570 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_939570)
  decide +kernel
#print axioms cover_939570

def state_939581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
def hex_939581 : String := "4344400842060740420A44084143420A08070A4244064143060607444143060607074440420A074243060A430741444007050A07400A420A43070A"
theorem cover_939581 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939581 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_939581)
  decide +kernel
#print axioms cover_939581
end Mub6.Numerical.CircleFullD0.Forest
