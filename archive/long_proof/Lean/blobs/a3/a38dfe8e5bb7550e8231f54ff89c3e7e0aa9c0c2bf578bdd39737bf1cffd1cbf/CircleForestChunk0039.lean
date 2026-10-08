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
def state_946809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 85) else (if j.val < 3 then 207 else (if j.val < 4 then 69 else 107)))
def hex_946809 : String := "41444340064241060505400842410808080644430540080843064006424144430608064408064106440506"
theorem cover_946809 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946809 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_946809)
  decide +kernel
#print axioms cover_946809

def state_946853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 85) else (if j.val < 3 then 206 else (if j.val < 4 then 69 else 107)))
def hex_946853 : String := "414443404207070707430A404207070744430507434042410705050540420741070707"
theorem cover_946853 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946853 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 35) (hex := hex_946853)
  decide +kernel
#print axioms cover_946853

def state_946888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 85) else (if j.val < 3 then 207 else (if j.val < 4 then 69 else 107)))
def hex_946888 : String := "41444305404207410707070A4405430540424144070A4405430507410A05420709"
theorem cover_946888 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946888 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_946888)
  decide +kernel
#print axioms cover_946888

def state_946923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 42) else (if j.val < 3 then 102 else (if j.val < 4 then 35 else 53)))
def hex_946923 : String := "414443400842440705080505440A4340094209410944080905"
theorem cover_946923 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946923 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_946923)
  decide +kernel
#print axioms cover_946923

def state_946948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 42) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 53)))
def hex_946948 : String := "414443400808084340054205410544080505444308084340424109084106084241440809440843400842090809414408430605440843060840054205410508"
theorem cover_946948 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946948 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_946948)
  decide +kernel
#print axioms cover_946948

def state_947012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 42) else (if j.val < 3 then 102 else (if j.val < 4 then 35 else 53)))
def hex_947012 : String := "41444340420707070743404205410509070544434042074107070606434042410707414407094407434009070707400906"
theorem cover_947012 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947012 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_947012)
  decide +kernel
#print axioms cover_947012
end Mub6.Numerical.CircleFullD0.Forest
