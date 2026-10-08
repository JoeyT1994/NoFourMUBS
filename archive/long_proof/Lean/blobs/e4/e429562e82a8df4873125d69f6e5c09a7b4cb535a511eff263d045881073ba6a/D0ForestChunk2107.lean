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
def state_2586193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 22 else 18)))
def hex_2586193 : String := "4140420808420709400809"
theorem cover_2586193 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586193 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2586193)
  decide +kernel
#print axioms cover_2586193

def state_2586205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 25 else (if j.val < 4 then 22 else 19)))
def hex_2586205 : String := "4042430844080543080542434409094441420606424308060841424340084406094005064340050905424308400844064109084308054309440905"
theorem cover_2586205 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586205 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 59) (hex := hex_2586205)
  decide +kernel
#print axioms cover_2586205

def state_2586264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 25 else (if j.val < 4 then 22 else 19)))
def hex_2586264 : String := "4042080842430944094142430808080809"
theorem cover_2586264 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586264 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_2586264)
  decide +kernel
#print axioms cover_2586264

def state_2586281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 9)))
def hex_2586281 : String := "444106434005420605054143400542440641054342400506050505054340054244414342060505430842060541434240054406410505050543420805050505"
theorem cover_2586281 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586281 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 63) (hex := hex_2586281)
  decide +kernel
#print axioms cover_2586281

def state_2586345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 8)))
def hex_2586345 : String := "404207074243074107074307410707"
theorem cover_2586345 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586345 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_2586345)
  decide +kernel
#print axioms cover_2586345

def state_2586361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 9)))
def hex_2586361 : String := "4243414408060641444008420808400842430644050508440840064206084308410505"
theorem cover_2586361 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586361 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_2586361)
  decide +kernel
#print axioms cover_2586361

def state_2586398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 9)))
def hex_2586398 : String := "414442400707400707424006430644414243054006050909064008430944094109084442400607074206400609"
theorem cover_2586398 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586398 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 45) (hex := hex_2586398)
  decide +kernel
#print axioms cover_2586398
end Mub6.Numerical.CircleFullD0.Forest
