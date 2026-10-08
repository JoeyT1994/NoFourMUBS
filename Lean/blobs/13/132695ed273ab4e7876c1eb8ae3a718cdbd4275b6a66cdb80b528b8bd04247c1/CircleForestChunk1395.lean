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
def state_1635453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 9)))
def hex_1635453 : String := "44054105434442400541054307054005074240074143070543074408070905"
theorem cover_1635453 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635453 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_1635453)
  decide +kernel
#print axioms cover_1635453

def state_1635486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 18)))
def hex_1635486 : String := "414340080608434042080842060A08"
theorem cover_1635486 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635486 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1635486)
  decide +kernel
#print axioms cover_1635486

def state_1635501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 19)))
def hex_1635501 : String := "41434042064406060640080643404206444108434042060806084106430640420644060606064042440841064306084408410843400808084206440806"
theorem cover_1635501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635501 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1635501)
  decide +kernel
#print axioms cover_1635501

def state_1635563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 18)))
def hex_1635563 : String := "41084340420808420A0808"
theorem cover_1635563 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635563 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1635563)
  decide +kernel
#print axioms cover_1635563

def state_1635575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 19)))
def hex_1635575 : String := "434044084241054306084105430705440A0640054405420808"
theorem cover_1635575 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635575 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1635575)
  decide +kernel
#print axioms cover_1635575

def state_1635602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 50 else 19)))
def hex_1635602 : String := "444241084340074407070841084307084241434007064008440606434007440606404408420807444206084206410607414307400544050743074007440707"
theorem cover_1635602 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635602 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_1635602)
  decide +kernel
#print axioms cover_1635602

def state_1635665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 50 else 19)))
def hex_1635665 : String := "4442410643060A410A430A40080A42064143064044080606434007064044420A074206070A"
theorem cover_1635665 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635665 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1635665)
  decide +kernel
#print axioms cover_1635665
end Mub6.Numerical.CircleFullD0.Forest
