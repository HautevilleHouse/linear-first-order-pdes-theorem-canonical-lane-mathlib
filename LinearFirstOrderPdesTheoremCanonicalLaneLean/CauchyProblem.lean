import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFirstOrderPdesTheoremCanonicalLaneLean

structure CauchyProblemPackage where
  noncharacteristicSurface : Prop
  localExistence : Prop
  uniqueness : Prop
  stability : Prop

structure CauchyProblemEvidence (C : CauchyProblemPackage) where
  noncharacteristicSurfaceClosed : C.noncharacteristicSurface
  localExistenceClosed : C.localExistence
  uniquenessClosed : C.uniqueness
  stabilityClosed : C.stability

def CauchyProblemClosed (C : CauchyProblemPackage) : Prop := 
  C.noncharacteristicSurface ∧ C.localExistence ∧ C.uniqueness ∧ C.stability

theorem cauchy_problem_closed_from_evidence (C : CauchyProblemPackage) (E : CauchyProblemEvidence C) : CauchyProblemClosed C := by
  exact And.intro E.noncharacteristicSurfaceClosed (And.intro E.localExistenceClosed (And.intro E.uniquenessClosed E.stabilityClosed))

end HautevilleHouse
end HautevilleHouse.LinearFirstOrderPdesTheoremCanonicalLaneLean