# Deployment blocker: CI deploy env fix

Summary:
This commit sets DEPLOY_ENV=production in the CI deploy workflow. The production deployment job was previously running with an unset environment variable and defaulting to staging, which blocked the intended production rollout.

Files changed:
- .github/workflows/deploy.yml: sets DEPLOY_ENV via $GITHUB_ENV before the deploy step.

Why this resolves the DEPLOYMENT_BLOCKER (for Maya, Release Engineer):
Setting DEPLOY_ENV explicitly ensures deploy scripts pick the correct target and prevents the pipeline from deploying to the wrong environment. After this PR is merged we expect the release pipeline to progress past the prior blocker.
