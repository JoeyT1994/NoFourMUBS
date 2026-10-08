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
def state_185119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 11)))
def hex_185119 : String := "4041424443074009410709070505414244430740410742090741074244060707070742444306414009420906050905"
theorem cover_185119 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_185119 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_185119)
  decide +kernel
#print axioms cover_185119

def state_185167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 10)))
def hex_185167 : String := "404142434408400A410A080805054142434408404142080A08414208430608080843440642400A410A06050A420805"
theorem cover_185167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_185167 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_185167)
  decide +kernel
#print axioms cover_185167

def state_185215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 11)))
def hex_185215 : String := "414243444009410A09090A0A420905"
theorem cover_185215 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_185215 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_185215)
  decide +kernel
#print axioms cover_185215

def state_185230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 11)))
def hex_185230 : String := "41424344404142434440070707080742084307084142430708074208430708400707444008080643070A424344080908434405090A"
theorem cover_185230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_185230 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_185230)
  decide +kernel
#print axioms cover_185230

def state_185283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
def hex_185283 : String := "4344060744424305054340050605424344400541070507440A0A43070A"
theorem cover_185283 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_185283 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_185283)
  decide +kernel
#print axioms cover_185283

def state_185313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
def hex_185313 : String := "4344064144050544400506054408414344400542080509440809430908"
theorem cover_185313 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_185313 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_185313)
  decide +kernel
#print axioms cover_185313
end Mub6.Numerical.CircleFullPrototype.Forest
