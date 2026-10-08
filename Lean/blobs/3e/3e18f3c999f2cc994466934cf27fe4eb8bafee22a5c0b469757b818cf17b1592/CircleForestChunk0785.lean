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
def state_1489178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
def hex_1489178 : String := "40424407414340074206070643404244074107050742440A4106434005050507070742440A41064340420A4407060A064407410643424007070707"
theorem cover_1489178 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489178 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_1489178)
  decide +kernel
#print axioms cover_1489178

def state_1489238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
def hex_1489238 : String := "4241064344404208414344070606434407080842064106434407060640080644400806064143444007060506434440424107070742410707070A4407400706"
theorem cover_1489238 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489238 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1489238)
  decide +kernel
#print axioms cover_1489238

def state_1489301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
def hex_1489301 : String := "4206410643444206070606"
theorem cover_1489301 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489301 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1489301)
  decide +kernel
#print axioms cover_1489301

def state_1489318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 6)))
def hex_1489318 : String := "440542404341050505054043414405424043420506050540064308420506440542400605064144054205404306054342050505054341440542050805410505"
theorem cover_1489318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489318 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_1489318)
  decide +kernel
#print axioms cover_1489318

def state_1489381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 6)))
def hex_1489381 : String := "440505"
theorem cover_1489381 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489381 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1489381)
  decide +kernel
#print axioms cover_1489381

def state_1489384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
def hex_1489384 : String := "434405420A4041430605060A05"
theorem cover_1489384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489384 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1489384)
  decide +kernel
#print axioms cover_1489384

def state_1489397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
def hex_1489397 : String := "41434405050A05"
theorem cover_1489397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489397 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1489397)
  decide +kernel
#print axioms cover_1489397
end Mub6.Numerical.CircleFullD0.Forest
