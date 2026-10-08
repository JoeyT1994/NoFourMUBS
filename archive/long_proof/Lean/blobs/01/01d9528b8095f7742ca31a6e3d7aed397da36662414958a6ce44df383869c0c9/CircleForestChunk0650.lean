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
def state_1344932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_1344932 : String := "42434408410A434407070A0A434409414243070A4305054243444005054008070A43050944094106420A09"
theorem cover_1344932 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344932 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1344932)
  decide +kernel
#print axioms cover_1344932

def state_1344975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_1344975 : String := "424344084344070A0A44080A434442080542430844080A43440540410508414208050844054041050541050844054208440509"
theorem cover_1344975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344975 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1344975)
  decide +kernel
#print axioms cover_1344975

def state_1345028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_1345028 : String := "424344404106434442400506050506410643444207430806060606064344400541054243050605054440414206050606400506"
theorem cover_1345028 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345028 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1345028)
  decide +kernel
#print axioms cover_1345028

def state_1345086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
def hex_1345086 : String := "42404307444142064044080506420740440A4307060A4106074307440A06404305444105424044084305080805410542400543050605430844084105420605"
theorem cover_1345086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345086 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1345086)
  decide +kernel
#print axioms cover_1345086

def state_1345150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 12)))
def hex_1345150 : String := "4043074441420740440A43070A0A0A074309440707"
theorem cover_1345150 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345150 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_1345150)
  decide +kernel
#print axioms cover_1345150

def state_1345173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 12)))
def hex_1345173 : String := "440842414009080808"
theorem cover_1345173 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345173 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1345173)
  decide +kernel
#print axioms cover_1345173

def state_1345183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 24)))
def hex_1345183 : String := "4241404408430808080808"
theorem cover_1345183 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345183 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1345183)
  decide +kernel
#print axioms cover_1345183
end Mub6.Numerical.CircleFullD0.Forest
