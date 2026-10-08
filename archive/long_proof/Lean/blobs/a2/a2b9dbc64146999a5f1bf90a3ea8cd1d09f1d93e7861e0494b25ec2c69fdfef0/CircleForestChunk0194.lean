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
def state_67951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 10)))
def hex_67951 : String := "43444008084042080942084144400808090808"
theorem cover_67951 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67951 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_67951)
  decide +kernel
#print axioms cover_67951

def state_67970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 10)))
def hex_67970 : String := "434440050640414209050541424440430608060944064005064209054440080840414208430508084142084344400506090808"
theorem cover_67970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67970 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_67970)
  decide +kernel
#print axioms cover_67970

def state_68021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 9) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
def hex_68021 : String := "42084344050508"
theorem cover_68021 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68021 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_68021)
  decide +kernel
#print axioms cover_68021

def state_68028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
def hex_68028 : String := "41424344080A0843440640414244060A06060644084041420843440640414208060606080841420806084208430608"
theorem cover_68028 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68028 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 47) (hex := hex_68028)
  decide +kernel
#print axioms cover_68028

def state_68076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 11)))
def hex_68076 : String := "41424443094006420609094443094009414209090909420909"
theorem cover_68076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68076 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_68076)
  decide +kernel
#print axioms cover_68076

def state_68103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 11)))
def hex_68103 : String := "44430A42054008054309420509"
theorem cover_68103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68103 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_68103)
  decide +kernel
#print axioms cover_68103

def state_68116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 11)))
def hex_68116 : String := "4443404142440A07070941070A40414244430908094443074009080742080941420544430640080507420844080943074009410509"
theorem cover_68116 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68116 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_68116)
  decide +kernel
#print axioms cover_68116

def state_68169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 9) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 11)))
def hex_68169 : String := "424408094443090809"
theorem cover_68169 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68169 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_68169)
  decide +kernel
#print axioms cover_68169
end Mub6.Numerical.CircleFullPrototype.Forest
