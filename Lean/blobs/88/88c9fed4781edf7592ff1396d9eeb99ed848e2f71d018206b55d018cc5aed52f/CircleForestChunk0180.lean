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
def state_64542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
def hex_64542 : String := "434441440640050544064042064341050806420543050641054005054406414305404205440A05054340420544060505400A05"
theorem cover_64542 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64542 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_64542)
  decide +kernel
#print axioms cover_64542

def state_64594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 3)))
def hex_64594 : String := "444109424440430906090909414205094240430544410542430544090509050509"
theorem cover_64594 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64594 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 33) (hex := hex_64594)
  decide +kernel
#print axioms cover_64594

def state_64627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 3)))
def hex_64627 : String := "44414243090707424344060A070741424340444109090505400A0A43090A4243404441420A09420A430909410542054305090A0A434044090909400709"
theorem cover_64627 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64627 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_64627)
  decide +kernel
#print axioms cover_64627

def state_64689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
def hex_64689 : String := "434444404106080A404142060808084041420743074441420543054406050705070744430A0A4340414206440A43070A0A0A0A"
theorem cover_64689 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64689 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 51) (hex := hex_64689)
  decide +kernel
#print axioms cover_64689

def state_64742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 6)))
def hex_64742 : String := "4244404143440A080A0A0A40414308420808084143080808444041094342440509090541090A404109434208090809"
theorem cover_64742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64742 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_64742)
  decide +kernel
#print axioms cover_64742
end Mub6.Numerical.CircleFullPrototype.Forest
