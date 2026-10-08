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
def state_951817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 26)))
def hex_951817 : String := "41424443400808084306400642414408064408430606410644080644430608064244084340064106420A05400A41420A080A440843064006410608"
theorem cover_951817 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951817 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_951817)
  decide +kernel
#print axioms cover_951817

def state_951879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 52)))
def hex_951879 : String := "4340420808094008420808"
theorem cover_951879 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951879 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_951879)
  decide +kernel
#print axioms cover_951879

def state_951892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 34 else 53)))
def hex_951892 : String := "42414443064006420806064443050806410606"
theorem cover_951892 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951892 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_951892)
  decide +kernel
#print axioms cover_951892

def state_951911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 34 else 53)))
def hex_951911 : String := "4241444309404244084106080909430640060A44094340060540424144430540060906440506410606424144090A09094144090609"
theorem cover_951911 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951911 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_951911)
  decide +kernel
#print axioms cover_951911

def state_951965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 53)))
def hex_951965 : String := "4241444308084306054408434006424144080644080641060840420808424108080841440806440843064006420808"
theorem cover_951965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951965 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_951965)
  decide +kernel
#print axioms cover_951965

def state_952015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 84) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 106)))
def hex_952015 : String := "434042080842440741070744084108084008420708"
theorem cover_952015 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952015 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_952015)
  decide +kernel
#print axioms cover_952015
end Mub6.Numerical.CircleFullD0.Forest
