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
def state_945150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 84) else (if j.val < 3 then 101 else (if j.val < 4 then 33 else 53)))
def hex_945150 : String := "444305404244074107074441070541430507054207440507434042410605060A4042414407064443050709410A44430540060706424107070A"
theorem cover_945150 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945150 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_945150)
  decide +kernel
#print axioms cover_945150

def state_945207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 101 else (if j.val < 4 then 33 else 53)))
def hex_945207 : String := "440543054042414405430509054144054305400605054241070505"
theorem cover_945207 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945207 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_945207)
  decide +kernel
#print axioms cover_945207

def state_945234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 50 else (if j.val < 4 then 16 else 26)))
def hex_945234 : String := "4405430540424144054305420A400A0505414405430540420A050505420505"
theorem cover_945234 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945234 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_945234)
  decide +kernel
#print axioms cover_945234

def state_945267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 16 else 52)))
def hex_945267 : String := "430540424405414305400805050505"
theorem cover_945267 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945267 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_945267)
  decide +kernel
#print axioms cover_945267

def state_945283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 32 else 53)))
def hex_945283 : String := "400605"
theorem cover_945283 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945283 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_945283)
  decide +kernel
#print axioms cover_945283

def state_945287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 33 else 53)))
def hex_945287 : String := "4241444306400642444106050606064405064106440506"
theorem cover_945287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945287 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_945287)
  decide +kernel
#print axioms cover_945287

def state_945310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 33 else 53)))
def hex_945310 : String := "42414443054042440541430540060705440541060542050543064042410606060A440543054042414405050505054144050605"
theorem cover_945310 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945310 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_945310)
  decide +kernel
#print axioms cover_945310

def state_945361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 51 else (if j.val < 4 then 16 else 26)))
def hex_945361 : String := "440543054042050505"
theorem cover_945361 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945361 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_945361)
  decide +kernel
#print axioms cover_945361

def state_945372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 26)))
def hex_945372 : String := "41440A43420940410609414443420940064408060909440A09090A"
theorem cover_945372 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945372 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 27) (hex := hex_945372)
  decide +kernel
#print axioms cover_945372
end Mub6.Numerical.CircleFullD0.Forest
