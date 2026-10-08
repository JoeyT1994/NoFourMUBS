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
def state_1466631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 5)))
def hex_1466631 : String := "41440606440708"
theorem cover_1466631 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466631 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_1466631)
  decide +kernel
#print axioms cover_1466631

def state_1466639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 5)))
def hex_1466639 : String := "444243400641050A06430606420809"
theorem cover_1466639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466639 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1466639)
  decide +kernel
#print axioms cover_1466639

def state_1466654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 5)))
def hex_1466654 : String := "44420743400741440742070607074243400744070807434044410607084441420906420743404406080A0A4108084008440A08"
theorem cover_1466654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466654 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_1466654)
  decide +kernel
#print axioms cover_1466654

def state_1466705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 2)))
def hex_1466705 : String := "44074007410907"
theorem cover_1466705 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466705 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1466705)
  decide +kernel
#print axioms cover_1466705

def state_1466715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 4)))
def hex_1466715 : String := "4142060642074344070607"
theorem cover_1466715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466715 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1466715)
  decide +kernel
#print axioms cover_1466715

def state_1466727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 4)))
def hex_1466727 : String := "424344400609060943444006410642430606430A0640064105420605444006410642060606"
theorem cover_1466727 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466727 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1466727)
  decide +kernel
#print axioms cover_1466727

def state_1466765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 4)))
def hex_1466765 : String := "43440740074142074407060707"
theorem cover_1466765 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466765 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1466765)
  decide +kernel
#print axioms cover_1466765

def state_1466780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 8)))
def hex_1466780 : String := "40074207414308440740060807"
theorem cover_1466780 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466780 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1466780)
  decide +kernel
#print axioms cover_1466780

def state_1466794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 9)))
def hex_1466794 : String := "424106074106440706"
theorem cover_1466794 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466794 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1466794)
  decide +kernel
#print axioms cover_1466794

def state_1466803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 9)))
def hex_1466803 : String := "4241444340060806064407434042064406060840064207440606414443050643050644430840070843400A4208054006424408064408410508"
theorem cover_1466803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466803 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1466803)
  decide +kernel
#print axioms cover_1466803

def state_1466860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 4)))
def hex_1466860 : String := "4407404206064241060741064344070607"
theorem cover_1466860 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466860 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1466860)
  decide +kernel
#print axioms cover_1466860

def state_1466878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 5)))
def hex_1466878 : String := "41064244060606"
theorem cover_1466878 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466878 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1466878)
  decide +kernel
#print axioms cover_1466878
end Mub6.Numerical.CircleFullD0.Forest
