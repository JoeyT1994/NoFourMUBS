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
def state_1525918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 117) else (if j.val < 3 then 89 else (if j.val < 4 then 66 else 88)))
def hex_1525918 : String := "40420544050542444143400506050541430505054441434042054408050640054244050544070543060541434005420606400542050505"
theorem cover_1525918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525918 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1525918)
  decide +kernel
#print axioms cover_1525918

def state_1525973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 117) else (if j.val < 3 then 89 else (if j.val < 4 then 67 else 88)))
def hex_1525973 : String := "40054205444143400507050505"
theorem cover_1525973 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525973 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1525973)
  decide +kernel
#print axioms cover_1525973

def state_1525986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 89 else (if j.val < 4 then 33 else 89)))
def hex_1525986 : String := "41434042084441080508424441094340050905084441094340420507074005090740084209094340054205444143400542050505050505"
theorem cover_1525986 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525986 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1525986)
  decide +kernel
#print axioms cover_1525986

def state_1526042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 58) else (if j.val < 3 then 88 else (if j.val < 4 then 33 else 44)))
def hex_1526042 : String := "44410A0A41090A"
theorem cover_1526042 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526042 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_1526042)
  decide +kernel
#print axioms cover_1526042

def state_1526051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 116) else (if j.val < 3 then 89 else (if j.val < 4 then 33 else 88)))
def hex_1526051 : String := "43404244410908094441080841094340420944060606094209094042090909"
theorem cover_1526051 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526051 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_1526051)
  decide +kernel
#print axioms cover_1526051

def state_1526082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 117) else (if j.val < 3 then 89 else (if j.val < 4 then 33 else 88)))
def hex_1526082 : String := "43404244410806410A064441080641430640420606060606404244070A4441434042070808094306054109054209440809"
theorem cover_1526082 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526082 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_1526082)
  decide +kernel
#print axioms cover_1526082

def state_1526131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 58) else (if j.val < 3 then 89 else (if j.val < 4 then 33 else 89)))
def hex_1526131 : String := "41434042090909094340424441090541090544414306090641070506404209444109050509"
theorem cover_1526131 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526131 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1526131)
  decide +kernel
#print axioms cover_1526131
end Mub6.Numerical.CircleFullD0.Forest
