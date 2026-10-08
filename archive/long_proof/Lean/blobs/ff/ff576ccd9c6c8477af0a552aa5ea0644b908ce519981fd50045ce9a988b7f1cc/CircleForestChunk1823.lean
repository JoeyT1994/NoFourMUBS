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
def state_2310706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 39 else (if j.val < 4 then 28 else 45)))
def hex_2310706 : String := "43444041064208064107424344050744400605080740084107420807440608"
theorem cover_2310706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310706 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_2310706)
  decide +kernel
#print axioms cover_2310706

def state_2310738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 44)))
def hex_2310738 : String := "4105424305404405410542434044050505400605430506054305404405410543050605"
theorem cover_2310738 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310738 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_2310738)
  decide +kernel
#print axioms cover_2310738

def state_2310774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 45)))
def hex_2310774 : String := "424305404405060507"
theorem cover_2310774 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310774 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2310774)
  decide +kernel
#print axioms cover_2310774

def state_2310785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 38 else (if j.val < 4 then 56 else 45)))
def hex_2310785 : String := "40444105424305404405410808440505430540440541050805410742434440410708050744400841070808430707440541054243070707"
theorem cover_2310785 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310785 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_2310785)
  decide +kernel
#print axioms cover_2310785

def state_2310841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 53) else (if j.val < 3 then 38 else (if j.val < 4 then 57 else 45)))
def hex_2310841 : String := "444142434006050606424340444106080844054108080843400844050806414243080608420808"
theorem cover_2310841 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310841 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_2310841)
  decide +kernel
#print axioms cover_2310841

def state_2310880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 38 else (if j.val < 4 then 57 else 45)))
def hex_2310880 : String := "44410542430A0A4305404405080541424307070742430A08430708"
theorem cover_2310880 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310880 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_2310880)
  decide +kernel
#print axioms cover_2310880

def state_2310907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 39 else (if j.val < 4 then 28 else 45)))
def hex_2310907 : String := "4340440507074044410643424006050706410743070744410543050707"
theorem cover_2310907 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310907 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_2310907)
  decide +kernel
#print axioms cover_2310907

def state_2310937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 22)))
def hex_2310937 : String := "440606"
theorem cover_2310937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310937 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2310937)
  decide +kernel
#print axioms cover_2310937
end Mub6.Numerical.CircleFullD0.Forest
