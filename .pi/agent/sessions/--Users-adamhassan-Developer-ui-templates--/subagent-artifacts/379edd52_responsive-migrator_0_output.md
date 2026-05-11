Implemented responsive fixes and verified with Bun build.

Changed files:
- `src/app/globals.css` — added shared responsive sizing/spacing custom properties.
- `src/components/ImpactFeatures.module.css` — fixed tablet/mobile stacking, removed fixed grid height at responsive widths.
- `src/components/FeatureShowcase.module.css` — improved carousel/card usability, touch targets, compact mobile visuals.
- `src/components/HowItWorks.module.css` — improved tablet/mobile step stacking and phone mockup sizing.
- `src/components/BlogArticles.module.css` — fixed single-column layout, visual scaling, mobile card spacing.
- `src/components/Footer.module.css` — prevented footer overflow and improved mobile stacking/touch targets.

Verification:
- `bun run build` passes successfully.