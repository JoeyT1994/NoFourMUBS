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
def state_1638945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 19)))
def hex_1638945 : String := "4340054442080842410A430740050A4109430740050705"
theorem cover_1638945 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638945 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1638945)
  decide +kernel
#print axioms cover_1638945

def state_1638969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 50 else 19)))
def hex_1638969 : String := "4044070744424143070843074007084107074241430740070A4307400744070707"
theorem cover_1638969 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638969 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1638969)
  decide +kernel
#print axioms cover_1638969

def state_1639003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 51 else 19)))
def hex_1639003 : String := "4405424105434005080505"
theorem cover_1639003 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639003 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1639003)
  decide +kernel
#print axioms cover_1639003

def state_1639014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 51 else 19)))
def hex_1639014 : String := "4408424143400544080A054340440842410843070807440842410A430A0A41430708430740070740050841434005440542080505434007440707400508"
theorem cover_1639014 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639014 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1639014)
  decide +kernel
#print axioms cover_1639014

def state_1639075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 19)))
def hex_1639075 : String := "41434005440707054340070740054408424105430706410506"
theorem cover_1639075 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639075 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1639075)
  decide +kernel
#print axioms cover_1639075

def state_1639101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 24 else 9)))
def hex_1639101 : String := "4007440742430541070707"
theorem cover_1639101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639101 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1639101)
  decide +kernel
#print axioms cover_1639101

def state_1639113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 9)))
def hex_1639113 : String := "440642414307060606"
theorem cover_1639113 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639113 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1639113)
  decide +kernel
#print axioms cover_1639113

def state_1639123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 18)))
def hex_1639123 : String := "4241434007440742414307080707400608434006440607064143070606"
theorem cover_1639123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639123 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1639123)
  decide +kernel
#print axioms cover_1639123

def state_1639155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 50 else 19)))
def hex_1639155 : String := "404407074442414307400707070742414307400707430540070507"
theorem cover_1639155 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639155 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_1639155)
  decide +kernel
#print axioms cover_1639155

def state_1639183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 51 else 19)))
def hex_1639183 : String := "4406424143400607060606"
theorem cover_1639183 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639183 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1639183)
  decide +kernel
#print axioms cover_1639183
end Mub6.Numerical.CircleFullD0.Forest
