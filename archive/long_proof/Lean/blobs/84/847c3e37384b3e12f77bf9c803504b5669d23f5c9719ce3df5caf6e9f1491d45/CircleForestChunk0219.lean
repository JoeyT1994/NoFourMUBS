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
def state_990000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 43)))
def hex_990000 : String := "41424043440A0A44414240430A0A0A0A094142050642090A430A0A40430A440A0A0642400909400809"
theorem cover_990000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990000 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_990000)
  decide +kernel
#print axioms cover_990000

def state_990042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 42)))
def hex_990042 : String := "41424043440741420740430A0707070707404344410A05410A42070544074142404344070A070740430A0A0A07430A0707"
theorem cover_990042 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990042 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_990042)
  decide +kernel
#print axioms cover_990042

def state_990095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 43)))
def hex_990095 : String := "44414240434441050505050540430A440A41050A0A420740430907074142054043050505420540434409094409410505430909"
theorem cover_990095 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990095 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_990095)
  decide +kernel
#print axioms cover_990095

def state_990146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 103 else 43)))
def hex_990146 : String := "444142054043444142050A074105420540430A050544070543440705070741054205404344410507054407054344070505"
theorem cover_990146 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990146 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_990146)
  decide +kernel
#print axioms cover_990146

def state_990195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 43)))
def hex_990195 : String := "4344410A074105094407410505"
theorem cover_990195 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990195 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 13) (hex := hex_990195)
  decide +kernel
#print axioms cover_990195

def state_990210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 102 else 43)))
def hex_990210 : String := "44410A4240430844070A0A0A41064240430A44410A08410A090A0A"
theorem cover_990210 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990210 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_990210)
  decide +kernel
#print axioms cover_990210
end Mub6.Numerical.CircleFullD0.Forest
