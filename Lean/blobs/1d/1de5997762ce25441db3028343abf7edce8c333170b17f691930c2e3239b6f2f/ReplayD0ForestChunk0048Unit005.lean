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
def state_2335969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_2335969 : String := "424344054041430544054240050505434405064405420A404405060541050A44404105424305074344080544074041050705054041440542434041054405430509054041050A05434041054405050509444243050A43404105440505054041440505440A0A41050A4243400A0A0A43404441050A41420A4307070A0A404441420A090A41090A0A410544050A4344400541050540410542430544054044050705050544404142430544050505424344084041050805440840414205050808434408054408404241050841050805410542430508084041424405430507440505424443404105420505054041420505424443054041050705434044050505404441050A41050A05444305404205050543054042440505050541054205054340444105424305404405430541050A0505410742430707074405074044414209054243404441050A41090A0A404441090A09094340440507054044420905090941074243090907444105420505094443054042410544050505054307074105424405430509440505"
theorem cover_2335969 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335969 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 18) (count := 389) (hex := hex_2335969)
  decide +kernel
#print axioms cover_2335969

def state_2336359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
def hex_2336359 : String := "4344404305410606054043064406060A4440414207434407400707070741420743080707404441420A43404441420543050706410A060A4044070A0A42064306070A0A"
theorem cover_2336359 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336359 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 67) (hex := hex_2336359)
  decide +kernel
#print axioms cover_2336359

def state_2336427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
def hex_2336427 : String := "444042060642430541050606404243064441400605060606420606"
theorem cover_2336427 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336427 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_2336427)
  decide +kernel
#print axioms cover_2336427

def state_2336455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
def hex_2336455 : String := "40424143440840420808084407404207080843060741434406400806080808"
theorem cover_2336455 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336455 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_2336455)
  decide +kernel
#print axioms cover_2336455


end Mub6.Numerical.CircleFullD0.Forest
