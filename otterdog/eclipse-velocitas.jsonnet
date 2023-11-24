local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-velocitas') {
  settings+: {
    blog: "https://eclipse.dev/velocitas/",
    dependabot_security_updates_enabled_for_new_repositories: false,
    description: "Toolchain for creating containerized in-vehicle applications",
    name: "Eclipse Velocitas",
    packages_containers_internal: false,
    readers_can_create_discussions: true,
    two_factor_requirement: false,
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
      default_workflow_permissions: "write",
    },
  },
  secrets+: [
    orgs.newOrgSecret('GITLAB_API_TOKEN') {
      value: "pass:bots/automotive.velocitas/gitlab.eclipse.org/api-token",
    },
    orgs.newOrgSecret('VELOCITAS_PROJECT_TOKEN') {
      value: "pass:bots/automotive.velocitas/github.com/project-token",
    },
  ],
  _repositories+:: [
    orgs.newRepo('.github') {
      allow_update_branch: false,
      delete_branch_on_merge: true,
      description: ".github",
      has_wiki: false,
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('cli') {
      allow_update_branch: false,
      delete_branch_on_merge: true,
      description: "Velocitas CLI",
      has_wiki: false,
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('devcontainer-base-images') {
      allow_update_branch: false,
      delete_branch_on_merge: true,
      description: "devcontainer base images",
      has_wiki: false,
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('devenv-devcontainer-setup') {
      allow_update_branch: false,
      delete_branch_on_merge: true,
      description: "devenv-devcontainer-setup",
      has_wiki: false,
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('devenv-github-integration') {
      allow_update_branch: false,
      archived: true,
      delete_branch_on_merge: true,
      description: "devenv-github-integration",
      has_wiki: false,
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('devenv-github-templates') {
      allow_update_branch: false,
      delete_branch_on_merge: true,
      description: "devenv-github-templates",
      has_wiki: false,
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('devenv-github-workflows') {
      allow_update_branch: false,
      delete_branch_on_merge: true,
      description: "devenv-github-workflows",
      has_wiki: false,
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('devenv-runtime-k3d') {
      allow_update_branch: false,
      archived: true,
      delete_branch_on_merge: true,
      description: "devenv-runtime-k3d",
      has_wiki: false,
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('devenv-runtime-local') {
      allow_update_branch: false,
      archived: true,
      delete_branch_on_merge: true,
      description: "devenv-runtime-local",
      has_wiki: false,
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('devenv-runtimes') {
      allow_update_branch: false,
      delete_branch_on_merge: true,
      description: "devenv-runtimes",
      has_wiki: false,
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('license-check') {
      allow_update_branch: false,
      delete_branch_on_merge: true,
      description: "license-check",
      has_wiki: false,
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('release-documentation-action') {
      allow_update_branch: false,
      delete_branch_on_merge: true,
      description: "release-documentation-action",
      has_wiki: false,
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('vehicle-app-cpp-sdk') {
      allow_update_branch: false,
      delete_branch_on_merge: true,
      description: "vehicle-app-cpp-sdk",
      has_wiki: false,
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('vehicle-app-cpp-template') {
      allow_update_branch: false,
      delete_branch_on_merge: true,
      description: "vehicle-app-cpp-template",
      is_template: true,
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('vehicle-app-python-sdk') {
      allow_update_branch: false,
      delete_branch_on_merge: true,
      description: "vehicle-app-python-sdk",
      has_wiki: false,
      is_template: true,
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('vehicle-app-python-template') {
      allow_update_branch: false,
      delete_branch_on_merge: true,
      description: "vehicle-app-python-template",
      has_wiki: false,
      is_template: true,
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('vehicle-app-template') {
      allow_update_branch: false,
      delete_branch_on_merge: true,
      description: "vehicle-app-template",
      has_wiki: false,
      is_template: true,
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('vehicle-model-cpp') {
      allow_update_branch: false,
      delete_branch_on_merge: true,
      description: "vehicle-model-cpp",
      has_wiki: false,
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('vehicle-model-generator') {
      allow_update_branch: false,
      delete_branch_on_merge: true,
      description: "vehicle-model-generator",
      has_wiki: false,
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('vehicle-model-python') {
      allow_update_branch: false,
      delete_branch_on_merge: true,
      description: "vehicle-model-python",
      has_wiki: false,
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('velocitas-docs') {
      allow_update_branch: false,
      delete_branch_on_merge: true,
      description: "Documentation artifacts of Velocitas",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "docs",
      gh_pages_source_path: "/",
      has_discussions: true,
      has_wiki: true,
      homepage: "https://eclipse.dev/velocitas",
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "docs"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('velocitas-lib') {
      allow_update_branch: false,
      delete_branch_on_merge: true,
      description: "A Python-based velocitas module which enables development of Velocitas CLI packages.",
      has_wiki: false,
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('velocitas-project-generator-npm') {
      allow_update_branch: false,
      delete_branch_on_merge: true,
      description: "velocitas-project-generator-npm",
      has_wiki: false,
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
  ],
}
