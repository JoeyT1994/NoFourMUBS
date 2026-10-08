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
def state_2323986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 56) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 88)))
def hex_2323986 : String := "4241054340440542410543054044050505050540444241054305060542410643404406060A06410543400605064405420505410543054044050705"
theorem cover_2323986 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323986 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 59) (hex := hex_2323986)
  decide +kernel
#print axioms cover_2323986

def state_2324045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 56) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 89)))
def hex_2324045 : String := "424107430740444241060807070707"
theorem cover_2324045 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324045 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_2324045)
  decide +kernel
#print axioms cover_2324045

def state_2324060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 43 else (if j.val < 4 then 63 else 44)))
def hex_2324060 : String := "404406064442410643404406064442090509400609410643400644050706424106434044060609094106430706"
theorem cover_2324060 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324060 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_2324060)
  decide +kernel
#print axioms cover_2324060

def state_2324112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 188 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 124 else 88)))
def hex_2324112 : String := "4442414309060709420808"
theorem cover_2324112 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324112 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2324112)
  decide +kernel
#print axioms cover_2324112

def state_2324125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 189 else 114) else (if j.val < 3 then 172 else (if j.val < 4 then 124 else 176)))
def hex_2324125 : String := "41434044090944054241050905404407420606444207410507424143050607410543094006440505430940074407420709"
theorem cover_2324125 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324125 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_2324125)
  decide +kernel
#print axioms cover_2324125

def state_2324174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 189 else 114) else (if j.val < 3 then 173 else (if j.val < 4 then 124 else 176)))
def hex_2324174 : String := "41434009054044094206064405424105090509"
theorem cover_2324174 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324174 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_2324174)
  decide +kernel
#print axioms cover_2324174

def state_2324194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 189 else 114) else (if j.val < 3 then 172 else (if j.val < 4 then 124 else 177)))
def hex_2324194 : String := "414340444208080844424105430908410509420808400844424108084108080843400944090840084442070908"
theorem cover_2324194 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324194 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 45) (hex := hex_2324194)
  decide +kernel
#print axioms cover_2324194
end Mub6.Numerical.CircleFullD0.Forest
