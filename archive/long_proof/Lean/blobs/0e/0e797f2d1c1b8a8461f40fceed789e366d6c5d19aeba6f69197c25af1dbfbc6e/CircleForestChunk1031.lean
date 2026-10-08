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
def state_1547787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 101 else (if j.val < 4 then 40 else 87)))
def hex_1547787 : String := "4341404244050544430A05430A054244430505434140050905054443410A054140050805430A414006090505414005420544050505"
theorem cover_1547787 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547787 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_1547787)
  decide +kernel
#print axioms cover_1547787

def state_1547840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 61) else (if j.val < 3 then 50 else (if j.val < 4 then 40 else 43)))
def hex_1547840 : String := "05"
theorem cover_1547840 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547840 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1547840)
  decide +kernel
#print axioms cover_1547840

def state_1547841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 50 else (if j.val < 4 then 41 else 43)))
def hex_1547841 : String := "05"
theorem cover_1547841 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547841 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1547841)
  decide +kernel
#print axioms cover_1547841

def state_1547843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 42)))
def hex_1547843 : String := "43414042074407094244074341400708050544430607430941400742074406430607050707"
theorem cover_1547843 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547843 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 37) (hex := hex_1547843)
  decide +kernel
#print axioms cover_1547843

def state_1547883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 60) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 43)))
def hex_1547883 : String := "4244434140090A0505430A41060544430941400742070905430941400642440A060A0A"
theorem cover_1547883 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547883 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1547883)
  decide +kernel
#print axioms cover_1547883

def state_1547920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 102 else (if j.val < 4 then 40 else 86)))
def hex_1547920 : String := "43414042440A0A0A42440843080844084308410A08404205090841404205440543050542440505440743414042050A08050505"
theorem cover_1547920 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547920 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1547920)
  decide +kernel
#print axioms cover_1547920

def state_1547972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 102 else (if j.val < 4 then 80 else 87)))
def hex_1547972 : String := "414042440A0A0A4244430A41400A42080805430A41400A420A0A0A440A0A400A4244050A0A"
theorem cover_1547972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547972 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_1547972)
  decide +kernel
#print axioms cover_1547972

def state_1548011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 198 else 120) else (if j.val < 3 then 102 else (if j.val < 4 then 81 else 87)))
def hex_1548011 : String := "424405064443410A0505430A06"
theorem cover_1548011 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548011 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1548011)
  decide +kernel
#print axioms cover_1548011
end Mub6.Numerical.CircleFullD0.Forest
