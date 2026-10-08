import Lean
#eval IO.sleep 300
namespace RunnerReview
theorem actual : True := True.intro
#print axioms RunnerReview.actual
end RunnerReview
