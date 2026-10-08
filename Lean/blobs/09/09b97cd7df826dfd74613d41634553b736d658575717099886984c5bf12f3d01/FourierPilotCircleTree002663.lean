import FourierPilotCircleTree002664
import FourierPilotCircleTree002665
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002663
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![6, 7, 4, 4, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002664.state FourierPilotCircleTree002665.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002664.covered FourierPilotCircleTree002665.covered
#print axioms covered
end FourierPilotCircleTree002663
