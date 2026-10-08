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
def state_55392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 77) else (if j.val < 3 then 36 else (if j.val < 4 then 96 else 54)))
def hex_55392 : String := "42440843094140060640420A060909"
theorem cover_55392 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55392 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_55392)
  decide +kernel
#print axioms cover_55392

def state_55407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 38) else (if j.val < 3 then 36 else (if j.val < 4 then 97 else 54)))
def hex_55407 : String := "414042440A06440505420A4406064042440A43414006064042440706060A0A444341050705430606420A440A430606"
theorem cover_55407 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55407 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_55407)
  decide +kernel
#print axioms cover_55407

def state_55454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 38) else (if j.val < 3 then 36 else (if j.val < 4 then 48 else 55)))
def hex_55454 : String := "4341064044424306060606444206060641064044060606"
theorem cover_55454 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55454 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_55454)
  decide +kernel
#print axioms cover_55454

def state_55477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 38) else (if j.val < 3 then 37 else (if j.val < 4 then 48 else 27)))
def hex_55477 : String := "444341400506094106404244050505424409060606"
theorem cover_55477 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55477 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_55477)
  decide +kernel
#print axioms cover_55477

def state_55501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 36 else (if j.val < 4 then 96 else 54)))
def hex_55501 : String := "40414244430907430940414291440709429107414291090909424407090941424409090909"
theorem cover_55501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55501 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_55501)
  decide +kernel
#print axioms cover_55501

def state_55538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 36 else (if j.val < 4 then 97 else 54)))
def hex_55538 : String := "40414244074340414207070741420A4407060707440743400741424406060607070741420A440743090A420707"
theorem cover_55538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55538 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_55538)
  decide +kernel
#print axioms cover_55538

def state_55584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 36 else (if j.val < 4 then 96 else 55)))
def hex_55584 : String := "4041444243404144090608094008410608090844424309080908414442430941400606090942060609"
theorem cover_55584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55584 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_55584)
  decide +kernel
#print axioms cover_55584
end Mub6.Numerical.CircleFullPrototype.Forest
