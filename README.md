# atomist/shadow-cljs

A base Docker image for building [shadow-cljs][] projects.

[shadow-cljs]: https://shadow-cljs.org

## Using

Add this line to the top of your Dockerfile

```dockerfile
FROM atomist/shadow-cljs:M.N.P
# install needed tools...
COPY package.json package-lock.json ./
RUN npm ci \
    && npm cache clean --force
COPY . ./
```

replacing `M.N.P` with the [latest release][release] of this image.

[release]: https://github.com/atomist/shadow-cljs/releases/latest (Latest Release of atomist/shadow-cljs)

## Support

General support questions should be discussed in the `#support` channel in our community Slack workspace at [atomist-community.slack.com][slack].

If you find a problem, please create an [issue][].

[issue]: https://github.com/atomist/shadow-cljs/issues

### Release

Releases are handled via the SDM itself.  Just press the release button in Slack or the Atomist dashboard.

---

Created by [Atomist][atomist].
Need Help?  [Join our Slack team][slack].

[atomist]: https://atomist.com/ (Atomist - How Teams Deliver Software)
[slack]: https://join.atomist.com/ (Atomist Community Slack)
