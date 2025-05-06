### Login Github Packages Registry


Login GHCR mit Access Token (Token classic, write, edit, delete packages)

```bash
export CR_PAT=<token>
```

```bash
echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin
```
### Image erzeugen und veröffentlichen

Image erzeugen

```bash
docker build --tag alpine_python . 
```

Taggen (Github)

```bash
docker tag alpine_python ghcr.io/wago-enterprise-education/alpine_python:latest
```

Veröffentlichen (Github)

```bash
docker push ghcr.io/wago-enterprise-education/alpine_python:latest
```

> Pakage muss auf Github als public markiert sein!
