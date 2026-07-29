import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingsDifferentialTopologyCanonicalLaneLean

structure SmoothManifold (M : Type u) where
  carrier : M → Prop
  topology : TopologicalSpace M
  smoothAtlas : Set (M → ℝⁿ)

default := by
  exact carrier, topology, smoothAtlas

default := by
  exact { carrier := λ _ => True, topology := by infer_instance, smoothAtlas := ∅ }

default := by
  exact { carrier := λ _ => True, topology := by infer_instance, smoothAtlas := ∅ }

structure Embedding (M N : Type u) [SmoothManifold M] [SmoothManifold N] where
  f : M → N
  smooth : Prop
  injective : Prop
  proper : Prop
  immersion : Prop
  properEmbedding : Prop

default := by
  exact { f := λ x => x, smooth := True, injective := True, proper := True, immersion := True, properEmbedding := True }

default := by
  exact { f := λ x => x, smooth := True, injective := True, proper := True, immersion := True, properEmbedding := True }

structure Immersion (M N : Type u) [SmoothManifold M] [SmoothManifold N] where
  f : M → N
  smooth : Prop
  rankCondition : Prop
  injectiveImmmersion : Prop

default := by
  exact { f := λ x => x, smooth := True, rankCondition := True, injectiveImmmersion := True }

default := by
  exact { f := λ x => x, smooth := True, rankCondition := True, injectiveImmmersion := True }

structure RegularHomotopy (M N : Type u) [SmoothManifold M] [SmoothManifold N] where
  h : M × [0,1] → N
  smooth : Prop
  levelwiseImmmersion : M → ℝ → Prop

default := by
  exact { h := λ (x,t) => x, smooth := True, levelwiseImmmersion := λ m t => True }

default := by
  exact { h := λ (x,t) => x, smooth := True, levelwiseImmmersion := λ m t => True }

end EmbeddingsDifferentialTopologyCanonicalLaneLean
end HautevilleHouse
