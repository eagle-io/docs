# docs

### Requirements
- Python3

### Getting started
```
pip3 install -r requirements.txt
pip3 install -U Sphinx
```

### Building locally
```
make html
```

Documentation files will be accessible at `build/html/index.html`

### Deploying to production
Commits to `master` will trigger a build by [Read the docs](https://readthedocs.org/projects/eagleio/builds) and deployed to [production](https://docs.eagle.io).
