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
def state_1628378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 105) else (if j.val < 3 then 103 else (if j.val < 4 then 96 else 32)))
def hex_1628378 : String := "404443080643080A444308424107054109064305420508"
theorem cover_1628378 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628378 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 23) (hex := hex_1628378)
  decide +kernel
#print axioms cover_1628378

def state_1628401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 97 else 32)))
def hex_1628401 : String := "42074140444342070607074409074006440907"
theorem cover_1628401 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628401 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1628401)
  decide +kernel
#print axioms cover_1628401

def state_1628420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 48 else 33)))
def hex_1628420 : String := "4342414007050741404443420A41400A05050A0A4443054205410505054008054207414007070A"
theorem cover_1628420 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628420 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_1628420)
  decide +kernel
#print axioms cover_1628420

def state_1628459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 48 else 16)))
def hex_1628459 : String := "44434241050541404409050505420709430542074140070505"
theorem cover_1628459 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628459 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1628459)
  decide +kernel
#print axioms cover_1628459

def state_1628484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 53) else (if j.val < 3 then 51 else (if j.val < 4 then 48 else 16)))
def hex_1628484 : String := "404443420808420706430842070A444342050542074109084305420505"
theorem cover_1628484 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628484 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 29) (hex := hex_1628484)
  decide +kernel
#print axioms cover_1628484

def state_1628513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 49 else 16)))
def hex_1628513 : String := "4207414007440707400707"
theorem cover_1628513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628513 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1628513)
  decide +kernel
#print axioms cover_1628513

def state_1628524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 17)))
def hex_1628524 : String := "434241070541404443420541400A05050A430507444305420505054044430807050542074140070707"
theorem cover_1628524 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628524 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_1628524)
  decide +kernel
#print axioms cover_1628524

def state_1628565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 8)))
def hex_1628565 : String := "404443420806060A444342400808400808420740064107064342080842070A"
theorem cover_1628565 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628565 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_1628565)
  decide +kernel
#print axioms cover_1628565

def state_1628596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 8)))
def hex_1628596 : String := "41400707400607"
theorem cover_1628596 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628596 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_1628596)
  decide +kernel
#print axioms cover_1628596
end Mub6.Numerical.CircleFullD0.Forest
