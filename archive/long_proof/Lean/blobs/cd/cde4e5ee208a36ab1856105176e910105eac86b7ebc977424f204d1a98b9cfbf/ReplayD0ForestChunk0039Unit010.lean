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
def state_2252719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 13)))
def hex_2252719 : String := "414342094405400805420944070743424440414308094344404208410543050909084440420843090909090940080844404143054244050905434244054041054305420805050542444043410544050541440542090544064209064305074043410942094405094109420944404341050909090943090944054043054105424405404305410642090507050541054305424405070540414308420840080743420840440508440505424008084044434105424044050808054142080542404443410842080541070908440908404407434105BE4107BE07430808444305070841084342080542084044070707424440434109440909090909444043410742444043410744424006070642090741074407420907074043410942094409094109090944074043410742440707070707410742440709070740434142084044070707424044090608404443410742404443090708094044070707410742404407070707434108420844404308070708410742060A44074308074142090742094044070A0743410742080707"
theorem cover_2252719 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252719 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 19) (count := 393) (hex := hex_2252719)
  decide +kernel
#print axioms cover_2252719

def state_2253113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 6)))
def hex_2253113 : String := "440505"
theorem cover_2253113 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253113 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2253113)
  decide +kernel
#print axioms cover_2253113

def state_2253117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 12)))
def hex_2253117 : String := "400607"
theorem cover_2253117 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253117 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2253117)
  decide +kernel
#print axioms cover_2253117

def state_2253122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 24) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 13)))
def hex_2253122 : String := "424344050544064041064306070706"
theorem cover_2253122 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253122 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_2253122)
  decide +kernel
#print axioms cover_2253122
end Mub6.Numerical.CircleFullD0.Forest
