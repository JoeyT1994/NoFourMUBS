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
def state_2265597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 104) else (if j.val < 3 then 88 else (if j.val < 4 then 92 else 55)))
def hex_2265597 : String := "44404342BE074241074407060707404342064107440A0642060A4342060706"
theorem cover_2265597 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265597 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_2265597)
  decide +kernel
#print axioms cover_2265597

def state_2265628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 88 else (if j.val < 4 then 92 else 55)))
def hex_2265628 : String := "4440434241BE0641444009074043420609064342060706440806420641440706440605434241BE0641074044070607420607400606"
theorem cover_2265628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265628 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_2265628)
  decide +kernel
#print axioms cover_2265628

def state_2265681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 89 else (if j.val < 4 then 92 else 55)))
def hex_2265681 : String := "4144074043420A0707074440434241090808424107080707404342414409060909424106060943424107060707"
theorem cover_2265681 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265681 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_2265681)
  decide +kernel
#print axioms cover_2265681

def state_2265726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 93 else 55)))
def hex_2265726 : String := "42414407064440434205410705054342050705054107440740434206070507"
theorem cover_2265726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265726 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_2265726)
  decide +kernel
#print axioms cover_2265726

def state_2265757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 27)))
def hex_2265757 : String := "44074342410740440706070707"
theorem cover_2265757 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265757 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2265757)
  decide +kernel
#print axioms cover_2265757

def state_2265771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 27)))
def hex_2265771 : String := "44434241400844084308080808084342414440434205080543420641400606060606054144400808400943420609060842054144080605"
theorem cover_2265771 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265771 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_2265771)
  decide +kernel
#print axioms cover_2265771
end Mub6.Numerical.CircleFullD0.Forest
