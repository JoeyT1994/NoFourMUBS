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
def state_1657024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 53 else 20)))
def hex_1657024 : String := "44094241404344074207410709070709414043440642414006074006090606434409420741090907400609"
theorem cover_1657024 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657024 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_1657024)
  decide +kernel
#print axioms cover_1657024

def state_1657067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 20)))
def hex_1657067 : String := "434442094041434406050606094240414305440505050540414305440606050544094209400609"
theorem cover_1657067 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657067 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_1657067)
  decide +kernel
#print axioms cover_1657067

def state_1657106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 20)))
def hex_1657106 : String := "414344094240414305090505404143084409080808094344050509"
theorem cover_1657106 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657106 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1657106)
  decide +kernel
#print axioms cover_1657106

def state_1657137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 31 else (if j.val < 4 then 52 else 40)))
def hex_1657137 : String := "42414043440606064344420909424140434409080909404344060806094140064308064006430806094006434406424109050606414006434406060606"
theorem cover_1657137 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657137 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1657137)
  decide +kernel
#print axioms cover_1657137

def state_1657198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 31 else (if j.val < 4 then 52 else 41)))
def hex_1657198 : String := "4241404344424140060806060844060643084442414043440606060940060806084043080643084406084140064308440606400608"
theorem cover_1657198 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657198 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_1657198)
  decide +kernel
#print axioms cover_1657198

def state_1657251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 31 else (if j.val < 4 then 53 else 20)))
def hex_1657251 : String := "44064241400643440642414006090606060606"
theorem cover_1657251 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657251 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_1657251)
  decide +kernel
#print axioms cover_1657251

def state_1657270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 31 else (if j.val < 4 then 26 else 20)))
def hex_1657270 : String := "434406424006080606"
theorem cover_1657270 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657270 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1657270)
  decide +kernel
#print axioms cover_1657270
end Mub6.Numerical.CircleFullD0.Forest
