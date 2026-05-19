local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('locationtech', 'locationtech') {
  settings+: {
    billing_email: "webmaster@eclipse-foundation.org",
    blog: "http://locationtech.org",
    description: "",
    email: "info@locationtech.org",
    location: "Global",
    members_can_change_project_visibility: false,
    members_can_change_repo_visibility: false,
    members_can_delete_repositories: false,
    name: "LocationTech",
    packages_containers_internal: false,
    packages_containers_public: false,
    web_commit_signoff_required: false,
    workflows+: {
      default_workflow_permissions: "write",
    },
  },
  _repositories+:: [
    orgs.newRepo('geoff') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "Geoff project at LocationTech",
      has_issues: false,
      has_wiki: false,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      webhooks: [
        orgs.newRepoWebhook('https://notify.travis-ci.org') {
          events+: [
            "create",
            "delete",
            "issue_comment",
            "member",
            "public",
            "pull_request",
            "push",
            "repository"
          ],
        },
      ],
    },
    orgs.newRepo('geogig') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "GeoGig project",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      webhooks: [
        orgs.newRepoWebhook('https://notify.travis-ci.org') {
          events+: [
            "create",
            "delete",
            "issue_comment",
            "member",
            "public",
            "pull_request",
            "push",
            "repository"
          ],
        },
      ],
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('geomesa') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "GeoMesa is a suite of tools for working with big geo-spatial data in a distributed fashion.",
      has_issues: false,
      has_wiki: false,
      homepage: "https://www.geomesa.org/",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      webhooks: [
        orgs.newRepoWebhook('https://geomesa.atlassian.net/rest/bitbucket/1.0/repository/2/sync') {
          events+: [
            "push"
          ],
        },
        orgs.newRepoWebhook('https://notify.travis-ci.org') {
          events+: [
            "create",
            "delete",
            "issue_comment",
            "member",
            "public",
            "pull_request",
            "push",
            "repository"
          ],
        },
      ],
      secrets: [
        orgs.newRepoSecret('REPO_TOKEN_PASSWORD') {
          value: "********",
        },
        orgs.newRepoSecret('REPO_TOKEN_USERNAME') {
          value: "********",
        },
      ],
    },
    orgs.newRepo('geotrellis') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "GeoTrellis is a geographic data processing engine for high performance applications.",
      homepage: "http://geotrellis.io",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      webhooks: [
        orgs.newRepoWebhook('https://hooks.waffle.io/api/projects/58208c67496fb89e00c7b496/sources/58208c67496fb89e00c7b497/receive') {
          content_type: "json",
          events+: [
            "*"
          ],
          secret: "********",
        },
        orgs.newRepoWebhook('https://hooks.waffle.io/api/projects/58250be7a50b306800caa903/sources/5825c5983ba689c200b13b6d/receive') {
          content_type: "json",
          events+: [
            "*"
          ],
          secret: "********",
        },
        orgs.newRepoWebhook('https://notify.travis-ci.org') {
          events+: [
            "create",
            "delete",
            "issue_comment",
            "member",
            "public",
            "pull_request",
            "push",
            "repository"
          ],
        },
        orgs.newRepoWebhook('https://circleci.com/hooks/github') {
          events+: [
            "commit_comment",
            "create",
            "delete",
            "fork",
            "gollum",
            "issue_comment",
            "issues",
            "member",
            "public",
            "pull_request",
            "pull_request_review_comment",
            "push",
            "release",
            "status",
            "team_add",
            "watch"
          ],
          secret: "********",
        },
      ],
      secrets: [
        orgs.newRepoSecret('PGP_PASSPHRASE') {
          value: "********",
        },
        orgs.newRepoSecret('PGP_SECRET') {
          value: "********",
        },
        orgs.newRepoSecret('SO_PW') {
          value: "********",
        },
        orgs.newRepoSecret('SO_UN') {
          value: "********",
        },
        orgs.newRepoSecret('TO_PW') {
          value: "********",
        },
        orgs.newRepoSecret('TO_PW_C') {
          value: "********",
        },
        orgs.newRepoSecret('TO_UN') {
          value: "********",
        },
        orgs.newRepoSecret('TO_UN_C') {
          value: "********",
        },
      ],
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          required_approving_review_count: null,
          requires_pull_request: false,
          requires_status_checks: false,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('geowave') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "GeoWave provides geospatial and temporal indexing on top of Accumulo, HBase, BigTable, Cassandra, Kudu, Redis, RocksDB, and DynamoDB.",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_projects: false,
      homepage: "",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      topics+: [
        "accumulo",
        "cassandra",
        "dynamodb",
        "geoserver",
        "geospatial-data",
        "geowave",
        "hbase",
        "java",
        "kudu",
        "redis",
        "rocksdb",
        "spatiotemporal"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      webhooks: [
        orgs.newRepoWebhook('http://54.146.51.44:8080/github-webhook/') {
          content_type: "json",
          events+: [
            "push"
          ],
        },
        orgs.newRepoWebhook('https://notify.travis-ci.org') {
          events+: [
            "create",
            "delete",
            "issue_comment",
            "member",
            "public",
            "pull_request",
            "push",
            "repository"
          ],
        },
      ],
      secrets: [
        orgs.newRepoSecret('CACHE_ID') {
          value: "********",
        },
        orgs.newRepoSecret('CHANGELOG_TOKEN') {
          value: "********",
        },
        orgs.newRepoSecret('GPG_OWNERTRUST') {
          value: "********",
        },
        orgs.newRepoSecret('GPG_PASSPHRASE') {
          value: "********",
        },
        orgs.newRepoSecret('GPG_SECRET_KEYS') {
          value: "********",
        },
        orgs.newRepoSecret('PYPI_CREDENTIALS') {
          value: "********",
        },
        orgs.newRepoSecret('SONATYPE_PASSWORD') {
          value: "********",
        },
        orgs.newRepoSecret('SONATYPE_USERNAME') {
          value: "********",
        },
      ],
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          required_approving_review_count: null,
          requires_pull_request: false,
          requires_status_checks: false,
          requires_strict_status_checks: true,
        },
      ],
      environments: [
        orgs.newEnvironment('github-pages'),
      ],
    },
    orgs.newRepo('jts') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "The JTS Topology Suite is a Java library for creating and manipulating vector geometry.",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_discussions: true,
      has_projects: false,
      has_wiki: false,
      homepage: "",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      squash_merge_commit_message: "BLANK",
      squash_merge_commit_title: "PR_TITLE",
      topics+: [
        "computational-geometry",
        "geometric-algorithms",
        "geometry",
        "geometry-algorithms",
        "geometry-library",
        "gis",
        "java",
        "java-library",
        "jts",
        "jts-topology-suite",
        "ogc",
        "ogc-wkt",
        "triangulation",
        "voronoi"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      webhooks: [
        orgs.newRepoWebhook('https://notify.travis-ci.org') {
          events+: [
            "create",
            "delete",
            "issue_comment",
            "member",
            "public",
            "pull_request",
            "push",
            "repository"
          ],
        },
      ],
      environments: [
        orgs.newEnvironment('github-pages'),
      ],
    },
    orgs.newRepo('proj4j') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Java port of the Proj.4 library for coordinate reprojection",
      homepage: "",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      topics+: [
        "geodesy",
        "gis",
        "java",
        "proj4j",
        "projection"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('rasterframes') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "develop",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Geospatial Raster support for Spark DataFrames",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      homepage: "http://rasterframes.io",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      topics+: [
        "earth-observation",
        "geotrellis",
        "image-processing",
        "machine-learning",
        "scala",
        "spark",
        "spark-ml",
        "sparksql"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      webhooks: [
        orgs.newRepoWebhook('https://notify.travis-ci.org') {
          events+: [
            "create",
            "delete",
            "issue_comment",
            "member",
            "public",
            "pull_request",
            "push",
            "repository"
          ],
        },
        orgs.newRepoWebhook('https://webhooks.gitter.im/e/5d17b0ecb9eba2d5aee4') {
          content_type: "json",
          events+: [
            "*"
          ],
        },
        orgs.newRepoWebhook('https://circleci.com/hooks/github') {
          events+: [
            "commit_comment",
            "create",
            "delete",
            "fork",
            "issue_comment",
            "issues",
            "member",
            "pull_request",
            "pull_request_review_comment",
            "push",
            "release",
            "status"
          ],
          secret: "********",
        },
      ],
      environments: [
        orgs.newEnvironment('github-pages'),
      ],
    },
    orgs.newRepo('sfcurve') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "LocationTech SFCurve is a Scala library for the creation, transformation, and querying of space-filling curves ",
      homepage: "https://www.locationtech.org/projects/technology.sfcurve",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      webhooks: [
        orgs.newRepoWebhook('https://notify.travis-ci.org') {
          events+: [
            "create",
            "delete",
            "issue_comment",
            "member",
            "public",
            "pull_request",
            "push",
            "repository"
          ],
        },
      ],
    },
    orgs.newRepo('spatial4j') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "LocationTech Spatial4j: A Geospatial Library for Java",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_wiki: false,
      homepage: "https://projects.eclipse.org/projects/locationtech.spatial4j",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      webhooks: [
        orgs.newRepoWebhook('https://notify.travis-ci.org') {
          events+: [
            "create",
            "delete",
            "issue_comment",
            "member",
            "public",
            "pull_request",
            "push",
            "repository"
          ],
        },
      ],
      environments: [
        orgs.newEnvironment('github-pages'),
      ],
    },
    orgs.newRepo('udig-platform') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "uDig parent project containing all core components.  More plugins can be found in community repos: http://github.com/uDig-Community",
      homepage: "http://udig.refractions.net",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      webhooks: [
        orgs.newRepoWebhook('https://notify.travis-ci.org') {
          events+: [
            "create",
            "delete",
            "issue_comment",
            "member",
            "public",
            "pull_request",
            "push",
            "repository"
          ],
        },
      ],
    },
  ],
}
