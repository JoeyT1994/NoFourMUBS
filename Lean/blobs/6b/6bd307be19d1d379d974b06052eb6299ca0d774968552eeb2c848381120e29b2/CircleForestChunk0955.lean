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
def state_1529743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 23 else (if j.val < 4 then 8 else 23)))
def hex_1529743 : String := "4143400806400842444143064005060605074306400506"
theorem cover_1529743 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529743 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_1529743)
  decide +kernel
#print axioms cover_1529743

def state_1529766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 11)))
def hex_1529766 : String := "424441430640420606060606440606"
theorem cover_1529766 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529766 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1529766)
  decide +kernel
#print axioms cover_1529766

def state_1529783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 22 else (if j.val < 4 then 9 else 11)))
def hex_1529783 : String := "44434140420505420A44434140050A0505430505054140050A05430505"
theorem cover_1529783 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529783 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_1529783)
  decide +kernel
#print axioms cover_1529783

def state_1529816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 30) else (if j.val < 3 then 23 else (if j.val < 4 then 18 else 22)))
def hex_1529816 : String := "42440505444341400542050A0505430505"
theorem cover_1529816 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529816 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1529816)
  decide +kernel
#print axioms cover_1529816

def state_1529834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 46 else (if j.val < 4 then 18 else 22)))
def hex_1529834 : String := "4443414042054405054244080544084306050541400509054341400542054409050505"
theorem cover_1529834 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529834 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1529834)
  decide +kernel
#print axioms cover_1529834

def state_1529870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 47 else (if j.val < 4 then 18 else 44)))
def hex_1529870 : String := "434142404443414205050505054406430606404443064142050A05430A054406060641424005440805404405054408434109050505"
theorem cover_1529870 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529870 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_1529870)
  decide +kernel
#print axioms cover_1529870

def state_1529923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 47 else (if j.val < 4 then 18 else 45)))
def hex_1529923 : String := "434142400544430605074044430705050742050641420540054443410705050505"
theorem cover_1529923 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529923 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1529923)
  decide +kernel
#print axioms cover_1529923

def state_1529956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 31) else (if j.val < 3 then 23 else (if j.val < 4 then 18 else 22)))
def hex_1529956 : String := "40054205440505"
theorem cover_1529956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529956 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1529956)
  decide +kernel
#print axioms cover_1529956

def state_1529963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 23 else (if j.val < 4 then 19 else 22)))
def hex_1529963 : String := "414042050542440505444341420505050543050505"
theorem cover_1529963 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529963 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_1529963)
  decide +kernel
#print axioms cover_1529963

def state_1529984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 23 else (if j.val < 4 then 9 else 23)))
def hex_1529984 : String := "4341400542440505444341070505050505"
theorem cover_1529984 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529984 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_1529984)
  decide +kernel
#print axioms cover_1529984
end Mub6.Numerical.CircleFullD0.Forest
