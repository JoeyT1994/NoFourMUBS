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
def state_1612600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 31 else 24)))
def hex_1612600 : String := "444005410542090540414243440506050542434440054105054006414209050906054142430A440A0A0A42090A"
theorem cover_1612600 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612600 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_1612600)
  decide +kernel
#print axioms cover_1612600

def state_1612653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 50)))
def hex_1612653 : String := "4440424108430844409F08080808404241084308080808"
theorem cover_1612653 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612653 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1612653)
  decide +kernel
#print axioms cover_1612653

def state_1612680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 80) else (if j.val < 3 then 104 else (if j.val < 4 then 61 else 100)))
def hex_1612680 : String := "43084440060806"
theorem cover_1612680 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612680 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1612680)
  decide +kernel
#print axioms cover_1612680

def state_1612689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 81) else (if j.val < 3 then 104 else (if j.val < 4 then 122 else 200)))
def hex_1612689 : String := "40424143084440060806434440424107074106430706420707404241060A06084440064207410606400642410609064106430806424108430744070808"
theorem cover_1612689 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612689 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1612689)
  decide +kernel
#print axioms cover_1612689

def state_1612750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 81) else (if j.val < 3 then 104 else (if j.val < 4 then 122 else 201)))
def hex_1612750 : String := "40424108434440060808060608"
theorem cover_1612750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612750 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1612750)
  decide +kernel
#print axioms cover_1612750

def state_1612763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 81) else (if j.val < 3 then 104 else (if j.val < 4 then 123 else 100)))
def hex_1612763 : String := "4440424106060642414308064344404207060740420906074440060706084006424106434408050606"
theorem cover_1612763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612763 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1612763)
  decide +kernel
#print axioms cover_1612763

def state_1612804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 40) else (if j.val < 3 then 105 else (if j.val < 4 then 61 else 100)))
def hex_1612804 : String := "4106430806"
theorem cover_1612804 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612804 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1612804)
  decide +kernel
#print axioms cover_1612804

def state_1612809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 100)))
def hex_1612809 : String := "424108430844404241070708070808"
theorem cover_1612809 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612809 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1612809)
  decide +kernel
#print axioms cover_1612809

def state_1612824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 101)))
def hex_1612824 : String := "40424108434440060808060608"
theorem cover_1612824 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612824 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1612824)
  decide +kernel
#print axioms cover_1612824
end Mub6.Numerical.CircleFullD0.Forest
