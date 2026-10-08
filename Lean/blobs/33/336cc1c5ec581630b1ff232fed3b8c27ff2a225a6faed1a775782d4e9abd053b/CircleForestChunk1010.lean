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
def state_1542782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 9)))
def hex_1542782 : String := "4243080743414408404241090841444308094308094408430840070808084144050905"
theorem cover_1542782 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542782 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_1542782)
  decide +kernel
#print axioms cover_1542782

def state_1542817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 4)))
def hex_1542817 : String := "05"
theorem cover_1542817 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542817 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1542817)
  decide +kernel
#print axioms cover_1542817

def state_1542818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 4)))
def hex_1542818 : String := "07"
theorem cover_1542818 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542818 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1542818)
  decide +kernel
#print axioms cover_1542818

def state_1542822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 8)))
def hex_1542822 : String := "404243414405400542050605054306074243060506"
theorem cover_1542822 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542822 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_1542822)
  decide +kernel
#print axioms cover_1542822

def state_1542848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 18)))
def hex_1542848 : String := "404207074241440743400742070607074144064306400742070606"
theorem cover_1542848 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542848 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1542848)
  decide +kernel
#print axioms cover_1542848

def state_1542876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 19)))
def hex_1542876 : String := "42414443400742070707434009424144070607090707414443090743090809"
theorem cover_1542876 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542876 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_1542876)
  decide +kernel
#print axioms cover_1542876

def state_1542910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 56) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 38)))
def hex_1542910 : String := "4340424407414340074207440705070744414309070741430940070707424408414308400708084441430640070606414305400A0A4306064007420744070A"
theorem cover_1542910 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542910 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1542910)
  decide +kernel
#print axioms cover_1542910

def state_1542975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 56) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 39)))
def hex_1542975 : String := "4241444305400742074407050544434007420707074305400742070741444305050544094305400905"
theorem cover_1542975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542975 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1542975)
  decide +kernel
#print axioms cover_1542975
end Mub6.Numerical.CircleFullD0.Forest
