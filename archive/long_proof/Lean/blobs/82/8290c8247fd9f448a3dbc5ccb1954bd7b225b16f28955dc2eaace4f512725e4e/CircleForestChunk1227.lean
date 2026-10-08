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
def state_1594902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 30 else 25)))
def hex_1594902 : String := "4440410A0A4143420A44400A0A0A0A43420A44400A0A400A050A4041060A41434205440A050A05"
theorem cover_1594902 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594902 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_1594902)
  decide +kernel
#print axioms cover_1594902

def state_1594943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 50)))
def hex_1594943 : String := "410643444240060A060606"
theorem cover_1594943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594943 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1594943)
  decide +kernel
#print axioms cover_1594943

def state_1594955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 38) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 50)))
def hex_1594955 : String := "43444240090808424006080844424006090606"
theorem cover_1594955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594955 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 19) (hex := hex_1594955)
  decide +kernel
#print axioms cover_1594955

def state_1594977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 39) else (if j.val < 3 then 102 else (if j.val < 4 then 60 else 100)))
def hex_1594977 : String := "40414344090A0943440A0A0A4143444207080844420A090A4344420A4041090A07420A400A08440A0A"
theorem cover_1594977 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594977 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1594977)
  decide +kernel
#print axioms cover_1594977

def state_1595018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 39) else (if j.val < 3 then 103 else (if j.val < 4 then 60 else 100)))
def hex_1595018 : String := "4041064309064108434409084442400908084240060808"
theorem cover_1595018 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595018 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1595018)
  decide +kernel
#print axioms cover_1595018

def state_1595041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 39) else (if j.val < 3 then 51 else (if j.val < 4 then 60 else 101)))
def hex_1595041 : String := "4240410A0A4143080A43050A400641084308440806"
theorem cover_1595041 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595041 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_1595041)
  decide +kernel
#print axioms cover_1595041

def state_1595062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 39) else (if j.val < 3 then 51 else (if j.val < 4 then 61 else 50)))
def hex_1595062 : String := "4442400A410A0A400641064344424006090606064240060A06"
theorem cover_1595062 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595062 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1595062)
  decide +kernel
#print axioms cover_1595062

def state_1595087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 51)))
def hex_1595087 : String := "40064143424440060806060643424440060505444006080606"
theorem cover_1595087 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595087 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1595087)
  decide +kernel
#print axioms cover_1595087

def state_1595112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 25)))
def hex_1595112 : String := "424440060A0A44400641060606"
theorem cover_1595112 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595112 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1595112)
  decide +kernel
#print axioms cover_1595112
end Mub6.Numerical.CircleFullD0.Forest
