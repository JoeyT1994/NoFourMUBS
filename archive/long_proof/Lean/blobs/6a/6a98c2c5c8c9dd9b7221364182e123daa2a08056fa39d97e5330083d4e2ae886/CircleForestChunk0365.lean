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
def state_163033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 58 else (if j.val < 4 then 55 else 55)))
def hex_163033 : String := "4041424344840606434405060642434405060643050641424344404108420743050607080743080842434407070743440508440706"
theorem cover_163033 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163033 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_163033)
  decide +kernel
#print axioms cover_163033

def state_163086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 59 else (if j.val < 4 then 27 else 27)))
def hex_163086 : String := "43054405404143050643050641084305440506"
theorem cover_163086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163086 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_163086)
  decide +kernel
#print axioms cover_163086

def state_163105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 59) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 27)))
def hex_163105 : String := "42430544054042430506430506420743050705"
theorem cover_163105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163105 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_163105)
  decide +kernel
#print axioms cover_163105

def state_163124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 27)))
def hex_163124 : String := "41424344050A4409404108420743080741080743050942430544050705"
theorem cover_163124 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163124 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_163124)
  decide +kernel
#print axioms cover_163124

def state_163153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 13)))
def hex_163153 : String := "434441060A41420A080A4441094207094142404142430A05084207430A0741090A09420A404142430907090A09"
theorem cover_163153 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163153 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_163153)
  decide +kernel
#print axioms cover_163153

def state_163198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 13)))
def hex_163198 : String := "404344054107054409414240410843050908070509"
theorem cover_163198 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163198 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_163198)
  decide +kernel
#print axioms cover_163198

def state_163219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 13)))
def hex_163219 : String := "42404344050A4442080542414042074305070708050A05"
theorem cover_163219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163219 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 23) (hex := hex_163219)
  decide +kernel
#print axioms cover_163219

def state_163242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
def hex_163242 : String := "434406414206090A4441090A414240430A440641090A06090A"
theorem cover_163242 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163242 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_163242)
  decide +kernel
#print axioms cover_163242
end Mub6.Numerical.CircleFullPrototype.Forest
