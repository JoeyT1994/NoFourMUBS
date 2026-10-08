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
def state_2285750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 58) else (if j.val < 3 then 95 else (if j.val < 4 then 44 else 62)))
def hex_2285750 : String := "43404144084207080841440842430A0A430808084041440842434005050508084144084243400A0A0643080808"
theorem cover_2285750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285750 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_2285750)
  decide +kernel
#print axioms cover_2285750

def state_2285796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 58) else (if j.val < 3 then 94 else (if j.val < 4 then 44 else 63)))
def hex_2285796 : String := "434005414442054307050705400505"
theorem cover_2285796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285796 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_2285796)
  decide +kernel
#print axioms cover_2285796

def state_2285812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 58) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 63)))
def hex_2285812 : String := "40074144424340070A40070A434007414408E50740414408E507414408E508E54442070807"
theorem cover_2285812 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285812 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_2285812)
  decide +kernel
#print axioms cover_2285812

def state_2285849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 58) else (if j.val < 3 then 95 else (if j.val < 4 then 89 else 63)))
def hex_2285849 : String := "4041444205430905050541444243400505054340414408E505414408E508400506420543E5054442050505"
theorem cover_2285849 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285849 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_2285849)
  decide +kernel
#print axioms cover_2285849

def state_2285892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 59) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 31)))
def hex_2285892 : String := "44420A084205430705"
theorem cover_2285892 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285892 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_2285892)
  decide +kernel
#print axioms cover_2285892

def state_2285901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 29) else (if j.val < 3 then 47 else (if j.val < 4 then 45 else 31)))
def hex_2285901 : String := "40414442054340054106050505054144420643404144060605414406060606420543400506054442050805"
theorem cover_2285901 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285901 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_2285901)
  decide +kernel
#print axioms cover_2285901

def state_2285945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 15)))
def hex_2285945 : String := "414442434106050543414009444206070640064406060642054341060605444205434109050505"
theorem cover_2285945 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285945 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_2285945)
  decide +kernel
#print axioms cover_2285945
end Mub6.Numerical.CircleFullD0.Forest
