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
def state_1637724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 50 else 19)))
def hex_1637724 : String := "42064441060505"
theorem cover_1637724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637724 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1637724)
  decide +kernel
#print axioms cover_1637724

def state_1637733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 56 else (if j.val < 4 then 51 else 19)))
def hex_1637733 : String := "44410809414340420608060843404206444108430508410605064042070807"
theorem cover_1637733 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637733 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_1637733)
  decide +kernel
#print axioms cover_1637733

def state_1637765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 57 else (if j.val < 4 then 51 else 38)))
def hex_1637765 : String := "410843404208080908"
theorem cover_1637765 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637765 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1637765)
  decide +kernel
#print axioms cover_1637765

def state_1637775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 100) else (if j.val < 3 then 57 else (if j.val < 4 then 51 else 39)))
def hex_1637775 : String := "43404208440808420644084106430608400808"
theorem cover_1637775 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637775 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1637775)
  decide +kernel
#print axioms cover_1637775

def state_1637795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 101) else (if j.val < 3 then 57 else (if j.val < 4 then 102 else 39)))
def hex_1637795 : String := "4042444108434008050841434008050843054008054441084340080808414340084205080843054008420508424409054441080941430540080505"
theorem cover_1637795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637795 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_1637795)
  decide +kernel
#print axioms cover_1637795

def state_1637854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 101) else (if j.val < 3 then 57 else (if j.val < 4 then 103 else 39)))
def hex_1637854 : String := "404208440808420909"
theorem cover_1637854 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637854 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1637854)
  decide +kernel
#print axioms cover_1637854

def state_1637863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 51 else 19)))
def hex_1637863 : String := "42440906440941430609430509"
theorem cover_1637863 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637863 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1637863)
  decide +kernel
#print axioms cover_1637863

def state_1637877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 28 else (if j.val < 4 then 50 else 19)))
def hex_1637877 : String := "4042444305414044090505050544430541404244090544430509430541050505050505"
theorem cover_1637877 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637877 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_1637877)
  decide +kernel
#print axioms cover_1637877

def state_1637914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 56 else (if j.val < 4 then 51 else 19)))
def hex_1637914 : String := "4409414305404207090905"
theorem cover_1637914 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637914 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1637914)
  decide +kernel
#print axioms cover_1637914

def state_1637925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 57 else (if j.val < 4 then 51 else 19)))
def hex_1637925 : String := "444143404209090909094143404244414305090505444143054008080505054042440941430A08094409410A0A09430540420944060505"
theorem cover_1637925 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637925 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1637925)
  decide +kernel
#print axioms cover_1637925
end Mub6.Numerical.CircleFullD0.Forest
