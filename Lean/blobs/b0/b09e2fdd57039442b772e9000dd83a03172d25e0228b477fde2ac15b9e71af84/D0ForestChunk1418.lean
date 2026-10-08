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
def state_1641038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 20)))
def hex_1641038 : String := "4340420909064042444105434005060541094306400506440509420644414306054306400506410643064042060906"
theorem cover_1641038 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641038 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1641038)
  decide +kernel
#print axioms cover_1641038

def state_1641086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 50 else 20)))
def hex_1641086 : String := "404244414306400906430740090609444109070742064441064306404407060606"
theorem cover_1641086 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641086 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1641086)
  decide +kernel
#print axioms cover_1641086

def state_1641122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 49) else (if j.val < 3 then 58 else (if j.val < 4 then 51 else 40)))
def hex_1641122 : String := "4143404208084206440606400508434042440809440809424406064441084340070608410643064009064042080842440808440841084340080808"
theorem cover_1641122 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641122 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1641122)
  decide +kernel
#print axioms cover_1641122

def state_1641181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 49) else (if j.val < 3 then 58 else (if j.val < 4 then 51 else 41)))
def hex_1641181 : String := "41430940094206094309404209094206444143060843094008420644060609"
theorem cover_1641181 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641181 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 31) (hex := hex_1641181)
  decide +kernel
#print axioms cover_1641181

def state_1641212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 49) else (if j.val < 3 then 59 else (if j.val < 4 then 51 else 20)))
def hex_1641212 : String := "44414340054408090543400944424108430708074209074005440842410843400842080808410543090541094309400942444109090909"
theorem cover_1641212 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641212 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_1641212)
  decide +kernel
#print axioms cover_1641212

def state_1641268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 58 else (if j.val < 4 then 51 else 20)))
def hex_1641268 : String := "44410643064042064408060606"
theorem cover_1641268 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641268 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1641268)
  decide +kernel
#print axioms cover_1641268
end Mub6.Numerical.CircleFullD0.Forest
