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
def state_1556716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 43)))
def hex_1556716 : String := "41404244430641404244068906060643068944064306414044090505060606"
theorem cover_1556716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556716 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_1556716)
  decide +kernel
#print axioms cover_1556716

def state_1556752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 104 else (if j.val < 4 then 82 else 86)))
def hex_1556752 : String := "414042444143404208440608064007074306058944414306404207440789424406080606894244068944068940424405890606"
theorem cover_1556752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556752 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1556752)
  decide +kernel
#print axioms cover_1556752

def state_1556803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 104 else (if j.val < 4 then 83 else 86)))
def hex_1556803 : String := "41404244078944078942440789444341404207060606078940054205440589"
theorem cover_1556803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556803 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_1556803)
  decide +kernel
#print axioms cover_1556803

def state_1556834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 87)))
def hex_1556834 : String := "89"
theorem cover_1556834 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556834 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1556834)
  decide +kernel
#print axioms cover_1556834

def state_1556837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 105 else (if j.val < 4 then 82 else 86)))
def hex_1556837 : String := "4140424441430640090606894406090606"
theorem cover_1556837 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556837 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_1556837)
  decide +kernel
#print axioms cover_1556837

def state_1556856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 120) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 86)))
def hex_1556856 : String := "4244434140074207440689070789444341400906060743414044090944428906428905400906414044420707420A430907440A0A400744074207430607"
theorem cover_1556856 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556856 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1556856)
  decide +kernel
#print axioms cover_1556856

def state_1556917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 120) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 86)))
def hex_1556917 : String := "42444306410A0689444306410A064341060641400A0A4044060A06"
theorem cover_1556917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556917 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_1556917)
  decide +kernel
#print axioms cover_1556917

def state_1556944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 121) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 86)))
def hex_1556944 : String := "404207440643060706"
theorem cover_1556944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556944 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1556944)
  decide +kernel
#print axioms cover_1556944
end Mub6.Numerical.CircleFullD0.Forest
