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
def state_2581114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 39) else (if j.val < 3 then 46 else (if j.val < 4 then 49 else 17)))
def hex_2581114 : String := "4442434041064443070643420840070608064041060806430606420843404144060844424340410607060806420843400A080841060840410644060806"
theorem cover_2581114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581114 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_2581114)
  decide +kernel
#print axioms cover_2581114

def state_2581175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 53 else 19) else (if j.val < 3 then 46 else (if j.val < 4 then 49 else 17)))
def hex_2581175 : String := "4106440608"
theorem cover_2581175 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581175 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2581175)
  decide +kernel
#print axioms cover_2581175

def state_2581180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 24 else 17)))
def hex_2581180 : String := "43404106440742434007074041060706430706064041064406424340410644064243400706060606060606"
theorem cover_2581180 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581180 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 43) (hex := hex_2581180)
  decide +kernel
#print axioms cover_2581180

def state_2581223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 8)))
def hex_2581223 : String := "06"
theorem cover_2581223 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581223 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2581223)
  decide +kernel
#print axioms cover_2581223

def state_2581224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 8)))
def hex_2581224 : String := "4041064406424340410644060806060606"
theorem cover_2581224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581224 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_2581224)
  decide +kernel
#print axioms cover_2581224

def state_2581242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 22 else (if j.val < 4 then 12 else 9)))
def hex_2581242 : String := "4340410844434205404105080508080808"
theorem cover_2581242 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581242 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_2581242)
  decide +kernel
#print axioms cover_2581242

def state_2581263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 18)))
def hex_2581263 : String := "4243404108440808050843404106440642434041084408080508434041064406DC06060606"
theorem cover_2581263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581263 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 37) (hex := hex_2581263)
  decide +kernel
#print axioms cover_2581263

def state_2581300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 19)))
def hex_2581300 : String := "4208434044410842084340444108DC0808084108420743400707070808"
theorem cover_2581300 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581300 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 29) (hex := hex_2581300)
  decide +kernel
#print axioms cover_2581300
end Mub6.Numerical.CircleFullD0.Forest
