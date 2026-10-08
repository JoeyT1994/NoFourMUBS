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
def state_2261755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 27)))
def hex_2261755 : String := "43414209404407430906074206404443420641074006064206410606064443420607060641420640440706074205400606"
theorem cover_2261755 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261755 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_2261755)
  decide +kernel
#print axioms cover_2261755

def state_2261805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 13)))
def hex_2261805 : String := "4440060605"
theorem cover_2261805 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261805 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2261805)
  decide +kernel
#print axioms cover_2261805

def state_2261811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 26)))
def hex_2261811 : String := "40434244080508420508434244400A0606440840414342060808064143420608060642064408400606"
theorem cover_2261811 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261811 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_2261811)
  decide +kernel
#print axioms cover_2261811

def state_2261852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 27)))
def hex_2261852 : String := "404342054005414443420540050605050505434206404144060505414406060605"
theorem cover_2261852 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261852 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_2261852)
  decide +kernel
#print axioms cover_2261852

def state_2261887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 12)))
def hex_2261887 : String := "05"
theorem cover_2261887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261887 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2261887)
  decide +kernel
#print axioms cover_2261887

def state_2261889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 13)))
def hex_2261889 : String := "4241430544054042070542410507054307440807410505"
theorem cover_2261889 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261889 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_2261889)
  decide +kernel
#print axioms cover_2261889

def state_2261912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 13)))
def hex_2261912 : String := "424143054405400505434405400705444005054042430740070A43054041050741050842430A404144050A0A0A43054005054105430505"
theorem cover_2261912 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261912 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_2261912)
  decide +kernel
#print axioms cover_2261912

def state_2261968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 12)))
def hex_2261968 : String := "4008424344054105084408414008070808"
theorem cover_2261968 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261968 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_2261968)
  decide +kernel
#print axioms cover_2261968

def state_2261990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 26)))
def hex_2261990 : String := "404243080806424341050841440640064305080808"
theorem cover_2261990 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261990 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_2261990)
  decide +kernel
#print axioms cover_2261990
end Mub6.Numerical.CircleFullD0.Forest
