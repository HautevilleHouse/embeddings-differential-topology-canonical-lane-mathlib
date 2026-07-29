import HautevilleHouse.EmbeddingsDifferentialTopologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingsDifferentialTopologyCanonicalLaneLean

structure ImmersionTheoryPackage (M N : Type u) [TopologicalSpace M] [TopologicalSpace N] where
  immersionMap : M → N
  rankCondition : Prop
  regularValue : Prop
  localNormalForm : Prop

structure ImmersionTheoryEvidence {M N : Type u} [TopologicalSpace M] [TopologicalSpace N]
    (P : ImmersionTheoryPackage M N) where
  rankConditionClosed : P.rankCondition
  regularValueClosed : P.regularValue
  localNormalFormClosed : P.localNormalForm

def ImmersionTheoryClosed {M N : Type u} [TopologicalSpace M] [TopologicalSpace N]
    (P : ImmersionTheoryPackage M N) : Prop :=
  P.rankCondition ∧ P.regularValue ∧ P.localNormalForm

theorem immersion_theory_closed_from_evidence {M N : Type u} [TopologicalSpace M] [TopologicalSpace N]
    (P : ImmersionTheoryPackage M N) (E : ImmersionTheoryEvidence P) :
    ImmersionTheoryClosed P := by
  exact And.intro E.rankConditionClosed (And.intro E.regularValueClosed E.localNormalFormClosed)

end EmbeddingsDifferentialTopologyCanonicalLaneLean
end HautevilleHouse