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
def state_50259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 55)))
def hex_50259 : String := "4243074041070841074442054307400805074307400A4107449107"
theorem cover_50259 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50259 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_50259)
  decide +kernel
#print axioms cover_50259

def state_50287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 54)))
def hex_50287 : String := "4243404144050505054041440642054341400605050806414405050543400A4144090905404191440608419144420509420509"
theorem cover_50287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50287 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_50287)
  decide +kernel
#print axioms cover_50287

def state_50338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 55)))
def hex_50338 : String := "424305400805430A40084144910808"
theorem cover_50338 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50338 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_50338)
  decide +kernel
#print axioms cover_50338

def state_50354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 38) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 27)))
def hex_50354 : String := "4442434107054140440807084044050505434107404408070541409108409144084205084207430741074044910707"
theorem cover_50354 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50354 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_50354)
  decide +kernel
#print axioms cover_50354

def state_50401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 27)))
def hex_50401 : String := "444205430540419105054205430540414405050505"
theorem cover_50401 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50401 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_50401)
  decide +kernel
#print axioms cover_50401

def state_50423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 13)))
def hex_50423 : String := "44400A080A"
theorem cover_50423 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50423 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_50423)
  decide +kernel
#print axioms cover_50423

def state_50430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 26)))
def hex_50430 : String := "41424344080A050542434441400A08090A4441400542430805050741400542430A44050505400A424309070909"
theorem cover_50430 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50430 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_50430)
  decide +kernel
#print axioms cover_50430

def state_50475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 26)))
def hex_50475 : String := "41424308440808084243094440410809084041424309440840410542430907050809090909"
theorem cover_50475 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50475 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 37) (hex := hex_50475)
  decide +kernel
#print axioms cover_50475

def state_50513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 27)))
def hex_50513 : String := "0A"
theorem cover_50513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50513 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_50513)
  decide +kernel
#print axioms cover_50513
end Mub6.Numerical.CircleFullPrototype.Forest
