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
def state_378105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
def hex_378105 : String := "4344414207404306090742074043070707414209400643060642090609"
theorem cover_378105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378105 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_378105)
  decide +kernel
#print axioms cover_378105

def state_378134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
def hex_378134 : String := "4043410508084341424440054305090544400843420506420906084244090808414209440940080909"
theorem cover_378134 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378134 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_378134)
  decide +kernel
#print axioms cover_378134

def state_378175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 3)))
def hex_378175 : String := "09"
theorem cover_378175 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378175 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_378175)
  decide +kernel
#print axioms cover_378175

def state_378181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 6)))
def hex_378181 : String := "444143440A4008064440424144430A050808080A4008424106090A43440A084440084209080841430640080608"
theorem cover_378181 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378181 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_378181)
  decide +kernel
#print axioms cover_378181

def state_378226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 6)))
def hex_378226 : String := "4441444042434105080505054042090842094341440540080509050941404208084209434408060908"
theorem cover_378226 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378226 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_378226)
  decide +kernel
#print axioms cover_378226

def state_378267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 6)))
def hex_378267 : String := "4344410A0808444142440540080505084142070708"
theorem cover_378267 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378267 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_378267)
  decide +kernel
#print axioms cover_378267

def state_378288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
def hex_378288 : String := "424344410A0A064441404405420905054009440509414042064306090609430A4441050A4140424306440506070640080A"
theorem cover_378288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378288 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_378288)
  decide +kernel
#print axioms cover_378288
end Mub6.Numerical.CircleFullPrototype.Forest
