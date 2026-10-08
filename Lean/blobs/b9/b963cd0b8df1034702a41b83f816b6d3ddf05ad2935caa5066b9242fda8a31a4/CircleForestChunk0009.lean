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
def state_1968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_1968 : String := "414243440506054344400544050808440508420543440540050805"
theorem cover_1968 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1968 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_1968)
  decide +kernel
#print axioms cover_1968

def state_1997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
def hex_1997 : String := "43444205440506064405420506"
theorem cover_1997 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1997 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1997)
  decide +kernel
#print axioms cover_1997

def state_2011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 3)))
def hex_2011 : String := "4444404142434405400542050A05430A0A42050A4142430A0A0A0A4041424344400506060808420608414243060643440A06084206430606400806"
theorem cover_2011 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2011 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_2011)
  decide +kernel
#print axioms cover_2011

def state_2070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 3)))
def hex_2070 : String := "4443440540054108050506"
theorem cover_2070 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2070 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_2070)
  decide +kernel
#print axioms cover_2070

def state_2081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_2081 : String := "42434405060543444144054005060506440506"
theorem cover_2081 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2081 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_2081)
  decide +kernel
#print axioms cover_2081

def state_2102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_2102 : String := "41424305064344400543054142054440430508080505054440410A064142064344060606060A4205430544400541060505"
theorem cover_2102 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2102 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 49) (hex := hex_2102)
  decide +kernel
#print axioms cover_2102

def state_2151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_2151 : String := "41424344070509434443400907404109090943054409054408064243050643440705440606"
theorem cover_2151 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2151 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_2151)
  decide +kernel
#print axioms cover_2151

def state_2189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_2189 : String := "4142430544054005420505434405060642054305440505"
theorem cover_2189 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2189 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2189)
  decide +kernel
#print axioms cover_2189
end Mub6.Numerical.CircleFullPrototype.Forest
