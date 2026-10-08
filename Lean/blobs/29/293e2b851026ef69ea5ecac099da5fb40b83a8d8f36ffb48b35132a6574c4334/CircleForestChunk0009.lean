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
def state_939640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_939640 : String := "42430744404107430742444107070707414306420A0A43420A070A40070A434407400A07444007410707400707"
theorem cover_939640 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939640 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_939640)
  decide +kernel
#print axioms cover_939640

def state_939686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_939686 : String := "4109420943440A090A"
theorem cover_939686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939686 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_939686)
  decide +kernel
#print axioms cover_939686

def state_939697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
def hex_939697 : String := "09"
theorem cover_939697 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939697 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_939697)
  decide +kernel
#print axioms cover_939697

def state_939699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 3)))
def hex_939699 : String := "444042094441430505434209440A09090942074441074340420744410707414342070505434207404407090707070741434009070543400942074407070909"
theorem cover_939699 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939699 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 63) (hex := hex_939699)
  decide +kernel
#print axioms cover_939699

def state_939762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 3)))
def hex_939762 : String := "4440090709"
theorem cover_939762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939762 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_939762)
  decide +kernel
#print axioms cover_939762

def state_939768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
def hex_939768 : String := "43440A090A"
theorem cover_939768 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939768 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_939768)
  decide +kernel
#print axioms cover_939768

def state_939776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 6)))
def hex_939776 : String := "41420A440A434209400909090A"
theorem cover_939776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939776 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_939776)
  decide +kernel
#print axioms cover_939776

def state_939790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 6)))
def hex_939790 : String := "42440707444340420A440A41434207400A07070A070743404209414443420940090909094443420A400A4107070A09420741440707440707400907"
theorem cover_939790 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939790 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_939790)
  decide +kernel
#print axioms cover_939790

def state_939849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 6)))
def hex_939849 : String := "4207440A434041420A440A4342094009410905090A410707400A07"
theorem cover_939849 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939849 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 27) (hex := hex_939849)
  decide +kernel
#print axioms cover_939849
end Mub6.Numerical.CircleFullD0.Forest
