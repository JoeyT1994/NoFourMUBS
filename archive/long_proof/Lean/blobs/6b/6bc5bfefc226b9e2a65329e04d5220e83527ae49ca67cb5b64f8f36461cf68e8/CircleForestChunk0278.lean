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
def state_142150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 14)))
def hex_142150 : String := "424405404241440843080908054241440843084042414408080805420A414405430805054405084144054305050505"
theorem cover_142150 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142150 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 47) (hex := hex_142150)
  decide +kernel
#print axioms cover_142150

def state_142200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 21 else 28)))
def hex_142200 : String := "40074341060506"
theorem cover_142200 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142200 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_142200)
  decide +kernel
#print axioms cover_142200

def state_142207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 21 else 29)))
def hex_142207 : String := "404341074209070743414244064007434106420607074407074244404341420605050A0640090A4405400743414244050705054107054107420A07"
theorem cover_142207 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142207 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_142207)
  decide +kernel
#print axioms cover_142207

def state_142266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 29 else (if j.val < 4 then 21 else 14)))
def hex_142266 : String := "440540074341070507"
theorem cover_142266 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142266 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_142266)
  decide +kernel
#print axioms cover_142266

def state_142275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 14 else (if j.val < 4 then 21 else 14)))
def hex_142275 : String := "4244054043424109050542090543420A050A05"
theorem cover_142275 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142275 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_142275)
  decide +kernel
#print axioms cover_142275

def state_142295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 15)))
def hex_142295 : String := "430606"
theorem cover_142295 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142295 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_142295)
  decide +kernel
#print axioms cover_142295

def state_142303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 30)))
def hex_142303 : String := "414243444009410A42090A0909430A0742434440064142090606060906"
theorem cover_142303 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142303 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_142303)
  decide +kernel
#print axioms cover_142303

def state_142334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 56 else (if j.val < 4 then 20 else 30)))
def hex_142334 : String := "43444041424305050A42430A090A41420543050542430505430A8240410542050A0544404142090709824009410509"
theorem cover_142334 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142334 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 47) (hex := hex_142334)
  decide +kernel
#print axioms cover_142334
end Mub6.Numerical.CircleFullPrototype.Forest
