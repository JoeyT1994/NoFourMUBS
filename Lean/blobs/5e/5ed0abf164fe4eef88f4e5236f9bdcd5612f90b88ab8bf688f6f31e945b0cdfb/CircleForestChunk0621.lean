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
def state_387891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 23)))
def hex_387891 : String := "44410A43094042440641070809420707410A430A444042410A430544400506050A0A4042050A0A"
theorem cover_387891 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387891 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_387891)
  decide +kernel
#print axioms cover_387891

def state_387930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 11)))
def hex_387930 : String := "44410A09410A4309404442410A090942410A430940060A0A0A"
theorem cover_387930 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387930 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 25) (hex := hex_387930)
  decide +kernel
#print axioms cover_387930

def state_387955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 11)))
def hex_387955 : String := "42444107430907410A430A4244404107080740410A430842080A0A0A0A"
theorem cover_387955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387955 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 29) (hex := hex_387955)
  decide +kernel
#print axioms cover_387955

def state_387984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 5)))
def hex_387984 : String := "4309440940444109090A0A"
theorem cover_387984 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387984 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_387984)
  decide +kernel
#print axioms cover_387984

def state_387995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
def hex_387995 : String := "410A42430A440742444007070A0A0A"
theorem cover_387995 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387995 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_387995)
  decide +kernel
#print axioms cover_387995

def state_388011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 4)))
def hex_388011 : String := "40414207430744050742070507"
theorem cover_388011 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388011 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_388011)
  decide +kernel
#print axioms cover_388011

def state_388026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
def hex_388026 : String := "4207440707"
theorem cover_388026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388026 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_388026)
  decide +kernel
#print axioms cover_388026

def state_388033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 10)))
def hex_388033 : String := "07"
theorem cover_388033 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388033 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_388033)
  decide +kernel
#print axioms cover_388033

def state_388038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 22)))
def hex_388038 : String := "06"
theorem cover_388038 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388038 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_388038)
  decide +kernel
#print axioms cover_388038

def state_388040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 23)))
def hex_388040 : String := "4340060706"
theorem cover_388040 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388040 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_388040)
  decide +kernel
#print axioms cover_388040

def state_388047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 27) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 23)))
def hex_388047 : String := "420606"
theorem cover_388047 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388047 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_388047)
  decide +kernel
#print axioms cover_388047

def state_388051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 23)))
def hex_388051 : String := "44074341420507420544400507054106420506"
theorem cover_388051 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388051 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_388051)
  decide +kernel
#print axioms cover_388051

def state_388070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 23)))
def hex_388070 : String := "4443410640060706434144064006074440064207074042050642434105054105440605430A4106440640050706"
theorem cover_388070 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388070 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 45) (hex := hex_388070)
  decide +kernel
#print axioms cover_388070

def state_388115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 23)))
def hex_388115 : String := "06"
theorem cover_388115 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388115 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_388115)
  decide +kernel
#print axioms cover_388115

def state_388116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 11)))
def hex_388116 : String := "440641064340064406424341084440060A40060A060806"
theorem cover_388116 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388116 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 23) (hex := hex_388116)
  decide +kernel
#print axioms cover_388116
end Mub6.Numerical.CircleFullPrototype.Forest
