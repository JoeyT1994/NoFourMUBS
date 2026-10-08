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
def state_2325898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 62 else 89)))
def hex_2325898 : String := "43404442414307400807060707444206060740444241080841080808444241430740444208070707430640440606064107430640440606064241070607"
theorem cover_2325898 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325898 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_2325898)
  decide +kernel
#print axioms cover_2325898

def state_2325960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 63 else 44)))
def hex_2325960 : String := "444241434006444207064208060607414340064442060642060606434044420708084442074143094006440606094208084008440708420808"
theorem cover_2325960 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325960 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_2325960)
  decide +kernel
#print axioms cover_2325960

def state_2326021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 126 else 88)))
def hex_2326021 : String := "404442410A07414340064406060643400744074207410A070742410A0A414340064406060643400844420A410A0A088344420A410A0A420A410A0A"
theorem cover_2326021 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326021 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_2326021)
  decide +kernel
#print axioms cover_2326021

def state_2326080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 127 else 88)))
def hex_2326080 : String := "4044420606420606440A0A"
theorem cover_2326080 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326080 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_2326080)
  decide +kernel
#print axioms cover_2326080

def state_2326091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 115) else (if j.val < 3 then 86 else (if j.val < 4 then 63 else 88)))
def hex_2326091 : String := "43404407420741434008440A088307444207410A070A40070A"
theorem cover_2326091 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326091 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_2326091)
  decide +kernel
#print axioms cover_2326091

def state_2326122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 228) else (if j.val < 3 then 174 else (if j.val < 4 then 126 else 176)))
def hex_2326122 : String := "43400644050606"
theorem cover_2326122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326122 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2326122)
  decide +kernel
#print axioms cover_2326122
end Mub6.Numerical.CircleFullD0.Forest
