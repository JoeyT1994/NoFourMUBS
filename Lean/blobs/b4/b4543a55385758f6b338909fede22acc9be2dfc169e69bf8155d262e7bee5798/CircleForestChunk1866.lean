import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2320833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 29 else 22)))
def hex_2320833 : String := "4442414340050540444205054241050607440505430640440606064107430640440606064241070607"
theorem cover_2320833 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320833 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_2320833)
  decide +kernel
#print axioms cover_2320833

def state_2320874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 14 else 22)))
def hex_2320874 : String := "43064044094241430609060906"
theorem cover_2320874 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320874 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2320874)
  decide +kernel
#print axioms cover_2320874

def state_2320887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 23)))
def hex_2320887 : String := "424143404441430642060606060640444143420808420808430608084441430642060706414306070606414307404442410708070707430640444206080606"
theorem cover_2320887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320887 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_2320887)
  decide +kernel
#print axioms cover_2320887

def state_2320953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 20 else (if j.val < 4 then 15 else 22)))
def hex_2320953 : String := "41434044070544414207434008444142070607080707410805400544070507"
theorem cover_2320953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320953 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 31) (hex := hex_2320953)
  decide +kernel
#print axioms cover_2320953

def state_2320984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 22)))
def hex_2320984 : String := "414340440A084442414340084442090908064309080A420808400644420806084340084409084005440705"
theorem cover_2320984 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320984 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 43) (hex := hex_2320984)
  decide +kernel
#print axioms cover_2320984

def state_2321027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 23)))
def hex_2321027 : String := "420508"
theorem cover_2321027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321027 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2321027)
  decide +kernel
#print axioms cover_2321027

def state_2321038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 40 else (if j.val < 4 then 30 else 44)))
def hex_2321038 : String := "43400744070A07"
theorem cover_2321038 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321038 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2321038)
  decide +kernel
#print axioms cover_2321038

def state_2321047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 56) else (if j.val < 3 then 41 else (if j.val < 4 then 60 else 44)))
def hex_2321047 : String := "444142074340094409410808400644060642070941420808420808"
theorem cover_2321047 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321047 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_2321047)
  decide +kernel
#print axioms cover_2321047

def state_2321077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 112) else (if j.val < 3 then 82 else (if j.val < 4 then 60 else 88)))
def hex_2321077 : String := "434044074143420740080507070A40070A"
theorem cover_2321077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321077 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_2321077)
  decide +kernel
#print axioms cover_2321077
end Mub6.Numerical.CircleFullD0.Forest
