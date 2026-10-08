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
def state_947062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 84) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 53)))
def hex_947062 : String := "4443404244074107070842070740080743404241054443404205080705054144050544434008420708054340050A0542410707410A44070A05"
theorem cover_947062 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947062 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_947062)
  decide +kernel
#print axioms cover_947062

def state_947120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 106)))
def hex_947120 : String := "43404208084207410707400806"
theorem cover_947120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947120 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_947120)
  decide +kernel
#print axioms cover_947120

def state_947136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 85) else (if j.val < 3 then 206 else (if j.val < 4 then 70 else 107)))
def hex_947136 : String := "414443400807074340420941054408054207410707054443400807084340424109440709414408090842074107440707400907"
theorem cover_947136 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947136 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_947136)
  decide +kernel
#print axioms cover_947136

def state_947188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 170) else (if j.val < 3 then 207 else (if j.val < 4 then 70 else 107)))
def hex_947188 : String := "4443400808084340424106060642414407054407430605410644080640054205410508"
theorem cover_947188 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947188 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_947188)
  decide +kernel
#print axioms cover_947188

def state_947223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 171) else (if j.val < 3 then 207 else (if j.val < 4 then 70 else 107)))
def hex_947223 : String := "44084340424108084106084241440743400607074408434006070841440843060844084306084042080842410707410808"
theorem cover_947223 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947223 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_947223)
  decide +kernel
#print axioms cover_947223

def state_947272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 85) else (if j.val < 3 then 103 else (if j.val < 4 then 70 else 107)))
def hex_947272 : String := "424107440707414407434042070A070744434008070743404207414407074407070707"
theorem cover_947272 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947272 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_947272)
  decide +kernel
#print axioms cover_947272
end Mub6.Numerical.CircleFullD0.Forest
