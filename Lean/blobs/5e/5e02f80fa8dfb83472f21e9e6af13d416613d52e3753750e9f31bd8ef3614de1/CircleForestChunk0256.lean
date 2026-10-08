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
def state_136876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 46) else (if j.val < 3 then 46 else (if j.val < 4 then 54 else 54)))
def hex_136876 : String := "404142430505050541424344400541428D0505400541428D050544400541428D0505400541428D05054305054243050505"
theorem cover_136876 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136876 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_136876)
  decide +kernel
#print axioms cover_136876

def state_136925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 46) else (if j.val < 3 then 46 else (if j.val < 4 then 54 else 55)))
def hex_136925 : String := "4041420905054142444309400541420605050808420905"
theorem cover_136925 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136925 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_136925)
  decide +kernel
#print axioms cover_136925

def state_136948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 46) else (if j.val < 3 then 46 else (if j.val < 4 then 55 else 27)))
def hex_136948 : String := "4440410A05414243440A40054142060505070A420705400641420606420605"
theorem cover_136948 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136948 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_136948)
  decide +kernel
#print axioms cover_136948

def state_136979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 46) else (if j.val < 3 then 47 else (if j.val < 4 then 27 else 27)))
def hex_136979 : String := "43440505440505"
theorem cover_136979 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136979 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_136979)
  decide +kernel
#print axioms cover_136979

def state_136986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 47) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 27)))
def hex_136986 : String := "424344050544050505"
theorem cover_136986 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136986 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_136986)
  decide +kernel
#print axioms cover_136986

def state_136996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
def hex_136996 : String := "414243074406060709"
theorem cover_136996 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136996 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_136996)
  decide +kernel
#print axioms cover_136996

def state_137006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
def hex_137006 : String := "4243074440410742064307064105420543074405054007074307444007424107430744400607060707"
theorem cover_137006 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137006 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_137006)
  decide +kernel
#print axioms cover_137006

def state_137048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 7)))
def hex_137048 : String := "43094440094142094309444006410509060909"
theorem cover_137048 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137048 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_137048)
  decide +kernel
#print axioms cover_137048

def state_137068 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 7)))
def hex_137068 : String := "44400941070907"
theorem cover_137068 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137068 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_137068)
  decide +kernel
#print axioms cover_137068

def state_137077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 14)))
def hex_137077 : String := "41420943070609"
theorem cover_137077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137077 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_137077)
  decide +kernel
#print axioms cover_137077
end Mub6.Numerical.CircleFullPrototype.Forest
