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
def state_1007718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 55) else (if j.val < 3 then 40 else (if j.val < 4 then 58 else 43)))
def hex_1007718 : String := "444341420809420740054405430507410842074044060944070843410842084044094309084443050808410842084044080808"
theorem cover_1007718 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007718 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_1007718)
  decide +kernel
#print axioms cover_1007718

def state_1007769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 41 else (if j.val < 4 then 58 else 43)))
def hex_1007769 : String := "4044430909434107054107420905444341090509434109054109420905"
theorem cover_1007769 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007769 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 29) (hex := hex_1007769)
  decide +kernel
#print axioms cover_1007769

def state_1007798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 59 else 43)))
def hex_1007798 : String := "4142080942404406410806444108420643400607060840444109430909410943420907420909444109430909410943420909420809"
theorem cover_1007798 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007798 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_1007798)
  decide +kernel
#print axioms cover_1007798

def state_1007852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 42)))
def hex_1007852 : String := "43410A42070A4142080942074044090907"
theorem cover_1007852 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007852 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1007852)
  decide +kernel
#print axioms cover_1007852

def state_1007869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 43)))
def hex_1007869 : String := "4341420809424044434108070808084044430A410942090543410605410942400808090A41084208404441094342090942080941084342080908440808"
theorem cover_1007869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007869 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1007869)
  decide +kernel
#print axioms cover_1007869

def state_1007930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 21 else (if j.val < 4 then 14 else 10)))
def hex_1007930 : String := "44430A09434042440543054106050A0A4042440943410740090909440907424409430A41094009090A"
theorem cover_1007930 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007930 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1007930)
  decide +kernel
#print axioms cover_1007930
end Mub6.Numerical.CircleFullD0.Forest
