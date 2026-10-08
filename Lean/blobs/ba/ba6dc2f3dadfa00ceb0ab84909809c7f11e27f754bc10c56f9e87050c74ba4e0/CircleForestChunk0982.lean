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
def state_1536129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 8)))
def hex_1536129 : String := "4042410905414344400509404209410A434407400742070A050909434405400742054143440540074207430805050505420941094344054042084109050805"
theorem cover_1536129 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536129 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 63) (hex := hex_1536129)
  decide +kernel
#print axioms cover_1536129

def state_1536194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 24 else (if j.val < 4 then 10 else 9)))
def hex_1536194 : String := "4109434440070740060907"
theorem cover_1536194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536194 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1536194)
  decide +kernel
#print axioms cover_1536194

def state_1536206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 10 else 9)))
def hex_1536206 : String := "434440420641064443060606090609"
theorem cover_1536206 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536206 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1536206)
  decide +kernel
#print axioms cover_1536206

def state_1536224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 18)))
def hex_1536224 : String := "42074407414340064206444341060706060607"
theorem cover_1536224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536224 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_1536224)
  decide +kernel
#print axioms cover_1536224

def state_1536244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 50 else (if j.val < 4 then 20 else 18)))
def hex_1536244 : String := "44410905410907"
theorem cover_1536244 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536244 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_1536244)
  decide +kernel
#print axioms cover_1536244

def state_1536252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 36)))
def hex_1536252 : String := "41434042074344410A07410A070709094340070705"
theorem cover_1536252 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536252 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_1536252)
  decide +kernel
#print axioms cover_1536252

def state_1536273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 37)))
def hex_1536273 : String := "41434042094443410A40070A094341054042060A0A06090943404207440741434007420707070742084408414308090807"
theorem cover_1536273 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536273 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_1536273)
  decide +kernel
#print axioms cover_1536273

def state_1536323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 19)))
def hex_1536323 : String := "420644410643400642064407060606"
theorem cover_1536323 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536323 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1536323)
  decide +kernel
#print axioms cover_1536323

def state_1536339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 50 else (if j.val < 4 then 20 else 19)))
def hex_1536339 : String := "4441094340420607090709"
theorem cover_1536339 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536339 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1536339)
  decide +kernel
#print axioms cover_1536339

def state_1536352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 54) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 38)))
def hex_1536352 : String := "4340420644430506050906"
theorem cover_1536352 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536352 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1536352)
  decide +kernel
#print axioms cover_1536352
end Mub6.Numerical.CircleFullD0.Forest
