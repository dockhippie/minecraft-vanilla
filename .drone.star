def main(ctx):
  config = {
    'title': 'Minecraft Vanilla',
    'image': ctx.repo.name,
    'arches': [
      'amd64',
      'arm64v8',
    ],
    'versions': [
      {
        'path': 'latest',
        'tag': 'latest',
      },
      {
        'path': 'v1.15.2',
        'tag': '1.15.2',
      },
      {
        'path': 'v1.15.1',
        'tag': '1.15.1',
      },
      {
        'path': 'v1.15',
        'tag': '1.15',
      },
      {
        'path': 'v1.14.4',
        'tag': '1.14.4',
      },
      {
        'path': 'v1.14.3',
        'tag': '1.14.3',
      },
      {
        'path': 'v1.14.2',
        'tag': '1.14.2',
      },
      {
        'path': 'v1.14.1',
        'tag': '1.14.1',
      },
      {
        'path': 'v1.14',
        'tag': '1.14',
      },
      {
        'path': 'v1.13.2',
        'tag': '1.13.2',
      },
      {
        'path': 'v1.13.1',
        'tag': '1.13.1',
      },
      {
        'path': 'v1.13',
        'tag': '1.13',
      },
      {
        'path': 'v1.12.2',
        'tag': '1.12.2',
      },
      {
        'path': 'v1.12.1',
        'tag': '1.12.1',
      },
      {
        'path': 'v1.12',
        'tag': '1.12',
      },
      # {
      #   'path': 'v1.11.2',
      #   'tag': '1.11.2',
      # },
      # {
      #   'path': 'v1.11.1',
      #   'tag': '1.11.1',
      # },
      # {
      #   'path': 'v1.11',
      #   'tag': '1.11',
      # },
      # {
      #   'path': 'v1.10.2',
      #   'tag': '1.10.2',
      # },
      # {
      #   'path': 'v1.10.1',
      #   'tag': '1.10.1',
      # },
      # {
      #   'path': 'v1.10',
      #   'tag': '1.10',
      # },
      # {
      #   'path': 'v1.9.4',
      #   'tag': '1.9.4',
      # },
      # {
      #   'path': 'v1.9.3',
      #   'tag': '1.9.3',
      # },
      # {
      #   'path': 'v1.9.2',
      #   'tag': '1.9.2',
      # },
      # {
      #   'path': 'v1.9.1',
      #   'tag': '1.9.1',
      # },
      # {
      #   'path': 'v1.9',
      #   'tag': '1.9',
      # },
      # {
      #   'path': 'v1.8.9',
      #   'tag': '1.8.9',
      # },
      # {
      #   'path': 'v1.8.8',
      #   'tag': '1.8.8',
      # },
      # {
      #   'path': 'v1.8.7',
      #   'tag': '1.8.7',
      # },
      # {
      #   'path': 'v1.8.6',
      #   'tag': '1.8.6',
      # },
      # {
      #   'path': 'v1.8.5',
      #   'tag': '1.8.5',
      # },
      # {
      #   'path': 'v1.8.4',
      #   'tag': '1.8.4',
      # },
      # {
      #   'path': 'v1.8.3',
      #   'tag': '1.8.3',
      # },
      # {
      #   'path': 'v1.8.2',
      #   'tag': '1.8.2',
      # },
      # {
      #   'path': 'v1.8.1',
      #   'tag': '1.8.1',
      # },
      # {
      #   'path': 'v1.8',
      #   'tag': '1.8',
      # },
      # {
      #   'path': 'v1.7.10',
      #   'tag': '1.7.10',
      # },
    ],
    'trigger': [
      'dockhippie/minecraft-forge@master',
      'dockhippie/minecraft-cauldron@master',
    ],
  }

  builds = docker(config)

  after = [
    readme(config),
    badges(config),
    trigger(config),
  ]

  for b in builds:
    for a in after:
      a['depends_on'].append(b['name'])

  return builds + after

def docker(config):
  result = []

  for version in config['versions']:
    versions = []

    for arch in config['arches']:

      if arch == "amd64":
        agent = "amd64"

      if arch == "arm32v6":
        agent = "arm"

      if arch == "arm32v7":
        agent = "arm"

      if arch == "arm64v8":
        agent = "arm64"

      versions.append({
        'kind': 'pipeline',
        'type': 'docker',
        'name': '%s-%s' % (arch, version['path']),
        'platform': {
          'os': 'linux',
          'arch': agent,
        },
        'steps': [
          {
            'name': 'dryrun',
            'image': 'plugins/docker:latest',
            'pull': 'always',
            'settings': {
              'dry_run': True,
              'dockerfile': '%s/Dockerfile.%s' % (version['path'], arch),
              'tags': '%s-%s' % (version['tag'], arch),
              'repo': 'webhippie/%s' % (config['image']),
              'context': version['path'],
            },
            'when': {
              'ref': {
                'include': [
                  'refs/pull/**',
                ],
              },
            },
          },
          {
            'name': 'publish',
            'image': 'plugins/docker:latest',
            'pull': 'always',
            'settings': {
              'username': {
                'from_secret': 'docker_username',
              },
              'password': {
                'from_secret': 'docker_password',
              },
              'dockerfile': '%s/Dockerfile.%s' % (version['path'], arch),
              'tags': '%s-%s' % (version['tag'], arch),
              'repo': 'webhippie/%s' % (config['image']),
              'context': version['path'],
            },
            'when': {
              'ref': {
                'exclude': [
                  'refs/pull/**',
                ],
              },
            },
          },
        ],
        'depends_on': [],
        'trigger': {
          'ref': [
            'refs/heads/master',
            'refs/pull/**',
          ],
        },
      })

    manifest = {
      'kind': 'pipeline',
      'type': 'docker',
      'name': 'manifest-%s' % (version['path']),
      'platform': {
        'os': 'linux',
        'arch': 'amd64',
      },
      'steps': [
        {
          'name': 'execute',
          'image': 'plugins/manifest:latest',
          'pull': 'always',
          'settings': {
            'username': {
              'from_secret': 'docker_username',
            },
            'password': {
              'from_secret': 'docker_password',
            },
            'ignore_missing': True,
            'spec': '%s/manifest.tmpl' % (version['path']),
          },
        },
      ],
      'depends_on': [],
      'trigger': {
        'ref': [
          'refs/heads/master',
        ],
      },
    }

    for version in versions:
      manifest['depends_on'].append(version['name'])

    result.extend(versions)
    result.append(manifest)

  return result

def readme(config):
  return {
    'kind': 'pipeline',
    'type': 'docker',
    'name': 'readme',
    'platform': {
      'os': 'linux',
      'arch': 'amd64',
    },
    'steps': [
      {
        'name': 'execute',
        'image': 'sheogorath/readme-to-dockerhub:latest',
        'pull': 'always',
        'environment': {
          'DOCKERHUB_USERNAME': {
            'from_secret': 'docker_username',
          },
          'DOCKERHUB_PASSWORD': {
            'from_secret': 'docker_password',
          },
          'DOCKERHUB_REPO_PREFIX': 'webhippie',
          'DOCKERHUB_REPO_NAME': config['image'],
          'SHORT_DESCRIPTION': 'Docker images for %s' % (config['title']),
          'README_PATH': 'README.md',
        },
      },
    ],
    'depends_on': [],
    'trigger': {
      'ref': [
        'refs/heads/master',
      ],
    },
  }

def badges(config):
  return {
    'kind': 'pipeline',
    'type': 'docker',
    'name': 'badges',
    'platform': {
      'os': 'linux',
      'arch': 'amd64',
    },
    'clone': {
      'disable': True,
    },
    'steps': [
      {
        'name': 'execute',
        'image': 'plugins/webhook:latest',
        'pull': 'always',
        'settings': {
          'urls': {
            'from_secret': 'microbadger_url',
          },
        },
      },
    ],
    'depends_on': [
      'readme',
    ],
    'trigger': {
      'ref': [
        'refs/heads/master',
      ],
    },
  }

def trigger(config):
  return {
    'kind': 'pipeline',
    'type': 'docker',
    'name': 'trigger',
    'platform': {
      'os': 'linux',
      'arch': 'amd64',
    },
    'clone': {
      'disable': True,
    },
    'steps': [
      {
        'name': 'execute',
        'image': 'plugins/downstream:latest',
        'pull': 'always',
        'failure': 'ignore',
        'settings': {
          'server': 'https://cloud.drone.io',
          'token': {
            'from_secret': 'downstream_token',
          },
          'repositories': config['trigger'],
        },
      },
    ],
    'depends_on': [
      'badges',
    ],
    'trigger': {
      'ref': [
        'refs/heads/master',
      ],
    },
  }
