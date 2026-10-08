import FourierPilotCircleTree004981
import FourierPilotCircleTree004982
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004980
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![6, 6, 6, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004981.state FourierPilotCircleTree004982.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004981.covered FourierPilotCircleTree004982.covered
#print axioms covered
end FourierPilotCircleTree004980
