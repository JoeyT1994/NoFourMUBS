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
def state_1550640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 44)))
def hex_1550640 : String := "424405054443414005420544054306050505434140440542054305054442054341400706050542054307050505"
theorem cover_1550640 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550640 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 45) (hex := hex_1550640)
  decide +kernel
#print axioms cover_1550640

def state_1550685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 44)))
def hex_1550685 : String := "4244434109050509444341404206060606410905434140440909090609"
theorem cover_1550685 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550685 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_1550685)
  decide +kernel
#print axioms cover_1550685

def state_1550715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 45)))
def hex_1550715 : String := "414007074044424341070A4140440505070543074107400A0742070744424306090707"
theorem cover_1550715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550715 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1550715)
  decide +kernel
#print axioms cover_1550715

def state_1550750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 45)))
def hex_1550750 : String := "41404442094307090909404442430505434140444205430705420507440907054109054209434107050944420943410740440907060909"
theorem cover_1550750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550750 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_1550750)
  decide +kernel
#print axioms cover_1550750

def state_1550805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 30) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 22)))
def hex_1550805 : String := "42444341090609094443414042440607070606410940420944060906430709"
theorem cover_1550805 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550805 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1550805)
  decide +kernel
#print axioms cover_1550805

def state_1550837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 22)))
def hex_1550837 : String := "424443050543414005420544050505054443414042050606050543414044420543060542050A06064140054405420543050505"
theorem cover_1550837 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550837 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1550837)
  decide +kernel
#print axioms cover_1550837
end Mub6.Numerical.CircleFullD0.Forest
