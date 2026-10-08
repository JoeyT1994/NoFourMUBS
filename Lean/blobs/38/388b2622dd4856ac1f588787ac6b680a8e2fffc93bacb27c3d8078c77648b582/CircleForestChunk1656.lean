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
def state_2270679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 91 else (if j.val < 4 then 88 else 58)))
def hex_2270679 : String := "4044410542070541050744054105420805"
theorem cover_2270679 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270679 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_2270679)
  decide +kernel
#print axioms cover_2270679

def state_2270696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 91 else (if j.val < 4 then 89 else 58)))
def hex_2270696 : String := "4044414243050805424340074441050606060941084206094441054243444005054006060643054405064108420643404405060506"
theorem cover_2270696 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270696 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_2270696)
  decide +kernel
#print axioms cover_2270696

def state_2270749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 55) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 58)))
def hex_2270749 : String := "4243074007440A06434007444142070A07074044414207090707444142430A06434409094406060A414206434006060606"
theorem cover_2270749 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270749 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_2270749)
  decide +kernel
#print axioms cover_2270749

def state_2270798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 59)))
def hex_2270798 : String := "4142084340080840444108060608420743074007410606"
theorem cover_2270798 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270798 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2270798)
  decide +kernel
#print axioms cover_2270798

def state_2270822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 29)))
def hex_2270822 : String := "444142434006060643400944414206090606064206430906410606"
theorem cover_2270822 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270822 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_2270822)
  decide +kernel
#print axioms cover_2270822

def state_2270849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 29)))
def hex_2270849 : String := "4441424340060606434044414206434006050606064441420643050606064006064206434044060644060606414206434006060606"
theorem cover_2270849 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270849 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_2270849)
  decide +kernel
#print axioms cover_2270849
end Mub6.Numerical.CircleFullD0.Forest
