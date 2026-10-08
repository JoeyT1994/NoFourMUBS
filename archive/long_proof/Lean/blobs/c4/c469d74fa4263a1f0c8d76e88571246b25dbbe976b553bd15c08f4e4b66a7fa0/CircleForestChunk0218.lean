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
def state_73715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 48) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 20)))
def hex_73715 : String := "4340420A44060A0A0A"
theorem cover_73715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73715 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_73715)
  decide +kernel
#print axioms cover_73715

def state_73727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 49) else (if j.val < 3 then 40 else (if j.val < 4 then 48 else 20)))
def hex_73727 : String := "44434140090709090A"
theorem cover_73727 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73727 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_73727)
  decide +kernel
#print axioms cover_73727

def state_73737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 49) else (if j.val < 3 then 41 else (if j.val < 4 then 48 else 40)))
def hex_73737 : String := "434107404407424307070606410640440742090606"
theorem cover_73737 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73737 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_73737)
  decide +kernel
#print axioms cover_73737

def state_73759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 49) else (if j.val < 3 then 41 else (if j.val < 4 then 96 else 41)))
def hex_73759 : String := "4140420A44060A0A404244434140420A0707B8410AB843410AB80A44434106B84106B843414042050506B8410AB842440A0A06"
theorem cover_73759 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73759 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_73759)
  decide +kernel
#print axioms cover_73759

def state_73810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 49) else (if j.val < 3 then 41 else (if j.val < 4 then 97 else 41)))
def hex_73810 : String := "410A40420A44434105400506050A0A"
theorem cover_73810 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73810 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_73810)
  decide +kernel
#print axioms cover_73810

def state_73825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 49) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 20)))
def hex_73825 : String := "420A4406430606"
theorem cover_73825 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73825 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_73825)
  decide +kernel
#print axioms cover_73825

def state_73832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 49) else (if j.val < 3 then 20 else (if j.val < 4 then 49 else 20)))
def hex_73832 : String := "40420A444109090A0A"
theorem cover_73832 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73832 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_73832)
  decide +kernel
#print axioms cover_73832

def state_73841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 24) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 21)))
def hex_73841 : String := "410A434044420A43410A4044420A43410A4009080A0A080A0A0A0A"
theorem cover_73841 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73841 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 27) (hex := hex_73841)
  decide +kernel
#print axioms cover_73841

def state_73869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 24) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 20)))
def hex_73869 : String := "410643404244064341064042440643060606060606064042440641064306060606"
theorem cover_73869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73869 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 33) (hex := hex_73869)
  decide +kernel
#print axioms cover_73869

def state_73903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 48) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 21)))
def hex_73903 : String := "4340424441054306050806064042050506"
theorem cover_73903 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73903 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_73903)
  decide +kernel
#print axioms cover_73903
end Mub6.Numerical.CircleFullPrototype.Forest
