# docker-cookbook
These are some docker recipes that live in the TCP-Lab docker hub page.

## Building and pushing an image
You can use Bob to rebuild an image and push it at the same time on dockerhub.

```
./build-docker <path_to_dockerfile> <version>
```

The script has some hardcoded variables (like, where to push the docker), and
in essence just wraps the docker commans (but makes temp dirs, etc etc...).

You can pass `--fast` to make the script go faster AND skip any and all human 
interactions (so it goes *fast*, and to use it in scripts).

### TODO
- [ ] The `build-docker` command does not work well (how the FUCK do you bools in bash fuck me)
- [ ] It would be nice to store the latest pushed tag for some docker container somewhere, so that bob can just push a new version (maybe just tell it something like `--major` or `--minor`, etc...).

