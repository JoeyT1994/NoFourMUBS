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
def state_1046824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 51)))
def hex_1046824 : String := "4342084108404443424108074140444309080844090840440981070808444309070808"
theorem cover_1046824 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046824 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 35) (hex := hex_1046824)
  decide +kernel
#print axioms cover_1046824

def state_1046859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 25)))
def hex_1046859 : String := "4443090708"
theorem cover_1046859 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046859 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1046859)
  decide +kernel
#print axioms cover_1046859

def state_1046865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 30) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 25)))
def hex_1046865 : String := "40444306424106404443060606060643424106060642080606"
theorem cover_1046865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046865 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1046865)
  decide +kernel
#print axioms cover_1046865

def state_1046892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 50)))
def hex_1046892 : String := "43424140444309094342410609064241060906064044094309090941064044050606424140440943420806084409064044094309090941064044050506"
theorem cover_1046892 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046892 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1046892)
  decide +kernel
#print axioms cover_1046892

def state_1046956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 62) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 51)))
def hex_1046956 : String := "404443424106404406060606420806434208060806"
theorem cover_1046956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046956 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_1046956)
  decide +kernel
#print axioms cover_1046956

def state_1046979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 63) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 102)))
def hex_1046979 : String := "4342414044430909434241068106420806440606404409810941064044098106424140440A0808400A0941064044050506"
theorem cover_1046979 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046979 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_1046979)
  decide +kernel
#print axioms cover_1046979

def state_1047028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 63) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 103)))
def hex_1047028 : String := "434241404443420806080808814106814208410640440A0A06"
theorem cover_1047028 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047028 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1047028)
  decide +kernel
#print axioms cover_1047028

def state_1047053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 63) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 51)))
def hex_1047053 : String := "444309094342080608"
theorem cover_1047053 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047053 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1047053)
  decide +kernel
#print axioms cover_1047053

def state_1047062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 39 else (if j.val < 4 then 52 else 51)))
def hex_1047062 : String := "41064044060606"
theorem cover_1047062 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047062 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1047062)
  decide +kernel
#print axioms cover_1047062
end Mub6.Numerical.CircleFullD0.Forest
