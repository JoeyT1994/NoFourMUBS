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
def state_18897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 29) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 20)))
def hex_18897 : String := "40424105074143440705054344070A0742054105430A05"
theorem cover_18897 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18897 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 23) (hex := hex_18897)
  decide +kernel
#print axioms cover_18897

def state_18923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 58) else (if j.val < 3 then 58 else (if j.val < 4 then 20 else 20)))
def hex_18923 : String := "4344404142430805084207430807410942074308094008054440070505"
theorem cover_18923 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18923 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_18923)
  decide +kernel
#print axioms cover_18923

def state_18952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 58) else (if j.val < 3 then 59 else (if j.val < 4 then 20 else 20)))
def hex_18952 : String := "43444008410843080908444041440906440742064308064109440942050940064105420506"
theorem cover_18952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18952 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_18952)
  decide +kernel
#print axioms cover_18952

def state_18990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 59) else (if j.val < 3 then 58 else (if j.val < 4 then 20 else 20)))
def hex_18990 : String := "434440074207430A074042430A0643084106440706420A430A41050A440740064205410506"
theorem cover_18990 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18990 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_18990)
  decide +kernel
#print axioms cover_18990

def state_19030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 112 else 59) else (if j.val < 3 then 59 else (if j.val < 4 then 40 else 40)))
def hex_19030 : String := "43444108420705084407414240410807410807084207404305440541080543084407410807"
theorem cover_19030 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19030 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_19030)
  decide +kernel
#print axioms cover_19030

def state_19067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 113 else 59) else (if j.val < 3 then 59 else (if j.val < 4 then 40 else 40)))
def hex_19067 : String := "434441080641080A44410907414240410807090842074043084407410807430A440741080A"
theorem cover_19067 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19067 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_19067)
  decide +kernel
#print axioms cover_19067

def state_19104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 59) else (if j.val < 3 then 59 else (if j.val < 4 then 40 else 41)))
def hex_19104 : String := "4043084108424440420608424308064308410606060843084108424440420A430841080A0A084440080808"
theorem cover_19104 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19104 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_19104)
  decide +kernel
#print axioms cover_19104
end Mub6.Numerical.CircleFullPrototype.Forest
