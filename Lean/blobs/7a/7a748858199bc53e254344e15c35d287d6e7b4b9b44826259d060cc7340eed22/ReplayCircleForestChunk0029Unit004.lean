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
def state_183724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 7)))
def hex_183724 : String := "4240434442410A05050A444207050A4344424140430544050A43054405420905050542410A0941400505054442414044070744430807434208414007440543050705070741400505054241400A4344420941400709070944070A074140430A074344424140050505050A4442070542070705400505"
theorem cover_183724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183724 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 117) (hex := hex_183724)
  decide +kernel
#print axioms cover_183724

def state_183841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
def hex_183841 : String := "434441430644060606414305400805430505444144054009054405054140420505424305090505"
theorem cover_183841 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183841 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 39) (hex := hex_183841)
  decide +kernel
#print axioms cover_183841

def state_183880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_183880 : String := "42434442430644060606424305400A054305054442440540070544050542404105054143054405070505434443064406060A44094041050A05"
theorem cover_183880 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183880 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_183880)
  decide +kernel
#print axioms cover_183880
end Mub6.Numerical.CircleFullPrototype.Forest
