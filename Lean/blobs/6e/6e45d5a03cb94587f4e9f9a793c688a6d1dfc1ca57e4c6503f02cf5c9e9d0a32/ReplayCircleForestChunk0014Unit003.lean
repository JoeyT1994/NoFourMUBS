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
def state_72114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
def hex_72114 : String := "424344400A4142050A05074440430A41424440070A060A074341424405050A0541424443054041420505050507440A430A4007414205050542050A07430A440A40074243070909"
theorem cover_72114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72114 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 71) (hex := hex_72114)
  decide +kernel
#print axioms cover_72114

def state_72185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
def hex_72185 : String := "41424344410840420506050844414308404244410608080606434042084405080540424443054140420505050508440643084106404205050542050608430644064106420806424344050744430540414205440505050543084440070507434406424405070644424305400A05064243440507444009050809"
theorem cover_72185 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72185 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 121) (hex := hex_72185)
  decide +kernel
#print axioms cover_72185

def state_72306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_72306 : String := "4243440540440541420505050544404305414205050505404344054142070705444107050743050743440A4042440541430707050A42050744400A0A4042430A4407070A424305440505430A0A"
theorem cover_72306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72306 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 77) (hex := hex_72306)
  decide +kernel
#print axioms cover_72306

def state_72383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_72383 : String := "4142434405084441430540420505050541080843444142054043050505054142084440430606050642050644414243054006054340440606050642050641424308440608064243054405054306440505424305440505434405054405420505"
theorem cover_72383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72383 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 95) (hex := hex_72383)
  decide +kernel
#print axioms cover_72383

def state_72478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_72478 : String := "4041424308444041430844080843084407080840410543080941430809084344400941084208070844404142430809094243080707410807404109090942434440444142084340444108050808084208434044050805080808084440430808080843444042444143400909400907434044050905400A05410943400909084441074309070942444107050844070940420809420809444042434441070A084407084309074243080707400908414243084441430708074143060909434406064441080841060942084344424405080608440708"
theorem cover_72478 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72478 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 211) (hex := hex_72478)
  decide +kernel
#print axioms cover_72478

def state_72693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
def hex_72693 : String := "4344404143424409400909444009094041090941090909434244090944094009090941434244090944094109090943424443054009050944090942444041090741064305060909404143444240410A060A40414344420A404105430605410A43420644090A09420640060A0A43444206400643414206440906060906440907410A4344424340060909434041420944094340060909420644090641420944090A0940090942074340060A0A0A420740070A0A43444207400743414442074307070707070707414344420A410A434044420943410A05090A0A0A0A0A434442430707434041444205050705054041440907074109050744420709074440094109420A080A"
theorem cover_72693 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72693 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 20) (count := 259) (hex := hex_72693)
  decide +kernel
#print axioms cover_72693

def state_72954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
def hex_72954 : String := "40414243444008410608404143424408404105084143070543440742090808440740084106080808414342440641074340440742090606090642090643424443400806084340414409420943400806084408420908414406420906094008094406434008060808084344064008060642434408400843414244084340080508080808080841424344064106434042440643060606060606064243444306064340414244050506050540414209060806440609430606"
theorem cover_72954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72954 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 18) (count := 181) (hex := hex_72954)
  decide +kernel
#print axioms cover_72954
end Mub6.Numerical.CircleFullPrototype.Forest
