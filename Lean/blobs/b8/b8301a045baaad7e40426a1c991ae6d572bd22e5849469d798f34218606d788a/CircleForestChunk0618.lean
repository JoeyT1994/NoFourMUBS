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
def state_1337165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 48) else (if j.val < 3 then 43 else (if j.val < 4 then 32 else 44)))
def hex_1337165 : String := "4144420640430641440642064043C8070606064240080540434144C805084144420A4043C841074406080A0A4406080506"
theorem cover_1337165 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337165 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 49) (hex := hex_1337165)
  decide +kernel
#print axioms cover_1337165

def state_1337215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 96) else (if j.val < 3 then 43 else (if j.val < 4 then 33 else 44)))
def hex_1337215 : String := "4442064043410706070642404341070607064043414407420740090A44420640430641070606084107440742074005074341070607"
theorem cover_1337215 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337215 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_1337215)
  decide +kernel
#print axioms cover_1337215

def state_1337268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 97) else (if j.val < 3 then 43 else (if j.val < 4 then 33 else 44)))
def hex_1337268 : String := "44064206404306414406080606"
theorem cover_1337268 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337268 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1337268)
  decide +kernel
#print axioms cover_1337268

def state_1337281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 59 else 48) else (if j.val < 3 then 43 else (if j.val < 4 then 16 else 44)))
def hex_1337281 : String := "06"
theorem cover_1337281 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337281 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1337281)
  decide +kernel
#print axioms cover_1337281

def state_1337282 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 48) else (if j.val < 3 then 21 else (if j.val < 4 then 16 else 45)))
def hex_1337282 : String := "4240080540434144420840080508084144420A4043410A08410A080A0A444208400843084144060806084305410A440605"
theorem cover_1337282 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337282 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_1337282)
  decide +kernel
#print axioms cover_1337282

def state_1337331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 49) else (if j.val < 3 then 21 else (if j.val < 4 then 16 else 22)))
def hex_1337331 : String := "44064206400805"
theorem cover_1337331 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337331 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1337331)
  decide +kernel
#print axioms cover_1337331

def state_1337340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 48) else (if j.val < 3 then 21 else (if j.val < 4 then 17 else 44)))
def hex_1337340 : String := "4206404341074406420640434144054206050605060707"
theorem cover_1337340 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337340 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 23) (hex := hex_1337340)
  decide +kernel
#print axioms cover_1337340

def state_1337364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 48) else (if j.val < 3 then 42 else (if j.val < 4 then 17 else 45)))
def hex_1337364 : String := "4043090707"
theorem cover_1337364 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337364 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1337364)
  decide +kernel
#print axioms cover_1337364

def state_1337371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 48) else (if j.val < 3 then 43 else (if j.val < 4 then 34 else 45)))
def hex_1337371 : String := "414442074043410744420705080543410744070A07420A40090A4442084043080543414406080641070642084008430808"
theorem cover_1337371 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337371 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_1337371)
  decide +kernel
#print axioms cover_1337371
end Mub6.Numerical.CircleFullD0.Forest
