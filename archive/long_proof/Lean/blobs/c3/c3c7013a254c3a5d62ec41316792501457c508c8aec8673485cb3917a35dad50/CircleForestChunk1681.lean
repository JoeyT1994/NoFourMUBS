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
def state_2276666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 6)))
def hex_2276666 : String := "440841424340440841420A43080808440841420A430A0A084044084143424140060606084206080844084143420A070708434008080808"
theorem cover_2276666 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276666 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_2276666)
  decide +kernel
#print axioms cover_2276666

def state_2276721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
def hex_2276721 : String := "42430A440A4140430A060A064344084140420A4305050A084407414042430A44070708420A0708"
theorem cover_2276721 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276721 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_2276721)
  decide +kernel
#print axioms cover_2276721

def state_2276762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 7)))
def hex_2276762 : String := "434144404207430741440A070742090A07074144434042064144430A06064406054206410909400506434006060544434006060505"
theorem cover_2276762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276762 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_2276762)
  decide +kernel
#print axioms cover_2276762

def state_2276819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 10 else 14)))
def hex_2276819 : String := "404341440A07074144420A430A0A4243070A4307414440070A40070A0A440A07430A41440A420A40430A0A0A0A"
theorem cover_2276819 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276819 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_2276819)
  decide +kernel
#print axioms cover_2276819

def state_2276866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 20 else 14)))
def hex_2276866 : String := "4144424144050607054207410606440707"
theorem cover_2276866 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276866 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_2276866)
  decide +kernel
#print axioms cover_2276866

def state_2276885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 28)))
def hex_2276885 : String := "42434144050A08414408400A0A08430508"
theorem cover_2276885 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276885 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_2276885)
  decide +kernel
#print axioms cover_2276885
end Mub6.Numerical.CircleFullD0.Forest
