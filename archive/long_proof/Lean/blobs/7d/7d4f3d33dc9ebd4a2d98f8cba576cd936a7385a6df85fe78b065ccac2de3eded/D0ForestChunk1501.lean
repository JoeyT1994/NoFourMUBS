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
def state_1660923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 28 else 23)))
def hex_1660923 : String := "42444041434244414006080A414006080A06060A414308420706430542070640414308060A4143080805444006410806400608"
theorem cover_1660923 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660923 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1660923)
  decide +kernel
#print axioms cover_1660923

def state_1660974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 29 else 23)))
def hex_1660974 : String := "42444006074006414342440740060706060A06"
theorem cover_1660974 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660974 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 19) (hex := hex_1660974)
  decide +kernel
#print axioms cover_1660974

def state_1660993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 11)))
def hex_1660993 : String := "4144074308420740410707074443420740410707070743424044410705050808420740440641060607"
theorem cover_1660993 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660993 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_1660993)
  decide +kernel
#print axioms cover_1660993

def state_1661034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 11)))
def hex_1661034 : String := "400607"
theorem cover_1661034 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661034 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1661034)
  decide +kernel
#print axioms cover_1661034

def state_1661038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 10)))
def hex_1661038 : String := "4243404107070707434041440606060906"
theorem cover_1661038 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661038 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1661038)
  decide +kernel
#print axioms cover_1661038

def state_1661055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 11)))
def hex_1661055 : String := "4243404441420743400A07070A0A440705400A07434044414342400644070A0606060A4441434207404406080707094143054207400607054006440707"
theorem cover_1661055 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661055 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1661055)
  decide +kernel
#print axioms cover_1661055

def state_1661121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 4)))
def hex_1661121 : String := "43414442434007050743404144430842070808084105054041070641070742074340410505054007054442074308074207430807410707"
theorem cover_1661121 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661121 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_1661121)
  decide +kernel
#print axioms cover_1661121
end Mub6.Numerical.CircleFullD0.Forest
