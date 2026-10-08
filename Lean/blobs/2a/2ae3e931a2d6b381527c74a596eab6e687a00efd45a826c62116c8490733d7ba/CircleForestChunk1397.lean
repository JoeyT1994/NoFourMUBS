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
def state_1635957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 49 else 19)))
def hex_1635957 : String := "424440430741440707440707434106054144420640070606444240430541060505074205074009430541060544400707400707"
theorem cover_1635957 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635957 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_1635957)
  decide +kernel
#print axioms cover_1635957

def state_1636008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 28 else (if j.val < 4 then 49 else 19)))
def hex_1636008 : String := "42444043074144070744420507050540090544400707400705"
theorem cover_1636008 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636008 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1636008)
  decide +kernel
#print axioms cover_1636008

def state_1636033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 29 else (if j.val < 4 then 24 else 9)))
def hex_1636033 : String := "4443074107074307410707"
theorem cover_1636033 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636033 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1636033)
  decide +kernel
#print axioms cover_1636033

def state_1636046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 28 else (if j.val < 4 then 24 else 18)))
def hex_1636046 : String := "434140420507050541404244430A4109094305410605444307410A40070743074140070A40070542050A4042444305050544430541400705050505"
theorem cover_1636046 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636046 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_1636046)
  decide +kernel
#print axioms cover_1636046

def state_1636105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 28 else (if j.val < 4 then 24 else 19)))
def hex_1636105 : String := "4305414042064443054140070505050505"
theorem cover_1636105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636105 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1636105)
  decide +kernel
#print axioms cover_1636105

def state_1636122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 29 else (if j.val < 4 then 24 else 9)))
def hex_1636122 : String := "4443410705414007420A07400705430541404407070505"
theorem cover_1636122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636122 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 23) (hex := hex_1636122)
  decide +kernel
#print axioms cover_1636122

def state_1636151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 56 else (if j.val < 4 then 50 else 18)))
def hex_1636151 : String := "4440084108434208080840410843424408084408080841434208080843424408400843410605084408400843410842050708420808"
theorem cover_1636151 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636151 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_1636151)
  decide +kernel
#print axioms cover_1636151
end Mub6.Numerical.CircleFullD0.Forest
