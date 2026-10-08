import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_276761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 15 else 9)))
def hex_276761 : String := "4041084442064341400644060606064206434106060641084442084340410805050808"
theorem cover_276761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276761 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_276761)
  decide +kernel
#print axioms cover_276761

def state_276803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 16)))
def hex_276803 : String := "4041050A4143420707074342440840084143060708080A"
theorem cover_276803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276803 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_276803)
  decide +kernel
#print axioms cover_276803

def state_276827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 17)))
def hex_276827 : String := "410543424408050542440A0505"
theorem cover_276827 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276827 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_276827)
  decide +kernel
#print axioms cover_276827

def state_276841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 17)))
def hex_276841 : String := "4342444005410543050505054244070505"
theorem cover_276841 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276841 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_276841)
  decide +kernel
#print axioms cover_276841

def state_276859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 18 else (if j.val < 4 then 56 else 17)))
def hex_276859 : String := "424440414305050841430642440740050606084041050841430542444005060505430842444008410606404105084106060844084005410506"
theorem cover_276859 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276859 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_276859)
  decide +kernel
#print axioms cover_276859

def state_276918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 34)))
def hex_276918 : String := "400A4143420707074342440A400A410708080A"
theorem cover_276918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276918 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_276918)
  decide +kernel
#print axioms cover_276918

def state_276938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 45) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 35)))
def hex_276938 : String := "41054342440A05050A"
theorem cover_276938 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276938 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_276938)
  decide +kernel
#print axioms cover_276938

def state_276948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 90) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 35)))
def hex_276948 : String := "4342444005410543050705054244070505"
theorem cover_276948 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276948 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_276948)
  decide +kernel
#print axioms cover_276948

def state_276966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 91) else (if j.val < 3 then 36 else (if j.val < 4 then 114 else 35)))
def hex_276966 : String := "4244404143050A08414342D90642D9440606430842D908404105430809414309094342D90642D90944400841060609"
theorem cover_276966 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276966 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_276966)
  decide +kernel
#print axioms cover_276966
end Mub6.Numerical.CircleFullPrototype.Forest
