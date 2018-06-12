#!/bin/sh

set -e
set -x

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "master" ] && exit 0

git config --global user.email "maelle.salmon@yahoo.se"
git config --global user.name "Maëlle Salmon"

DOCS_DIR=docs
REMOTE_URL="https://${GITHUB_PAT}@github.com/${TRAVIS_REPO_SLUG}.git"

mkdir -p ${DOCS_DIR}
rm -rf ${DOCS_DIR}/.git
touch ${DOCS_DIR}/.nojekyll
git init ${DOCS_DIR}
git -C ${DOCS_DIR} checkout --orphan gh-pages
git -C ${DOCS_DIR} add .
git -C ${DOCS_DIR} commit --no-verify -m "Auto-build ($TRAVIS_COMMIT_MESSAGE)" || true
git -C ${DOCS_DIR} remote add origin -m "gh-pages" ${REMOTE_URL}
git -C ${DOCS_DIR} push --force -u origin gh-pages
