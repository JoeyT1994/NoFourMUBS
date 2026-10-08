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
def state_1656543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 100) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 40)))
def hex_1656543 : String := "434409420941404344090809090909"
theorem cover_1656543 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656543 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1656543)
  decide +kernel
#print axioms cover_1656543

def state_1656558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 101) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 40)))
def hex_1656558 : String := "40434409424140060909060609"
theorem cover_1656558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656558 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1656558)
  decide +kernel
#print axioms cover_1656558

def state_1656575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 104 else 41)))
def hex_1656575 : String := "44424140A043050940A0054140A043440A05440942090840A0430509424140A0050508"
theorem cover_1656575 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656575 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1656575)
  decide +kernel
#print axioms cover_1656575

def state_1656611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 105 else 82)))
def hex_1656611 : String := "4209414043A0090909"
theorem cover_1656611 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656611 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1656611)
  decide +kernel
#print axioms cover_1656611

def state_1656620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 105 else 83)))
def hex_1656620 : String := "42414043A00743440706074043A009430507414043A04442074107074207414043080607404308060743084407074043A044094241070808430809"
theorem cover_1656620 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656620 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_1656620)
  decide +kernel
#print axioms cover_1656620

def state_1656679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 41)))
def hex_1656679 : String := "4344420941404305090505054409420941404308070708"
theorem cover_1656679 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656679 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1656679)
  decide +kernel
#print axioms cover_1656679

def state_1656702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 101) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 41)))
def hex_1656702 : String := "40434442054140A0050505440942414043050905054140430844060808400505430509"
theorem cover_1656702 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656702 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1656702)
  decide +kernel
#print axioms cover_1656702

def state_1656745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 176 else 200) else (if j.val < 3 then 122 else (if j.val < 4 then 208 else 82)))
def hex_1656745 : String := "44424140434407074442A0060843080A4043084406080841404307060840060808"
theorem cover_1656745 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656745 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1656745)
  decide +kernel
#print axioms cover_1656745
end Mub6.Numerical.CircleFullD0.Forest
