import ReviewRoot
namespace RunnerReview
theorem expected : ReviewDep.marker = 1 := ReviewRoot.marker_one
#reduce ReviewDep.marker
#print axioms RunnerReview.expected
end RunnerReview
