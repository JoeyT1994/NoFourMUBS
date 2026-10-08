import D0FullInterface
import ChartPartitionJoined
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2331860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_2331860 : String := "4142434405410542404306054306440542410506050544414243054405404105420505050542430544084009424305080509414243054044410542430544050905410542090544410542430505050A0542434044050944424105430505054241430505430909410509404442090909444243410509414009440707090942434140090A09410A0909430509430544410A094105094243444244054007080542400741430644420706070740074143064405060744424308080942434041090741444243400741440506074008410908094243070909440807090943440540050609"
theorem cover_2331860 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331860 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 225) (hex := hex_2331860)
  decide +kernel
#print axioms cover_2331860

def state_2332086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_2332086 : String := "42434440054105054041424305050542430644424005050542404105060606430605410542434406064405404241050605424105060506444041054243054405424305070505054041424305440507054243444240050505424041054344054240050505444243050505424340050540090A054105434405424005050544054240430505050540050544424340410544054243054405400905050540410744070707430507424340410A444243400905400941050909424340090A0A0941054442430507054243400A050A0A404107440A0A07434005050A430544050A414243050505424344054042410543050505054407074305054344050505"
theorem cover_2332086 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332086 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 18) (count := 251) (hex := hex_2332086)
  decide +kernel
#print axioms cover_2332086

def state_2332339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
def hex_2332339 : String := "444042084405410506420808404241430644424006060642400606064306440807064241430644400606060606"
theorem cover_2332339 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332339 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_2332339)
  decide +kernel
#print axioms cover_2332339

def state_2332385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 6)))
def hex_2332385 : String := "404243440541420805080808420808"
theorem cover_2332385 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332385 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_2332385)
  decide +kernel
#print axioms cover_2332385


end Mub6.Numerical.CircleFullD0.Forest
