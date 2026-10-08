import FourierPilotCircleTree000311
import FourierPilotCircleTree000326
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000310
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![12, 9, 8, 8, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000311.state FourierPilotCircleTree000326.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000311.covered FourierPilotCircleTree000326.covered
#print axioms covered
end FourierPilotCircleTree000310
