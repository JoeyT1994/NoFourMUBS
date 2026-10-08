import FourierPilotCircleTree000916
import FourierPilotCircleTree000917
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000915
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![12, 7, 4, 7, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000916.state FourierPilotCircleTree000917.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000916.covered FourierPilotCircleTree000917.covered
#print axioms covered
end FourierPilotCircleTree000915
