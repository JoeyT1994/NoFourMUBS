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
def state_290153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 8)))
def hex_290153 : String := "440A424140434407070743440608074043440A42410909090A43440A4241084043A90743A90841060A0A0A"
theorem cover_290153 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290153 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 43) (hex := hex_290153)
  decide +kernel
#print axioms cover_290153

def state_290196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 8)))
def hex_290196 : String := "430644064241064043440608080606"
theorem cover_290196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290196 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_290196)
  decide +kernel
#print axioms cover_290196

def state_290211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 8)))
def hex_290211 : String := "06"
theorem cover_290211 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290211 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_290211)
  decide +kernel
#print axioms cover_290211

def state_290216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 23) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 16)))
def hex_290216 : String := "41424043080A434409420906440A42410A050A0A4240084308050A"
theorem cover_290216 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290216 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_290216)
  decide +kernel
#print axioms cover_290216

def state_290246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 46) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 17)))
def hex_290246 : String := "434408084442410A080A424143400844084241A906084009440A0943084006440806410A08"
theorem cover_290246 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290246 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_290246)
  decide +kernel
#print axioms cover_290246

def state_290284 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 46) else (if j.val < 3 then 48 else (if j.val < 4 then 56 else 17)))
def hex_290284 : String := "4442414043084408080908410608424140430844084241A9070843440807440942410707074008074140084307440642070608"
theorem cover_290284 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290284 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_290284)
  decide +kernel
#print axioms cover_290284

def state_290336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 46) else (if j.val < 3 then 48 else (if j.val < 4 then 57 else 34)))
def hex_290336 : String := "42414043440A4241400A094008050A0A43090A4043080505410A0A"
theorem cover_290336 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290336 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_290336)
  decide +kernel
#print axioms cover_290336

def state_290366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 114 else 92) else (if j.val < 3 then 96 else (if j.val < 4 then 57 else 35)))
def hex_290366 : String := "43444241A940080541A9084241A9400643070541A9400843074408074442410A050A4241A905410A0A"
theorem cover_290366 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290366 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_290366)
  decide +kernel
#print axioms cover_290366
end Mub6.Numerical.CircleFullPrototype.Forest
