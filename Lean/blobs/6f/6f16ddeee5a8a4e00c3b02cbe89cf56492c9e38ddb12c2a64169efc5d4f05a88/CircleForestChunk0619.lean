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
def state_1337420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 48) else (if j.val < 3 then 43 else (if j.val < 4 then 35 else 45)))
def hex_1337420 : String := "4144074207400507444207054208400543414405080805"
theorem cover_1337420 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337420 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1337420)
  decide +kernel
#print axioms cover_1337420

def state_1337443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 59 else 48) else (if j.val < 3 then 43 else (if j.val < 4 then 17 else 45)))
def hex_1337443 : String := "43410A4406420640430A0A0A410744074207404341074406080707"
theorem cover_1337443 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337443 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1337443)
  decide +kernel
#print axioms cover_1337443

def state_1337470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 49) else (if j.val < 3 then 21 else (if j.val < 4 then 17 else 22)))
def hex_1337470 : String := "44064206404308414442064005060808430641440642064043064107060606"
theorem cover_1337470 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337470 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 31) (hex := hex_1337470)
  decide +kernel
#print axioms cover_1337470

def state_1337501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 23)))
def hex_1337501 : String := "42084008434144420840080A08084144420A4043410A08410A08430A0A420840080A444208400843084144420840084308410A06080808"
theorem cover_1337501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337501 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 55) (hex := hex_1337501)
  decide +kernel
#print axioms cover_1337501

def state_1337556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 11)))
def hex_1337556 : String := "44420640080608"
theorem cover_1337556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337556 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1337556)
  decide +kernel
#print axioms cover_1337556

def state_1337565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 9 else 22)))
def hex_1337565 : String := "4240430905074005434144074207400507444206400506424008064005434107060505"
theorem cover_1337565 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337565 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_1337565)
  decide +kernel
#print axioms cover_1337565

def state_1337601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 24) else (if j.val < 3 then 20 else (if j.val < 4 then 9 else 23)))
def hex_1337601 : String := "4008430807"
theorem cover_1337601 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337601 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1337601)
  decide +kernel
#print axioms cover_1337601

def state_1337607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 24) else (if j.val < 3 then 21 else (if j.val < 4 then 9 else 23)))
def hex_1337607 : String := "4341050805"
theorem cover_1337607 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337607 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1337607)
  decide +kernel
#print axioms cover_1337607

def state_1337613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 24) else (if j.val < 3 then 21 else (if j.val < 4 then 18 else 23)))
def hex_1337613 : String := "41444207400543410744070A05420A40050A44420840430805434144420740054341070805420840080A084105444207050842084008430808"
theorem cover_1337613 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337613 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_1337613)
  decide +kernel
#print axioms cover_1337613
end Mub6.Numerical.CircleFullD0.Forest
