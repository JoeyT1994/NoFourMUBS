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
def state_293500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_293500 : String := "42434406424406400841060806440842430806430608434408064408430808"
theorem cover_293500 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293500 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_293500)
  decide +kernel
#print axioms cover_293500

def state_293534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
def hex_293534 : String := "4344404142070642054405430705414205440543060505400741070544404106050540410742050707"
theorem cover_293534 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293534 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_293534)
  decide +kernel
#print axioms cover_293534

def state_293575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
def hex_293575 : String := "43444006064041060909444006414305050540410606410709"
theorem cover_293575 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293575 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 25) (hex := hex_293575)
  decide +kernel
#print axioms cover_293575

def state_293600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_293600 : String := "4243444042070842440807440841050707444005420705054344404405410505440505094405404341420506050505"
theorem cover_293600 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293600 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_293600)
  decide +kernel
#print axioms cover_293600

def state_293648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_293648 : String := "42434441420A0642440A0A4406400506414205400505420505444105424305050505434406094405414340420509050505"
theorem cover_293648 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293648 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 49) (hex := hex_293648)
  decide +kernel
#print axioms cover_293648

def state_293703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 12)))
def hex_293703 : String := "4143420A4408050543420744080708"
theorem cover_293703 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293703 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_293703)
  decide +kernel
#print axioms cover_293703
end Mub6.Numerical.CircleFullPrototype.Forest
