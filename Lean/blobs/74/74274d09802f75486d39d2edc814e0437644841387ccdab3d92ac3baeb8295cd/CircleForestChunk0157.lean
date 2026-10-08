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
def state_975174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 43) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 57)))
def hex_975174 : String := "4240410543050541050540414306444205060543444240060A060644424005054006410A430A4442054006410643060805050A"
theorem cover_975174 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975174 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 51) (hex := hex_975174)
  decide +kernel
#print axioms cover_975174

def state_975226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 43) else (if j.val < 3 then 30 else (if j.val < 4 then 43 else 56)))
def hex_975226 : String := "424041084344080505074041084308084107430807"
theorem cover_975226 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975226 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_975226)
  decide +kernel
#print axioms cover_975226

def state_975247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 43) else (if j.val < 3 then 30 else (if j.val < 4 then 43 else 57)))
def hex_975247 : String := "42054041054344420540410543440805054105434442050805050505410543444205404105434442050805054105430A050505"
theorem cover_975247 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975247 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 51) (hex := hex_975247)
  decide +kernel
#print axioms cover_975247

def state_975299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 21) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 28)))
def hex_975299 : String := "414306440806434442400641064306440606060644424041080A410843080840064106430608424006410643060906"
theorem cover_975299 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975299 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_975299)
  decide +kernel
#print axioms cover_975299

def state_975347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 42) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 28)))
def hex_975347 : String := "43444240060A0606440842404306080A06"
theorem cover_975347 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975347 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_975347)
  decide +kernel
#print axioms cover_975347

def state_975365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 43) else (if j.val < 3 then 31 else (if j.val < 4 then 42 else 28)))
def hex_975365 : String := "444240414306084344050644054240064108430608064143090843094405424041080909054006054240410643064406060A06"
theorem cover_975365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975365 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_975365)
  decide +kernel
#print axioms cover_975365

def state_975417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 43) else (if j.val < 3 then 31 else (if j.val < 4 then 43 else 56)))
def hex_975417 : String := "42404108080808"
theorem cover_975417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975417 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_975417)
  decide +kernel
#print axioms cover_975417

def state_975427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 86) else (if j.val < 3 then 62 else (if j.val < 4 then 43 else 57)))
def hex_975427 : String := "43440606440805"
theorem cover_975427 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975427 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_975427)
  decide +kernel
#print axioms cover_975427
end Mub6.Numerical.CircleFullD0.Forest
