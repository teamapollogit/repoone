# GitHub Actions Configuration

This repository includes automated workflows for continuous integration and dependency management.

## Workflows

### 1. CI Workflow (`ci.yml`)

Runs tests and linting on every push and pull request to the main branch.

**Features:**
- Supports multiple programming languages (Node.js, Python, Ruby)
- Runs tests and linting in parallel
- Matrix builds for multiple versions
- Currently configured with placeholder tests

**To customize:**
1. Uncomment the sections for your programming language
2. Update the test commands to match your project
3. Configure linting tools as needed

### 2. Dependabot Auto-Merge (`dependabot-auto-merge.yml`)

Automatically merges Dependabot pull requests when tests pass.

**Auto-merge conditions:**
- ✅ **Patch updates** (e.g., 1.0.1 → 1.0.2)
- ✅ **Minor updates** (e.g., 1.0.0 → 1.1.0)
- ✅ **Security updates** (any severity)
- ✅ **GitHub Actions updates**
- ❌ **Major updates** (requires manual review)

**Safety features:**
- Waits for all status checks to pass
- Verifies PR is mergeable
- Adds labels for tracking
- Comments on major updates with review instructions

### 3. Dependabot Configuration (`dependabot.yml`)

Configures automatic dependency updates.

**Supported ecosystems:**
- npm (Node.js)
- pip (Python)
- bundler (Ruby)
- github-actions
- docker

**Schedule:** Weekly updates on Mondays at 9:00 AM

## Setup Instructions

### 1. Enable Branch Protection

To ensure the auto-merge workflow works properly, enable branch protection:

1. Go to Settings → Branches
2. Add a rule for your main branch
3. Enable "Require status checks to pass before merging"
4. Select the CI workflow checks
5. Enable "Require branches to be up to date before merging"

### 2. Configure Repository Settings

1. Go to Settings → General
2. Under "Pull Requests":
   - ✅ Enable "Allow auto-merge"
   - ✅ Enable "Automatically delete head branches"

### 3. Customize for Your Project

1. **Update CI workflow:**
   - Uncomment sections for your programming language
   - Replace placeholder tests with real test commands
   - Configure linting tools

2. **Adjust auto-merge rules:**
   - Modify the conditions in `dependabot-auto-merge.yml`
   - Add or remove package ecosystems in `dependabot.yml`

3. **Set reviewers:**
   - Update the reviewers/assignees in `dependabot.yml`
   - Replace "teamapollogit" with your username/team

## Security Considerations

- The workflow only runs for Dependabot PRs
- Major version updates require manual review
- All status checks must pass before auto-merge
- Uses minimal required permissions

## Troubleshooting

### Auto-merge not working?

1. Check that branch protection is enabled
2. Verify "Allow auto-merge" is enabled in repository settings
3. Ensure all status checks are passing
4. Check the workflow logs for detailed information

### Want to disable auto-merge temporarily?

Add the label `no-auto-merge` to any Dependabot PR to skip auto-merging.

### Need to customize merge strategy?

The workflow uses merge commits by default. Change `--merge` to `--squash` or `--rebase` in the workflow file if needed.

## Monitoring

- Check the Actions tab for workflow runs
- Review auto-merged PRs in the Pull Requests tab
- Monitor dependency updates in the Insights → Dependency graph