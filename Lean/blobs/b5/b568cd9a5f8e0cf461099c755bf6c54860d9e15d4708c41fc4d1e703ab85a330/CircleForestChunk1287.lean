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
def state_1609384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 49)))
def hex_1609384 : String := "43440640420641430644074042069F06060644404208414307440740080708094042094143444042074107070740420941430709090944400809090909"
theorem cover_1609384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609384 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_1609384)
  decide +kernel
#print axioms cover_1609384

def state_1609445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 49)))
def hex_1609445 : String := "4206410706"
theorem cover_1609445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609445 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1609445)
  decide +kernel
#print axioms cover_1609445

def state_1609451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 48)))
def hex_1609451 : String := "4042084143444005074042080507444005074042080542410707410505434408400809084207410707"
theorem cover_1609451 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609451 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1609451)
  decide +kernel
#print axioms cover_1609451

def state_1609494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 50 else (if j.val < 4 then 31 else 49)))
def hex_1609494 : String := "41434442084008070A0A08"
theorem cover_1609494 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609494 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1609494)
  decide +kernel
#print axioms cover_1609494

def state_1609508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 62 else 98)))
def hex_1609508 : String := "4042410A0841434405400507054344054042080507440540054207054207410707"
theorem cover_1609508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609508 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1609508)
  decide +kernel
#print axioms cover_1609508

def state_1609542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 62 else 99)))
def hex_1609542 : String := "420A41434440420A054207410505400A420A4106430706444005420A050A4344400A4207410707400A420A410A0944400A0A0A"
theorem cover_1609542 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609542 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1609542)
  decide +kernel
#print axioms cover_1609542

def state_1609593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 62 else 99)))
def hex_1609593 : String := "424143070A09414344070744404207070740420A41060707434407404207070744404207070709"
theorem cover_1609593 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609593 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_1609593)
  decide +kernel
#print axioms cover_1609593
end Mub6.Numerical.CircleFullD0.Forest
