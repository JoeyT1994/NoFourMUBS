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
def state_1521823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 45 else (if j.val < 4 then 17 else 42)))
def hex_1521823 : String := "4143400608064340424407410607440841060808404206440606420708"
theorem cover_1521823 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521823 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_1521823)
  decide +kernel
#print axioms cover_1521823

def state_1521852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 45 else (if j.val < 4 then 17 else 43)))
def hex_1521852 : String := "41434006090643404244410643400608064106430606444106434006080641064306064244410808094441080841094340420944050708094006420909"
theorem cover_1521852 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521852 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1521852)
  decide +kernel
#print axioms cover_1521852

def state_1521913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 21)))
def hex_1521913 : String := "4244090944410808410943404209080809"
theorem cover_1521913 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521913 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1521913)
  decide +kernel
#print axioms cover_1521913

def state_1521934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 42)))
def hex_1521934 : String := "410807"
theorem cover_1521934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521934 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1521934)
  decide +kernel
#print axioms cover_1521934

def state_1521941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 88 else (if j.val < 4 then 32 else 43)))
def hex_1521941 : String := "4407414383400742070807"
theorem cover_1521941 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521941 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1521941)
  decide +kernel
#print axioms cover_1521941

def state_1521953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 89 else (if j.val < 4 then 32 else 86)))
def hex_1521953 : String := "08"
theorem cover_1521953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521953 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1521953)
  decide +kernel
#print axioms cover_1521953

def state_1521954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 89 else (if j.val < 4 then 32 else 87)))
def hex_1521954 : String := "41434042834408410A08084042440741438340074207080744084143400A08400A0843400908400A0842080843404244060609064042074407414309070708"
theorem cover_1521954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521954 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1521954)
  decide +kernel
#print axioms cover_1521954

def state_1522017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 58) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 43)))
def hex_1522017 : String := "420808"
theorem cover_1522017 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522017 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1522017)
  decide +kernel
#print axioms cover_1522017

def state_1522022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 88 else (if j.val < 4 then 33 else 43)))
def hex_1522022 : String := "07"
theorem cover_1522022 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522022 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1522022)
  decide +kernel
#print axioms cover_1522022

def state_1522024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 89 else (if j.val < 4 then 33 else 86)))
def hex_1522024 : String := "07"
theorem cover_1522024 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522024 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1522024)
  decide +kernel
#print axioms cover_1522024

def state_1522027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 116) else (if j.val < 3 then 89 else (if j.val < 4 then 66 else 87)))
def hex_1522027 : String := "404207440741434042070A424407410807440841080840064207440741060707424407414308400707074408410808"
theorem cover_1522027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522027 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_1522027)
  decide +kernel
#print axioms cover_1522027
end Mub6.Numerical.CircleFullD0.Forest
