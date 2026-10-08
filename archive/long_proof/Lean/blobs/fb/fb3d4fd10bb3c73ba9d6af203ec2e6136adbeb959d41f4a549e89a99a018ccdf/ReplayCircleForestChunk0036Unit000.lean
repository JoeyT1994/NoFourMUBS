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
def state_291139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 23) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 9)))
def hex_291139 : String := "42404344414240434408074442060906434442414007070741400707070744424140434442414006430744A906064140094307090707444241090509094344424143074044A907050541430740070707074442054140094344A9074405054043070505424140060505094006430705414009434442414307400707074106070744424140094344060709400943070909094043070943074442070707424109060940430809434441050707444142400943440607090542400943070909094240064307444142050705064008430744070741090744414240094344424140094344420541090509050541090909440909094240064344050605400943440A09090943444142434044424107070707444207070740444241434044424143070505414307400706070744420506074044420541434044050505050542054108050505414340444241060706070640444241064307050642414307080741060744064241060506430740444205070705424143074007070741430740070707444241434044050505050541064307054241070507434044410607074406074044410642430740440707060641424307090707440641060742430740440507054307400707414243070707074441424043444205414043444241060506094408084344060808054241080541094009054442054108054205094344420541060542054108050540434441424009060642400A4344064106050A0609440A094344064106424307050644060842054043444142050A05410907440A0943444142050605410705054142444009080909424405064440094307050740434441424005430509054208050909434441064243074007070641420705074441424009060642400A434406070A0A09"
theorem cover_291139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291139 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 20) (count := 647) (hex := hex_291139)
  decide +kernel
#print axioms cover_291139

def state_291786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 4)))
def hex_291786 : String := "444142400A080A42400A43440A410A050A0A41424009440808094240444341090909094443414205400908420540090541080543410909084009440A09"
theorem cover_291786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291786 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_291786)
  decide +kernel
#print axioms cover_291786

def state_291847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 4)))
def hex_291847 : String := "43444106424340440641064205060640440641060506064142434406404241080A41064307080644080806424344404142434406074406404205070606424307054307440607410609404142070707074440414205064205434405050541060540414208440808420544430705070843440640414207060706440640414244060906424443074007060707064441064240434405410505050506414208084244404341080505050844404341060A080640434109090808"
theorem cover_291847 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291847 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 183) (hex := hex_291847)
  decide +kernel
#print axioms cover_291847

def state_292030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 4)))
def hex_292030 : String := "40434406410542404305094344050544060905440A41090943064406410642440640090606"
theorem cover_292030 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292030 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_292030)
  decide +kernel
#print axioms cover_292030

def state_292067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
def hex_292067 : String := "414244400943420841084406080809444009430641060809424440434109424440064307090609094341424443400A0708084443400906090942444307404108070707444307400907074108420809094440094341424406070542070741090909"
theorem cover_292067 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292067 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 97) (hex := hex_292067)
  decide +kernel
#print axioms cover_292067

def state_292164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
def hex_292164 : String := "43444105430506054406414405054440054243054105090505"
theorem cover_292164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292164 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_292164)
  decide +kernel
#print axioms cover_292164

def state_292189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_292189 : String := "4041424344400942430505074042434144090809054341440909090942054307050943440740434142440740080744070807094307410505440909424344094009410505094307094142434407420807440942400908400941430509054307440740050742434441050505094344050705"
theorem cover_292189 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292189 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 113) (hex := hex_292189)
  decide +kernel
#print axioms cover_292189


end Mub6.Numerical.CircleFullPrototype.Forest
