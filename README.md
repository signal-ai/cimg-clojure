<div align="center">
	<p>
		<img alt="CircleCI Logo" src="https://raw.github.com/CircleCI-Public/cimg-clojure/main/img/circle-circleci.svg?sanitize=true" width="75" />
		<img alt="Docker Logo" src="https://raw.github.com/CircleCI-Public/cimg-clojure/main/img/circle-docker.svg?sanitize=true" width="75" />
		<img alt="Clojure Logo" src="https://raw.github.com/CircleCI-Public/cimg-clojure/main/img/circle-clojure.svg?sanitize=true" width="75" />
	</p>
	<h1>CircleCI Convenience Images => Clojure</h1>
	<h3>A Continous Integration focused Clojure Docker image built to run on CircleCI</h3>
</div>

[![CircleCI Build Status](https://circleci.com/gh/CircleCI-Public/cimg-clojure.svg?style=shield)](https://circleci.com/gh/CircleCI-Public/cimg-clojure) [![Software License](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/CircleCI-Public/cimg-clojure/main/LICENSE) [![Docker Pulls](https://img.shields.io/docker/pulls/cimg/clojure)](https://hub.docker.com/r/cimg/clojure) [![CircleCI Community](https://img.shields.io/badge/community-CircleCI%20Discuss-343434.svg)](https://discuss.circleci.com/c/ecosystem/circleci-images)

**_This image is designed to supercede the original CircleCI Clojure image, `circleci/clojure`._**

`cimg/clojure` is a Docker image created by CircleCI with continuous integration builds in mind.
Each tag contains a Clojure version, a JVM, and any binaries and tools that are required for builds to complete successfully in a CircleCI environment.

## Fork status

**ARCHIVED** This is no longer needed as CircleCI have started to update/suppport this image again

This is a fork by Signal AI intended for internal use.

This contains the following changes:

- Bump package versions (e.g. Leiningen)
- Build JDK 21 images

Images are currently only built/pushed locally

Usage:

1. Update `manifest` as required (e.g. add JDK version)
2. Run ``
3. Run `build-images.sh`
4. Auth to ECR via `./ecr-login.sh`
5. Push images `push-images.sh`

### Future work

- Build images on CI - this requires a modification of the [`circleci/cimg`](https://circleci.com/developer/orbs/orb/circleci/cimg-orb) orb
- Support ARM images (should be simple once building on CI)

## Support Policy

The CircleCI Docker Convenience Image support policy can be found on the [CircleCI docs](https://circleci.com/docs/convenience-images-support-policy) site. This policy outlines the release, update, and deprecation policy for CircleCI Docker Convenience Images.

## Table of Contents

- [Getting Started](#getting-started)
- [How This Image Works](#how-this-image-works)
- [Development](#development)
- [Contributing](#contributing)
- [Additional Resources](#additional-resources)
- [License](#license)

## Getting Started

This image can be used with the CircleCI `docker` executor.
For example:

```yaml
jobs:
  build:
    docker:
      - image: cimg/clojure:1.10.3
    steps:
      - checkout
      - run: lein version
```

In the above example, the CircleCI Clojure Docker image is used for the primary container.
More specifically, the tag `1.10.3` is used meaning the version of Clojure will be Clojure v1.10.3.
You can now use Clojure within the steps for this job.

## How This Image Works

This image contains the Clojure programming language as installed via clj as well as [Leiningen](https://leiningen.org/).
These Clojure images contain OpenJDK v17 though alternates with support for OpenJDK v8 (and possibly) more are in the works..

Babashka is pre-installed.
Please note that Babashka has frequent releases while CircleCI only releases Clojure images as the upstream project makes a release.
There will be times were the pre-installed version of Babashka is older than you might want.

### Parent Tags and Parent Slugs

Parent Tags introduce the ability to choose a specific version to include in the tag. In conjunction with
the Parent Slug, Clojure now supports choosing which OpenJDK version to use and looks like: `parentSlug-parentTag`, which would translate to `openjdk-8.0`

### Variants

Variant images typically contain the same base software, but with a few additional modifications.

#### Node.js

The Node.js variant is the same Clojure image but with Node.js also installed.
The Node.js variant can be used by appending `-node` to the end of an existing `cimg/clojure` tag.

```yaml
jobs:
  build:
    docker:
      - image: cimg/clojure:1.10.3-node
    steps:
      - checkout
      - run: node --version
```

#### Browsers

The browsers variant is the same Clojure image but with Node.js, Selenium, and browser dependencies pre-installed via apt.
The browsers variant can be used by appending `-browser` to the end of an existing `cimg/clojure` tag.
The browsers variant is designed to work in conjunction with the [CircleCI Browser Tools orb](https://circleci.com/developer/orbs/orb/circleci/browser-tools).
You can use the orb to install a version of Google Chrome and/or Firefox into your build. The image contains all of the supporting tools needed to use both the browser and its driver.

```yaml
orbs:
  browser-tools: circleci/browser-tools@1.1
jobs:
  build:
    docker:
      - image: cimg/clojure:1.10.3-browsers
    steps:
      - browser-tools/install-browser-tools
      - checkout
      - run: |
          node --version
          google-chrome --version
```

### Tagging Scheme

This image has the following tagging scheme:

```
cimg/clojure:<clojure-version>[-openjdk-version][-variant]
```

`<clojure-version>` - The version of Clojure to use.
This can be a full SemVer point release (such as `1.10.1`) or just the minor release (such as `1.10`).
If you use the minor release tag, it will automatically point to future patch updates as they are released by the Clojure Team.
For example, the tag `1.10` points to Clojure v1.10.1 now, but when the next release comes out, it will point to Clojure v1.10.2.

`<openjdk-version>` - This specifies the openjdk version to use. Note: the default image tag: `cimg/clojure:<clojure-version>[-variant]` will utilize the latest version e.g 17.0

`[-variant]` - Variant tags, if available, can optionally be used.
Once the Node.js variant is available, it could be used like this: `cimg/clojure:1.10-node`.

## Development

Images can be built and run locally with this repository.
This has the following requirements:

- local machine of Linux (Ubuntu tested) or macOS
- modern version of Bash (v4+)
- modern version of Docker Engine (v19.03+)

### Cloning For Community Users (no write access to this repository)

Fork this repository on GitHub.
When you get your clone URL, you'll want to add `--recurse-submodules` to the clone command in order to populate the Git submodule contained in this repo.
It would look something like this:

```bash
git clone --recurse-submodules <my-clone-url>
```

If you missed this step and already cloned, you can just run `git submodule update --recursive` to populate the submodule.
Then you can optionally add this repo as an upstream to your own:

```bash
git remote add upstream https://github.com/CircleCI-Public/cimg-clojure.git
```

### Cloning For Maintainers ( you have write access to this repository)

Clone the project with the following command so that you populate the submodule:

```bash
git clone --recurse-submodules git@github.com:CircleCI-Public/cimg-clojure.git
```

### Generating Dockerfiles

Dockerfiles can be generated for a specific Clojure version using the `gen-dockerfiles.sh` script.
For example, to generate the Dockerfile for Clojure v1.10.1, you would run the following from the root of the repo:

```bash
./shared/gen-dockerfiles.sh 1.10.3#1.10.3.1058
```

This is the Clojure version `1.10.3` followed by a version parameter, which is the Clojure number together with the build number, `1.10.3.1058`.
You can get the current build number from the [Linux Install Instructions][linux-version] for Clojure.
It's the last part of the version in the example on that page.

The generated Dockerfile will be located at `./1.10/<parent-tag>/Dockefile` in addition to their corresponding variants located at `./1.10/<parent-tag>/<variant>/Dockefile`

To build this image locally and try it out, you can run the following (assuming openjdk 8.0):

```bash
cd 1.10
docker build -t test/clojure:1.10.1-openjdk-8.0 .
docker run -it test/clojure:1.10.1-openjdk-8.0 bash
```

If using the default version (latest), you could run either of the following:

```bash
cd 1.10
docker build -t test/clojure:1.10.1 .
docker run -it test/clojure:1.10.1 bash

docker build -t test/clojure:1.10.1-openjdk-17.0 .
docker run -it test/clojure:1.10.1-openjdk-17.0 bash
```

### Building the Dockerfiles

To build the Docker images locally as this repository does, you'll want to run the `build-images.sh` script:

```bash
./build-images.sh
```

This would need to be run after generating the Dockerfiles first.
When releasing proper images for CircleCI, this script is run from a CircleCI pipeline and not locally.

### Publishing Official Images (for Maintainers only)

The individual scripts (above) can be used to create the correct files for an image, and then added to a new git branch, committed, etc.
A release script is included to make this process easier.
To make a proper release for this image, lets's use the fake Clojure version of Clojure v9.9.9, you would run the following from the repo root:

```bash
./shared/release.sh 9.9.9#9.9.9.1234
```

Here the fake Clojure version `9.9.9` is used followed by a version parameter, which is the fake Clojure number together with the fake build number, `9.9.9.1234`.
You can get the current build number from the [Linux Install Instructions][linux-version] for Clojure.
It's the last part of the version in the example on that page.

This will automatically create a new Git branch, generate the Dockerfile(s), stage the changes, commit them, and push them to GitHub.
All that would need to be done after that is:

- wait for build to pass on CircleCI
- review the PR
- merge the PR

The main branch build will then publish a release.

### Incorporating Changes

How changes are incorporated into this image depends on where they come from.

**build scripts** - Changes within the `./shared` submodule happen in its [own repository](https://github.com/CircleCI-Public/cimg-shared).
For those changes to affect this image, the submodule needs to be updated.
Typically like this:

```bash
cd shared
git pull
cd ..
git add shared
git commit -m "Updating submodule for foo."
```

**parent image** - By design, when changes happen to a parent image, they don't appear in existing Clojure images.
This is to aid in "determinism" and prevent breaking customer builds.
New Clojure images will automatically pick up the changes.

If you _really_ want to publish changes from a parent image into the Clojure image, you have to build a specific image version as if it was a new image.
This will create a new Dockerfile and once published, a new image.

**Clojure specific changes** - Editing the `Dockerfile.template` file in this repo is how to modify the Clojure image specifically.
Don't forget that to see any of these changes locally, the `gen-dockerfiles.sh` script will need to be run again (see above).

## Contributing

We encourage [issues](https://github.com/CircleCI-Public/cimg-clojure/issues) and [pull requests](https://github.com/CircleCI-Public/cimg-clojure/pulls) against this repository.

Please check out our [contributing guide](.github/CONTRIBUTING.md) which outlines best practices for contributions and what you can expect from the images team at CircleCI.

## Additional Resources

[CircleCI Docs](https://circleci.com/docs/) - The official CircleCI Documentation website.
[CircleCI Configuration Reference](https://circleci.com/docs/2.0/configuration-reference/#section=configuration) - From CircleCI Docs, the configuration reference page is one of the most useful pages we have.
It will list all of the keys and values supported in `.circleci/config.yml`.
[Docker Docs](https://docs.docker.com/) - For simple projects this won't be needed but if you want to dive deeper into learning Docker, this is a great resource.

## License

This repository is licensed under the MIT license.
The license can be found [here](./LICENSE).

[linux-version]: https://clojure.org/guides/install_clojure#_linux_instructions
