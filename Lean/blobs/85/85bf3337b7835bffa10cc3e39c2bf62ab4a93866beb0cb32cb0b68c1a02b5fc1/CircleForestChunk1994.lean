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
def state_2559164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 95) else (if j.val < 3 then 114 else (if j.val < 4 then 59 else 97)))
def hex_2559164 : String := "43414440420808420808404243410A050843050542434107440806084341074407050844400808400542080808"
theorem cover_2559164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559164 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_2559164)
  decide +kernel
#print axioms cover_2559164

def state_2559209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 95) else (if j.val < 3 then 115 else (if j.val < 4 then 59 else 97)))
def hex_2559209 : String := "43414440420806420808404243050505424307080944400808400542080508"
theorem cover_2559209 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559209 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_2559209)
  decide +kernel
#print axioms cover_2559209

def state_2559240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 95) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 97)))
def hex_2559240 : String := "424341444042080807404207070744084042060806084341444042070707074408404208070708"
theorem cover_2559240 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559240 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 39) (hex := hex_2559240)
  decide +kernel
#print axioms cover_2559240

def state_2559279 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
def hex_2559279 : String := "424341440506064144054042050505440A06434144050744404243050543050505404206070641440507444042080805404243070843070707"
theorem cover_2559279 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559279 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_2559279)
  decide +kernel
#print axioms cover_2559279

def state_2559339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 49)))
def hex_2559339 : String := "41444042064306410744400A0606060606"
theorem cover_2559339 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559339 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_2559339)
  decide +kernel
#print axioms cover_2559339

def state_2559360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 112 else (if j.val < 4 then 59 else 98)))
def hex_2559360 : String := "434144090606414409400A064409400906"
theorem cover_2559360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559360 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_2559360)
  decide +kernel
#print axioms cover_2559360
end Mub6.Numerical.CircleFullD0.Forest
