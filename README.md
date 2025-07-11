# repoone

The very first repo with automated Dependabot integration.

## 🤖 Automated Dependency Management

This repository is configured with GitHub Actions that automatically merge Dependabot pull requests when tests pass.

### What gets auto-merged:
- ✅ **Patch updates** (1.0.1 → 1.0.2)
- ✅ **Minor updates** (1.0.0 → 1.1.0)  
- ✅ **Security updates** (any version)
- ✅ **GitHub Actions updates**

### What requires manual review:
- ❌ **Major updates** (1.0.0 → 2.0.0)

## 🚀 Getting Started

1. **Enable branch protection** in repository settings
2. **Allow auto-merge** in repository settings
3. **Customize workflows** in `.github/workflows/` for your project type

## 📁 Project Structure

```
.github/
├── workflows/
│   ├── ci.yml                    # Continuous Integration
│   └── dependabot-auto-merge.yml # Auto-merge Dependabot PRs
├── dependabot.yml               # Dependabot configuration
└── README.md                    # Workflow documentation
```

## 🔧 Configuration

See [.github/README.md](.github/README.md) for detailed setup instructions and customization options.

## 🧪 Testing

Run tests locally:
```bash
npm test
npm run lint
```

The CI workflow runs automatically on every push and pull request.
