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
def state_943723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 41) else (if j.val < 3 then 100 else (if j.val < 4 then 33 else 104)))
def hex_943723 : String := "41434240080740080742070843424008050808"
theorem cover_943723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943723 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 19) (hex := hex_943723)
  decide +kernel
#print axioms cover_943723

def state_943742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 41) else (if j.val < 3 then 100 else (if j.val < 4 then 33 else 105)))
def hex_943742 : String := "41434240090740444106080644074106074209400907434240444107080944070740444108054106430542090644410705410705424009074044080907"
theorem cover_943742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943742 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_943742)
  decide +kernel
#print axioms cover_943742

def state_943804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 41) else (if j.val < 3 then 101 else (if j.val < 4 then 33 else 104)))
def hex_943804 : String := "41434008080808"
theorem cover_943804 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943804 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_943804)
  decide +kernel
#print axioms cover_943804

def state_943812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 82) else (if j.val < 3 then 101 else (if j.val < 4 then 33 else 105)))
def hex_943812 : String := "43400642444107430607064441060606404244080644080642440741070744084106430607"
theorem cover_943812 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943812 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 37) (hex := hex_943812)
  decide +kernel
#print axioms cover_943812

def state_943849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 83) else (if j.val < 3 then 101 else (if j.val < 4 then 33 else 105)))
def hex_943849 : String := "43404244080606424405414305400607054405410605404244084108080842440741070744084143060708"
theorem cover_943849 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943849 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_943849)
  decide +kernel
#print axioms cover_943849

def state_943892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 41) else (if j.val < 3 then 50 else (if j.val < 4 then 33 else 52)))
def hex_943892 : String := "4244410707410707444143404207080707430507414340424407070A0740420707074340424405410705050540420744070707"
theorem cover_943892 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943892 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_943892)
  decide +kernel
#print axioms cover_943892

def state_943944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 40) else (if j.val < 3 then 50 else (if j.val < 4 then 16 else 53)))
def hex_943944 : String := "430A404209060A"
theorem cover_943944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943944 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_943944)
  decide +kernel
#print axioms cover_943944
end Mub6.Numerical.CircleFullD0.Forest
